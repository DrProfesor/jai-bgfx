#import "Basic";
#import "Compiler";
#import "String";
#import "Hash_Table";
#import "System";
#import "Process";
#import "Program_Print";

Windows_Resources :: #import "Windows_Resources";

w: Workspace;
build :: () {
    w = compiler_create_workspace("Target Program");
    if !w {
        print("Workspace creation failed.\n");
        return;
    }

    target_options := get_build_options(w);
    target_options.output_executable_name = "target";
    target_options.use_custom_link_command = true;

    modules_search_path_array: [..]string;
    array_add(*modules_search_path_array, "modules");
    for target_options.import_path array_add(*modules_search_path_array, it);
    target_options.import_path = modules_search_path_array;

    set_build_options(target_options, w);

    compiler_begin_intercept(w);

    add_build_file(tprint("%/test.jai", #filepath), w);

    message_loop();

    compiler_end_intercept(w);

    options := get_build_options();
    options.output_type = .NO_OUTPUT;  // No executable for the primary workspace.
    set_build_options(options);
}

#run build();

//
// message_loop() runs the event loop that reads the messages.
// You can do whatever you want with those messages. The goal
// of this example is just to show the different kinds of messages,
// so we don't do anything crazy yet. But you can do some things
// that are crazy.
//
message_loop :: () {

    while true {

        message := compiler_wait_for_message();
        if !message break;

        if message.kind == {
            case .COMPILATION_PHASE; {
                phase_message := cast (*Message_Phase)message;
                if phase_message.phase == {
                    case .READY_FOR_CUSTOM_LINK_COMMAND; {
                        run_custom_link_command(w, phase_message);
                        break;
                    }
                }
            }
          // case .FILE; #through
          // case .IMPORT; #through
          // case .COMPILATION_PHASE; #through
          // case .TYPECHECKED; #through
          // case .COMPLETE; #through
          // case;
          //   break;
        }
    }
}




run_custom_link_command :: (w: Workspace, m: *Message_Phase, use_system_linker_if_able := true) {
    options := get_build_options(w);

    // Use the workspace's Os_Target since we want to support
    // cross-compilation at some point!
    target := options.os_target;
    target_windows := target == .WINDOWS;
    target_linux   := target == .LINUX;
    target_macosx  := target == .MACOS;

    use_lld := !((target == OS) && use_system_linker_if_able);

    #if OS == .WINDOWS {
        system_linker_exe_name := "link.exe";
    }

    #if OS == .LINUX || OS == .MACOS {
        system_linker_exe_name := "ld";
    }

    #if OS == .WINDOWS {
        if !use_lld && target_windows {
            // If we have opted to use the system linker and we're on Windows,
            // then attempt to find link.exe, otherwise fallback to LLD (or maybe error?)
            vc_path, linker_path := Windows_Resources.find_visual_studio_in_a_ridiculous_garbage_way();
            if linker_path {
                system_linker_exe_name = tprint("%\\%", linker_path, system_linker_exe_name);
            } else {
                compiler_report("Could not find link.exe path, falling back to using LLD", mode=.WARNING);
                use_lld = true;
            }
        }
    }

    suffix := "";
    #if OS == .WINDOWS {
        suffix = ".exe";
    }

    target_filename := tprint("%1%2%3", options.output_path, options.output_executable_name, suffix);

    exe_name := get_path_of_running_executable();
    index, found := last_index_of_string(exe_name, "jai/");

    lld_exe_name: string;
    if use_lld {
        compiler_base_path := "c:/jai/";  // Will be overridden by the below...
        if found {
            compiler_base_path = exe_name;
            compiler_base_path.count = index + 4;
        } else {
            print("Metaprogram is unable to find the path to the compiler, in order to run lld.\n");
        }

        #if OS == .WINDOWS {
            lld := "lld.exe";
        }

        #if OS == .MACOS {
            lld := "lld-macosx";
        }

        #if OS == .LINUX {
            lld := "lld-linux";
        }

        lld_exe_name = tprint("%1%2%3", compiler_base_path, "bin/", lld);
    }

    arguments: [..] string;

    if use_lld {
        array_add(*arguments, lld_exe_name);
        array_add(*arguments, "-flavor");

        // choose the flavor based on the target OS.
        if      target_windows array_add(*arguments, "link");
        else if target_linux   array_add(*arguments, "Gnu");
        else if target_macosx  array_add(*arguments, "Darwin");
    } else {
        array_add(*arguments, system_linker_exe_name);
    }

    if target_windows array_add(*arguments, "/nologo");

    // Object files.
    for m.compiler_generated_object_files array_add(*arguments, it);
    for m.support_object_files array_add(*arguments, it);

    if target_windows {
        // Target filename.
        array_add(*arguments, tprint("/OUT:%", target_filename));

        array_add(*arguments, "/MACHINE:AMD64");
        array_add(*arguments, "/INCREMENTAL:NO");
        array_add(*arguments, "/DEBUG");
        array_add(*arguments, "/IGNORE:4099");
        // array_add(*arguments, "/OPT:REF");

        // If generating an executable, then create lib and exp file inside intermediate directory.
        if options.output_type == .EXECUTABLE {
            array_add(*arguments, tprint("/IMPLIB:%1%2.lib", options.intermediate_path, path_strip_extension(options.output_executable_name)));
        }
    } else if target_linux {
        array_add(*arguments, "--eh-frame-hdr");
        array_add(*arguments, "-export-dynamic");
        array_add(*arguments, tprint("-o%", target_filename));
        array_add(*arguments, "--dynamic-linker");
        array_add(*arguments, "/lib64/ld-linux-x86-64.so.2");
        array_add(*arguments, "-rpath=$ORIGIN");
    } else { // target_macosx
        array_add(*arguments, "-export_dynamic");
        array_add(*arguments, "-dynamic");
        array_add(*arguments, "-o");
        array_add(*arguments, target_filename);

        array_add(*arguments, "-macosx_version_min");
        array_add(*arguments, "10.11");

        array_add(*arguments, "-rpath");
        array_add(*arguments, "@loader_path"); // NOTE: on the command-line we have to single-quote this, here it must be unquoted!
    }

    // @TODO we probably need to do something similar using LLD on non-Windows hosts
    #if OS == .WINDOWS {
        if target_windows {
            vc_path := Windows_Resources.find_visual_studio_in_a_ridiculous_garbage_way();
            if vc_path {
                array_add(*arguments, tprint("/libpath:\"%\"", vc_path));
            } else {
                compiler_report(#file, #line, 0, "Unable to find Visual Studio runtime library folder; can't compile.\n");
            }

            kit_root, windows_version := Windows_Resources.find_windows_kit_root();
            if kit_root {
                // I guess both Windows 8 and 10 use the same um / ucrt format.
                // kit_root does not have a slash at the end!! Sigh.
                array_add(*arguments, tprint("/libpath:\"%/um/x64\"", kit_root));
                array_add(*arguments, tprint("/libpath:\"%/ucrt/x64\"", kit_root));
            } else {
                // Report error.
                compiler_report(#file, #line, 0, "Unable to find Windows Kit root; can't compile.\n");
            }


            if (options.output_type == .DYNAMIC_LIBRARY) {
                array_add(*arguments, "/DLL");
            }

            // array_add(*arguments, "-nodefaultlib");
        }
    }

    m.libraries[0] = ""; // remove libcmt.lib
    for m.libraries    array_add(*arguments, it);
    array_add(*arguments, "ws2_32.lib");
    array_add(*arguments, "win/bimgRelease.lib");
    array_add(*arguments, "win/bxRelease.lib");
    array_add(*arguments, "Gdi32.lib");
    array_add(*arguments, "User32.lib");

    print("Link line: %\n", concatenate(..arguments, " "));
    successfully_launched, exit_code := os_run_command(..arguments);

    if (!successfully_launched) || (exit_code != 0) {
        print("Error: Link step failed! (Exit code %).\n", exit_code);
    }

    // Report to the compiler that we have finished linking
    compiler_custom_link_command_is_complete(w);
}