bgfx_fatal :: enum u32
{
    DEBUG_CHECK;                  /** ( 0)                                */
    INVALID_SHADER;               /** ( 1)                                */
    UNABLE_TO_INITIALIZE;         /** ( 2)                                */
    UNABLE_TO_CREATE_TEXTURE;     /** ( 3)                                */
    DEVICE_LOST;                  /** ( 4)                                */

    COUNT;

}

bgfx_renderer_type :: enum u32
{
    NOOP;                 /** ( 0) No rendering.                  */
    // DIRECT3D9;            /** ( 1) Direct3D 9.0                   */
    DIRECT3D11;           /** ( 2) Direct3D 11.0                  */
    DIRECT3D12;           /** ( 3) Direct3D 12.0                  */
    GNM;                  /** ( 4) GNM                            */
    METAL;                /** ( 5) Metal                          */
    NVN;                  /** ( 6) NVN                            */
    OPENGLES;             /** ( 7) OpenGL ES 2.0+                 */
    OPENGL;               /** ( 8) OpenGL 2.1+                    */
    VULKAN;               /** ( 9) Vulkan                         */
    WEBGPU;               /** (10) WebGPU                         */

    COUNT;

}

bgfx_access :: enum u32
{
    READ;                        /** ( 0) Read.                          */
    WRITE;                       /** ( 1) Write.                         */
    READWRITE;                   /** ( 2) Read and write.                */

    COUNT;

}

bgfx_attrib :: enum u32
{
    POSITION;                    /** ( 0) a_position                     */
    NORMAL;                      /** ( 1) a_normal                       */
    TANGENT;                     /** ( 2) a_tangent                      */
    BITANGENT;                   /** ( 3) a_bitangent                    */
    COLOR0;                      /** ( 4) a_color0                       */
    COLOR1;                      /** ( 5) a_color1                       */
    COLOR2;                      /** ( 6) a_color2                       */
    COLOR3;                      /** ( 7) a_color3                       */
    INDICES;                     /** ( 8) a_indices                      */
    WEIGHT;                      /** ( 9) a_weight                       */
    TEXCOORD0;                   /** (10) a_texcoord0                    */
    TEXCOORD1;                   /** (11) a_texcoord1                    */
    TEXCOORD2;                   /** (12) a_texcoord2                    */
    TEXCOORD3;                   /** (13) a_texcoord3                    */
    TEXCOORD4;                   /** (14) a_texcoord4                    */
    TEXCOORD5;                   /** (15) a_texcoord5                    */
    TEXCOORD6;                   /** (16) a_texcoord6                    */
    TEXCOORD7;                   /** (17) a_texcoord7                    */

    COUNT;

}

bgfx_attrib_type :: enum u32
{
    UINT8;                  /** ( 0) Uint8                          */
    UINT10;                 /** ( 1) Uint10, availability depends on: `BGFX_CAPS_VERTEX_ATTRIB_UINT10`. */
    INT16;                  /** ( 2) Int16                          */
    HALF;                   /** ( 3) Half, availability depends on: `BGFX_CAPS_VERTEX_ATTRIB_HALF`. */
    FLOAT;                  /** ( 4) Float                          */

    COUNT;

}

bgfx_texture_format :: enum u32
{
    BC1;                 /** ( 0) DXT1 R5G6B5A1                  */
    BC2;                 /** ( 1) DXT3 R5G6B5A4                  */
    BC3;                 /** ( 2) DXT5 R5G6B5A8                  */
    BC4;                 /** ( 3) LATC1/ATI1 R8                  */
    BC5;                 /** ( 4) LATC2/ATI2 RG8                 */
    BC6H;                /** ( 5) BC6H RGB16F                    */
    BC7;                 /** ( 6) BC7 RGB 4-7 bits per color channel, 0-8 bits alpha */
    ETC1;                /** ( 7) ETC1 RGB8                      */
    ETC2;                /** ( 8) ETC2 RGB8                      */
    ETC2A;               /** ( 9) ETC2 RGBA8                     */
    ETC2A1;              /** (10) ETC2 RGB8A1                    */
    PTC12;               /** (11) PVRTC1 RGB 2BPP                */
    PTC14;               /** (12) PVRTC1 RGB 4BPP                */
    PTC12A;              /** (13) PVRTC1 RGBA 2BPP               */
    PTC14A;              /** (14) PVRTC1 RGBA 4BPP               */
    PTC22;               /** (15) PVRTC2 RGBA 2BPP               */
    PTC24;               /** (16) PVRTC2 RGBA 4BPP               */
    ATC;                 /** (17) ATC RGB 4BPP                   */
    ATCE;                /** (18) ATCE RGBA 8 BPP explicit alpha */
    ATCI;                /** (19) ATCI RGBA 8 BPP interpolated alpha */
    ASTC4X4;             /** (20) ASTC 4x4 8.0 BPP               */
    ASTC5X5;             /** (21) ASTC 5x5 5.12 BPP              */
    ASTC6X6;             /** (22) ASTC 6x6 3.56 BPP              */
    ASTC8X5;             /** (23) ASTC 8x5 3.20 BPP              */
    ASTC8X6;             /** (24) ASTC 8x6 2.67 BPP              */
    ASTC10X5;            /** (25) ASTC 10x5 2.56 BPP             */
    UNKNOWN;             /** (26) Compressed formats above.      */
    R1;                  /** (27)                                */
    A8;                  /** (28)                                */
    R8;                  /** (29)                                */
    R8I;                 /** (30)                                */
    R8U;                 /** (31)                                */
    R8S;                 /** (32)                                */
    R16;                 /** (33)                                */
    R16I;                /** (34)                                */
    R16U;                /** (35)                                */
    R16F;                /** (36)                                */
    R16S;                /** (37)                                */
    R32I;                /** (38)                                */
    R32U;                /** (39)                                */
    R32F;                /** (40)                                */
    RG8;                 /** (41)                                */
    RG8I;                /** (42)                                */
    RG8U;                /** (43)                                */
    RG8S;                /** (44)                                */
    RG16;                /** (45)                                */
    RG16I;               /** (46)                                */
    RG16U;               /** (47)                                */
    RG16F;               /** (48)                                */
    RG16S;               /** (49)                                */
    RG32I;               /** (50)                                */
    RG32U;               /** (51)                                */
    RG32F;               /** (52)                                */
    RGB8;                /** (53)                                */
    RGB8I;               /** (54)                                */
    RGB8U;               /** (55)                                */
    RGB8S;               /** (56)                                */
    RGB9E5F;             /** (57)                                */
    BGRA8;               /** (58)                                */
    RGBA8;               /** (59)                                */
    RGBA8I;              /** (60)                                */
    RGBA8U;              /** (61)                                */
    RGBA8S;              /** (62)                                */
    RGBA16;              /** (63)                                */
    RGBA16I;             /** (64)                                */
    RGBA16U;             /** (65)                                */
    RGBA16F;             /** (66)                                */
    RGBA16S;             /** (67)                                */
    RGBA32I;             /** (68)                                */
    RGBA32U;             /** (69)                                */
    RGBA32F;             /** (70)                                */
    R5G6B5;              /** (71)                                */
    RGBA4;               /** (72)                                */
    RGB5A1;              /** (73)                                */
    RGB10A2;             /** (74)                                */
    RG11B10F;            /** (75)                                */
    UNKNOWNDEPTH;        /** (76) Depth formats below.           */
    D16;                 /** (77)                                */
    D24;                 /** (78)                                */
    D24S8;               /** (79)                                */
    D32;                 /** (80)                                */
    D16F;                /** (81)                                */
    D24F;                /** (82)                                */
    D32F;                 /** (83)                                */
    D0S8;                 /** (84)                                */

    COUNT;

}

bgfx_uniform_type :: enum u32
{
    TYPE_SAMPLER;                /** ( 0) Sampler.                       */
    TYPE_END;                    /** ( 1) Reserved, do not use.          */
    TYPE_VEC4;                   /** ( 2) 4 floats vector.               */
    TYPE_MAT3;                   /** ( 3) 3x3 matrix.                    */
    TYPE_MAT4;                   /** ( 4) 4x4 matrix.                    */
    TYPE_COUNT;
}

bgfx_backbuffer_ratio :: enum u32
{
    EQUAL;              /** ( 0) Equal to backbuffer.           */
    HALF;               /** ( 1) One half size of backbuffer.   */
    QUARTER;            /** ( 2) One quarter size of backbuffer. */
    EIGHTH;             /** ( 3) One eighth size of backbuffer. */
    SIXTEENTH;          /** ( 4) One sixteenth size of backbuffer. */
    DOUBLE;             /** ( 5) Double size of backbuffer.     */

    COUNT;

}

bgfx_occlusion_query_result :: enum u32
{
    INVISIBLE;    /** ( 0) Query failed test.             */
    VISIBLE;      /** ( 1) Query passed test.             */
    NORESULT;     /** ( 2) Query result is not available yet. */

    COUNT;

}

bgfx_topology :: enum u32
{
    TRI_LIST;                   /** ( 0) Triangle list.                 */
    TRI_STRIP;                  /** ( 1) Triangle strip.                */
    LINE_LIST;                  /** ( 2) Line list.                     */
    LINE_STRIP;                 /** ( 3) Line strip.                    */
    POINT_LIST;                 /** ( 4) Point list.                    */

    COUNT;

}

bgfx_topology_convert :: enum u32
{
    TRI_LIST_FLIP_WINDING; /** ( 0) Flip winding order of triangle list. */
    TRI_STRIP_FLIP_WINDING; /** ( 1) Flip winding order of triangle strip. */
    TRI_LIST_TO_LINE_LIST; /** ( 2) Convert triangle list to line list. */
    TRI_STRIP_TO_TRI_LIST; /** ( 3) Convert triangle strip to triangle list. */
    LINE_STRIP_TO_LINE_LIST; /** ( 4) Convert line strip to line list. */

    COUNT;

}

bgfx_topology_sort :: enum u32
{
    DIRECTION_FRONT_TO_BACK_MIN; /** ( 0)                                */
    DIRECTION_FRONT_TO_BACK_AVG; /** ( 1)                                */
    DIRECTION_FRONT_TO_BACK_MAX; /** ( 2)                                */
    DIRECTION_BACK_TO_FRONT_MIN; /** ( 3)                                */
    DIRECTION_BACK_TO_FRONT_AVG; /** ( 4)                                */
    DIRECTION_BACK_TO_FRONT_MAX; /** ( 5)                                */
    DISTANCE_FRONT_TO_BACK_MIN; /** ( 6)                                */
    DISTANCE_FRONT_TO_BACK_AVG; /** ( 7)                                */
    DISTANCE_FRONT_TO_BACK_MAX; /** ( 8)                                */
    DISTANCE_BACK_TO_FRONT_MIN; /** ( 9)                                */
    DISTANCE_BACK_TO_FRONT_AVG; /** (10)                                */
    DISTANCE_BACK_TO_FRONT_MAX; /** (11)                                */

    COUNT;

}

bgfx_view_mode :: enum u32
{
    DEFAULT;                   /** ( 0) Default sort order.            */
    SEQUENTIAL;                /** ( 1) Sort in the same order in which submit calls were called. */
    DEPTH_ASCENDING;           /** ( 2) Sort draw call depth in ascending order. */
    DEPTH_DESCENDING;          /** ( 3) Sort draw call depth in descending order. */

    COUNT;

}

bgfx_render_frame :: enum u32
{
    NO_CONTEXT;             /** ( 0) Renderer context is not created yet. */
    RENDER;                 /** ( 1) Renderer context is created and rendering. */
    TIMEOUT;                /** ( 2) Renderer context wait for main thread signal timed out without rendering. */
    EXITING;                /** ( 3) Renderer context is getting destroyed. */

    COUNT;

}


bgfx_view_id :: u16;

bgfx_allocator_interface :: struct
{
    vtbl: *bgfx_allocator_vtbl;
}

bgfx_allocator_vtbl :: struct
{
    realloc : (_this: *bgfx_allocator_interface, _ptr: *void, _size: int, _align: int, _file: *u8, _line: u32) -> *void #foreign;
}

bgfx_callback_interface :: struct
{
    vtbl: *bgfx_callback_vtbl;

}

bgfx_callback_vtbl :: struct
{
    fatal                  : (_this: *bgfx_callback_interface, _filePath: *u8, _line: u16, _code: bgfx_fatal, _str: *u8) #foreign;
    trace_vargs            : (_this: *bgfx_callback_interface, _filePath: *u8, _line: u16, _format: *u8, args: .. Any) #foreign;
    profiler_begin         : (_this: *bgfx_callback_interface, _name: *u8, _abgr: u32, _filePath: *u8, _line: u16) #foreign;
    profiler_begin_literal : (_this: *bgfx_callback_interface, _name: *u8, _abgr: u32, _filePath: *u8, _line: u16) #foreign;
    profiler_end           : (_this: *bgfx_callback_interface) #foreign;
    cache_read_size        : (_this: *bgfx_callback_interface, _id: u64) -> u32 #foreign;
    cache_read             : (_this: *bgfx_callback_interface, _id: u64, _data: *void, _size: u32) -> bool #foreign;
    cache_write            : (_this: *bgfx_callback_interface, _id: u64,  _data: *void, _size: u32) #foreign;
    screen_shot            : (_this: *bgfx_callback_interface, _filePath: *u8, _width: u32, _height: u32, _pitch: u32,  _data: *void, _size: u32, _yflip: bool) #foreign;
    capture_begin          : (_this: *bgfx_callback_interface, _width: u32, _height: u32, _pitch: u32, _format: bgfx_texture_format, _yflip: bool) #foreign;
    capture_end            : (_this: *bgfx_callback_interface) #foreign;
    capture_frame          : (_this: *bgfx_callback_interface, _data: *void, _size: u32) #foreign;

}

bgfx_dynamic_index_buffer_handle  :: struct { idx: u16; }
bgfx_dynamic_vertex_buffer_handle :: struct { idx: u16; }
bgfx_frame_buffer_handle          :: struct { idx: u16; }
bgfx_index_buffer_handle          :: struct { idx: u16; }
bgfx_indirect_buffer_handle       :: struct { idx: u16; }
bgfx_occlusion_query_handle       :: struct { idx: u16; }
bgfx_program_handle               :: struct { idx: u16; }
bgfx_shader_handle                :: struct { idx: u16; }
bgfx_texture_handle               :: struct { idx: u16; }
bgfx_uniform_handle               :: struct { idx: u16; }
bgfx_vertex_buffer_handle         :: struct { idx: u16; }
bgfx_vertex_layout_handle         :: struct { idx: u16; }

// #define BGFX_HANDLE_IS_VALID(h) ((h).idx != UINT16_MAX)

// typedef void (*bgfx_release_fn_t)(_ptr: *void, _userData: *void);

bgfx_caps_gpu :: struct
{
    vendorId: u16;           /** Vendor PCI id. See `BGFX_PCI_ID_*`.      */
    deviceId: u16;           /** Device id.                               */

}

bgfx_caps_limits :: struct
{
    maxDrawCalls:            u32;       /** Maximum number of draw calls.            */
    maxBlits:                u32;           /** Maximum number of blit calls.            */
    maxTextureSize:          u32;     /** Maximum texture size.                    */
    maxTextureLayers:        u32;   /** Maximum texture layers.                  */
    maxViews:                u32;           /** Maximum number of views.                 */
    maxFrameBuffers:         u32;    /** Maximum number of frame buffer handles.  */
    maxFBAttachments:        u32;   /** Maximum number of frame buffer attachments. */
    maxPrograms:             u32;        /** Maximum number of program handles.       */
    maxShaders:              u32;         /** Maximum number of shader handles.        */
    maxTextures:             u32;        /** Maximum number of texture handles.       */
    maxTextureSamplers:      u32; /** Maximum number of texture samplers.      */
    maxComputeBindings:      u32; /** Maximum number of compute bindings.      */
    maxVertexLayouts:        u32;   /** Maximum number of vertex format layouts. */
    maxVertexStreams:        u32;   /** Maximum number of vertex streams.        */
    maxIndexBuffers:         u32;    /** Maximum number of index buffer handles.  */
    maxVertexBuffers:        u32;   /** Maximum number of vertex buffer handles. */
    maxDynamicIndexBuffers:  u32; /** Maximum number of dynamic index buffer handles. */
    maxDynamicVertexBuffers: u32; /** Maximum number of dynamic vertex buffer handles. */
    maxUniforms:             u32;        /** Maximum number of uniform handles.       */
    maxOcclusionQueries:     u32; /** Maximum number of occlusion query handles. */
    maxEncoders:             u32;        /** Maximum number of encoder threads.       */
    minResourceCbSize:       u32;  /** Minimum resource command buffer size.    */
    transientVbSize:         u32;    /** Maximum transient vertex buffer size.    */
    transientIbSize:         u32;    /** Maximum transient index buffer size.     */

}

bgfx_caps :: struct
{
    rendererType: bgfx_renderer_type;       /** Renderer backend type. See: `bgfx::RendererType` */
    supported: u64;
    vendorId: u16;           /** Selected GPU vendor PCI id.              */
    deviceId: u16;           /** Selected GPU device id.                  */
    homogeneousDepth: bool;   /** True when NDC depth is in [-1, 1] range, otherwise its [0, 1]. */
    originBottomLeft: bool;   /** True when NDC origin is at bottom left.  */
    numGPUs: u8;            /** Number of enumerated GPUs.               */
    gpu: [4]bgfx_caps_gpu;             /** Enumerated GPUs.                         */
    limits: bgfx_caps_limits;             /** Renderer runtime limits.                 */
    formats: [bgfx_texture_format.COUNT]u16;
}

bgfx_internal_data :: struct
{
    caps: *bgfx_caps;               /** Renderer capabilities.                   */
    ctxt: *void;            /** GL context, or D3D device.               */

}

bgfx_platform_data :: struct
{
    ndt: *void;                /** Native display type (*nix specific).     */
    nwh: *void;
    ctxt: *void;            /** GL context, or D3D device. If `NULL`, bgfx will create context/device. */
    backBuffer: *void;
    backBufferDS: *void;

}

bgfx_resolution :: struct
{
    format: bgfx_texture_format;            /** Backbuffer format.                       */
    width: u32;              /** Backbuffer width.                        */
    height: u32;             /** Backbuffer height.                       */
    reset: u32;              /** Reset parameters.                        */
    numBackBuffers: u8;     /** Number of back buffers.                  */
    maxFrameLatency: u8;    /** Maximum frame latency.                   */

}

bgfx_init_limits :: struct
{
    maxEncoders: u16;        /** Maximum number of encoder threads.       */
    minResourceCbSize: u32;  /** Minimum resource command buffer size.    */
    transientVbSize: u32;    /** Maximum transient vertex buffer size.    */
    transientIbSize: u32;    /** Maximum transient index buffer size.     */

}

bgfx_init :: struct
{
    type: bgfx_renderer_type;
    vendorId: u16;
    deviceId: u16;
    capabilities: u64;       /** Capabilities initialization mask (default: UINT64_MAX). */
    debug: bool;              /** Enable device for debuging.              */
    profile: bool;            /** Enable device for profiling.             */
    platformData: bgfx_platform_data;       /** Platform data.                           */
    resolution: bgfx_resolution;         /** Backbuffer resolution and reset parameters. See: `bgfx::Resolution`. */
    limits: bgfx_init_limits;             /** Configurable runtime limits parameters.  */
    callback: *bgfx_callback_interface;
    allocator: *bgfx_allocator_interface;

}

bgfx_memory :: struct
{
    data: *u8;               /** Pointer to data.                         */
    size: u32;               /** Data size.                               */

}

bgfx_transient_index_buffer :: struct
{
    data: u8;               /** Pointer to data.                         */
    size: u32;               /** Data size.                               */
    startIndex: u32;         /** First index.                             */
    handle: bgfx_index_buffer_handle;       /** Index buffer handle.                     */
    isIndex16: bool;          /** Index buffer format is 16-bits if true, otherwise it is 32-bit. */

}

bgfx_transient_vertex_buffer :: struct
{
    data: u8;               /** Pointer to data.                         */
    size: u32;               /** Data size.                               */
    startVertex: u32;        /** First vertex.                            */
    stride: u16;             /** Vertex stride.                           */
    handle: bgfx_vertex_buffer_handle;      /** Vertex buffer handle.                    */
    layoutHandle: bgfx_vertex_layout_handle; /** Vertex layout handle.                    */

}

bgfx_instance_data_buffer :: struct
{
    data: *u8;               /** Pointer to data.                         */
    size: u32;               /** Data size.                               */
    offset: u32;             /** Offset in vertex buffer.                 */
    num: u32;                /** Number of instances.                     */
    stride: u16;             /** Vertex buffer stride.                    */
    handle: bgfx_vertex_buffer_handle;      /** Vertex buffer object handle.             */

}

bgfx_texture_info :: struct
{
    format: bgfx_texture_format;            /** Texture format.                          */
    storageSize: u32;        /** Total amount of bytes required to store texture. */
    width: u16;              /** Texture width.                           */
    height: u16;             /** Texture height.                          */
    depth: u16;              /** Texture depth.                           */
    numLayers: u16;          /** Number of layers in texture array.       */
    numMips: u8;            /** Number of MIP maps.                      */
    bitsPerPixel: u8;       /** Format bits per pixel.                   */
    cubeMap: bool;            /** Texture is cubemap.                      */

}

bgfx_uniform_info :: struct
{
    name: [256]u8;          /** Uniform name.                            */
    type: bgfx_uniform_type;               /** Uniform type.                            */
    num: u16;                /** Number of elements in array.             */

}

bgfx_attachment :: struct
{
    access: bgfx_access;             /** Attachment access. See `Access::Enum`.   */
    handle: bgfx_texture_handle;            /** Render target texture handle.            */
    mip: u16;                /** Mip level.                               */
    layer: u16;              /** Cubemap side or depth layer/slice to use. */
    numLayers: u16;          /** Number of texture layer/slice(s) in array to use. */
    resolve: u8;            /** Resolve flags. See: `BGFX_RESOLVE_*`     */

}

bgfx_transform :: struct
{
    data: *float;               /** Pointer to first 4x4 matrix.             */
    num: u16;                /** Number of matrices.                      */

}

bgfx_view_stats :: struct
{
    name: [256]u8;          /** View name.                               */
    view: bgfx_view_id;               /** View id.                                 */
    cpuTimeBegin: s64;       /** CPU (submit) begin time.                 */
    cpuTimeEnd: s64;         /** CPU (submit) end time.                   */
    gpuTimeBegin: s64;       /** GPU begin time.                          */
    gpuTimeEnd: s64;         /** GPU end time.                            */

}

bgfx_encoder_stats :: struct
{
    cpuTimeBegin: s64;       /** Encoder thread CPU submit begin time.    */
    cpuTimeEnd: s64;         /** Encoder thread CPU submit end time.      */

}

bgfx_stats :: struct
{
    cpuTimeFrame: s64;       /** CPU time between two `bgfx::frame` calls. */
    cpuTimeBegin: s64;       /** Render thread CPU submit begin time.     */
    cpuTimeEnd: s64;         /** Render thread CPU submit end time.       */
    cpuTimerFreq: s64;       /** CPU timer frequency. Timestamps-per-second */
    gpuTimeBegin: s64;       /** GPU frame begin time.                    */
    gpuTimeEnd: s64;         /** GPU frame end time.                      */
    gpuTimerFreq: s64;       /** GPU timer frequency.                     */
    waitRender: s64;         /** Time spent waiting for render backend thread to finish issuing draw commands to underlying graphics API. */
    waitSubmit: s64;         /** Time spent waiting for submit thread to advance to next frame. */
    numDraw: u32;            /** Number of draw calls submitted.          */
    numCompute: u32;         /** Number of compute calls submitted.       */
    numBlit: u32;            /** Number of blit calls submitted.          */
    maxGpuLatency: u32;      /** GPU driver latency.                      */
    numDynamicIndexBuffers: u16; /** Number of used dynamic index buffers.    */
    numDynamicVertexBuffers: u16; /** Number of used dynamic vertex buffers.   */
    numFrameBuffers: u16;    /** Number of used frame buffers.            */
    numIndexBuffers: u16;    /** Number of used index buffers.            */
    numOcclusionQueries: u16; /** Number of used occlusion queries.        */
    numPrograms: u16;        /** Number of used programs.                 */
    numShaders: u16;         /** Number of used shaders.                  */
    numTextures: u16;        /** Number of used textures.                 */
    numUniforms: u16;        /** Number of used uniforms.                 */
    numVertexBuffers: u16;   /** Number of used vertex buffers.           */
    numVertexLayouts: u16;   /** Number of used vertex layouts.           */
    textureMemoryUsed: s64;  /** Estimate of texture memory used.         */
    rtMemoryUsed: s64;       /** Estimate of render target memory used.   */
    transientVbUsed: s32;    /** Amount of transient vertex buffer used.  */
    transientIbUsed: s32;    /** Amount of transient index buffer used.   */
    numPrims: [bgfx_topology.COUNT]u32; /** Number of primitives rendered.           */
    gpuMemoryMax: s64;       /** Maximum available GPU memory for application. */
    gpuMemoryUsed: s64;      /** Amount of GPU memory used by the application. */
    width: u16;              /** Backbuffer width in pixels.              */
    height: u16;             /** Backbuffer height in pixels.             */
    textWidth: u16;          /** Debug text width in u8acters.          */
    textHeight: u16;         /** Debug text height in u8acters.         */
    numViews: u16;           /** Number of view stats.                    */
    viewStats: *bgfx_view_stats;          /** Array of View stats.                     */
    numEncoders: u8;        /** Number of encoders used during frame.    */
    encoderStats: *bgfx_encoder_stats;      /** Array of encoder stats.                  */

}

bgfx_vertex_layout :: struct
{
    hash: u32;               /** Hash.                                    */
    stride: u16;             /** Stride.                                  */
    offset: [bgfx_attrib.COUNT]u16; /** Attribute offsets.                       */
    attributes: [bgfx_attrib.COUNT]u16; /** Used attributes.                         */

}

bgfx_encoder :: struct {  }


attachment_init                                     :: (_this: *bgfx_attachment, _handle: bgfx_texture_handle, _access: bgfx_access, _layer: u16, _numLayers: u16, _mip: u16, _resolve: u8) #foreign bgfx "bgfx_attachment_init";
vertex_layout_begin                                 :: (_this: *bgfx_vertex_layout, _rendererType: bgfx_renderer_type) -> *bgfx_vertex_layout #foreign bgfx "bgfx_vertex_layout_begin";
vertex_layout_add                                   :: (_this: *bgfx_vertex_layout, _attrib: bgfx_attrib, _num: u8, _type: bgfx_attrib_type, _normalized: bool, _asInt: bool) -> *bgfx_vertex_layout #foreign bgfx "bgfx_vertex_layout_add";
vertex_layout_decode                                :: (_this: *bgfx_vertex_layout, _attrib: bgfx_attrib, _num: *u8, _type: *bgfx_attrib_type, _normalized: *bool, _asInt: *bool) #foreign bgfx "bgfx_vertex_layout_decode";
vertex_layout_has                                   :: (_this: *bgfx_vertex_layout, _attrib: bgfx_attrib) -> bool #foreign bgfx "bgfx_vertex_layout_has";
vertex_layout_skip                                  :: (_this: *bgfx_vertex_layout, _num: u8) -> *bgfx_vertex_layout #foreign bgfx "bgfx_vertex_layout_skip";
vertex_layout_end                                   :: (_this: *bgfx_vertex_layout) #foreign bgfx "bgfx_vertex_layout_end";
vertex_pack                                         :: (_input: [4]float, _inputNormalized: bool, _attr: bgfx_attrib, _layout: *bgfx_vertex_layout, _data: *void, _index: u32) #foreign bgfx "bgfx_vertex_pack";
vertex_unpack                                       :: (_output: [4]float, _attr: bgfx_attrib, _layout: *bgfx_vertex_layout,  _data: *void, _index: u32) #foreign bgfx "bgfx_vertex_unpack";
vertex_convert                                      :: (_dstLayout: bgfx_vertex_layout, _dstData: *void, _srcLayout: *bgfx_vertex_layout, _srcData: *void, _num: u32) #foreign bgfx "bgfx_vertex_convert";
weld_vertices                                       :: (_output: *void, _layout: *bgfx_vertex_layout, _data: *void, _num: u32, _index32: bool, _epsilon: float) -> u32 #foreign bgfx "bgfx_weld_vertices";
topology_convert                                    :: (_conversion: bgfx_topology_convert, _dst: *void, _dstSize: u32, _indices: *void, _numIndices: u32, _index32: bool) -> u32 #foreign bgfx "bgfx_topology_convert";
topology_sort_tri_list                              :: (_sort: bgfx_topology_sort, _dst: *void, _dstSize: u32, _dir: [3]float, _pos: [3]float, _vertices: *void, _stride: u32,  _indices: *void, _numIndices: u32, _index32: bool) #foreign bgfx "bgfx_topology_sort_tri_list";
get_supported_renderers                             :: (_max: u8, _enum: *bgfx_renderer_type) -> u8 #foreign bgfx "bgfx_get_supported_renderers";
get_renderer_name                                   :: (_type: bgfx_renderer_type) -> *u8 #foreign bgfx "bgfx_get_renderer_name";
init_ctor                                           :: (_init: *bgfx_init) #foreign bgfx "bgfx_init_ctor";
init                                                :: (_init: *bgfx_init) -> bool #foreign bgfx "bgfx_init";
shutdown                                            :: () #foreign bgfx "bgfx_shutdown";
reset                                               :: (_width: u32, _height: u32, _flags: u32, _format: bgfx_texture_format) #foreign bgfx "bgfx_reset";
frame                                               :: (_capture: bool) -> u32 #foreign bgfx "bgfx_frame";
get_renderer_type                                   :: () -> bgfx_renderer_type #foreign bgfx "bgfx_get_renderer_type";
get_caps                                            :: () -> *bgfx_caps #foreign bgfx "bgfx_get_caps";
get_stats                                           :: () -> *bgfx_stats #foreign bgfx "bgfx_get_stats";
alloc                                               :: (_size: u32) -> *bgfx_memory #foreign bgfx "bgfx_alloc";
copy                                                :: (_data: *void, _size: u32) -> *bgfx_memory #foreign bgfx "bgfx_copy";
make_ref                                            :: (_data: *void, _size: u32) -> *bgfx_memory #foreign bgfx "bgfx_make_ref";
make_ref_release                                    :: (_data: *void, _size: u32, _releaseFn: (_ptr: *void, _userData: *void) -> (), _userData: *void) -> *bgfx_memory #foreign bgfx "bgfx_make_ref_release";
set_debug                                           :: (_debug: u32) #foreign bgfx "bgfx_set_debug";
dbg_text_clear                                      :: (_attr: u8, _small: bool) #foreign bgfx "bgfx_dbg_text_clear";
dbg_text_printf                                     :: (_x: u16, _y: u16, _attr: u8, _format: *u8, args: .. Any ) #foreign bgfx "bgfx_dbg_text_printf";
dbg_text_vprintf                                    :: (_x: u16, _y: u16, _attr: u8, _format: *u8, args: .. Any) #foreign bgfx "bgfx_dbg_text_vprintf";
dbg_text_image                                      :: (_x: u16, _y: u16, _width: u16, _height: u16, _data: *void, _pitch: u16) #foreign bgfx "bgfx_dbg_text_image";
create_index_buffer                                 :: (_mem: *bgfx_memory, _flags: u16) -> bgfx_index_buffer_handle #foreign bgfx "bgfx_create_index_buffer";
set_index_buffer_name                               :: (_handle: bgfx_index_buffer_handle, _name: *u8, _len: s32) #foreign bgfx "bgfx_set_index_buffer_name";
destroy_index_buffer                                :: (_handle: bgfx_index_buffer_handle) #foreign bgfx "bgfx_destroy_index_buffer";
create_vertex_layout                                :: (_layout: *bgfx_vertex_layout) -> bgfx_vertex_layout_handle #foreign bgfx "bgfx_create_vertex_layout";
destroy_vertex_layout                               :: (_layoutHandle: bgfx_vertex_layout_handle) #foreign bgfx "bgfx_destroy_vertex_layout";
create_vertex_buffer                                :: (_mem: *bgfx_memory, _layout: *bgfx_vertex_layout, _flags: u16) -> bgfx_vertex_buffer_handle #foreign bgfx "bgfx_create_vertex_buffer";
set_vertex_buffer_name                              :: (_handle: bgfx_vertex_buffer_handle, _name: *u8, _len: s32) #foreign bgfx "bgfx_set_vertex_buffer_name";
destroy_vertex_buffer                               :: (_handle: bgfx_vertex_buffer_handle) #foreign bgfx "bgfx_destroy_vertex_buffer";
create_dynamic_index_buffer                         :: (_num: u32, _flags: u16) -> bgfx_dynamic_index_buffer_handle #foreign bgfx "bgfx_create_dynamic_index_buffer";
create_dynamic_index_buffer_mem                     :: (_mem: *bgfx_memory, _flags: u16) -> bgfx_dynamic_index_buffer_handle #foreign bgfx "bgfx_create_dynamic_index_buffer_mem";
update_dynamic_index_buffer                         :: (_handle: bgfx_dynamic_index_buffer_handle, _startIndex: u32,  _mem: *bgfx_memory) #foreign bgfx "bgfx_update_dynamic_index_buffer";
destroy_dynamic_index_buffer                        :: (_handle: bgfx_dynamic_index_buffer_handle) #foreign bgfx "bgfx_destroy_dynamic_index_buffer";
create_dynamic_vertex_buffer                        :: (_num: u32, _layout: *bgfx_vertex_layout, _flags: u16) -> bgfx_dynamic_vertex_buffer_handle #foreign bgfx "bgfx_create_dynamic_vertex_buffer";
create_dynamic_vertex_buffer_mem                    :: (_mem: *bgfx_memory, _layout: *bgfx_vertex_layout, _flags: u16) -> bgfx_dynamic_vertex_buffer_handle #foreign bgfx "bgfx_create_dynamic_vertex_buffer_mem";
update_dynamic_vertex_buffer                        :: (_handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32,  _mem: *bgfx_memory) #foreign bgfx "bgfx_update_dynamic_vertex_buffer";
destroy_dynamic_vertex_buffer                       :: (_handle: bgfx_dynamic_vertex_buffer_handle) #foreign bgfx "bgfx_destroy_dynamic_vertex_buffer";
get_avail_transient_index_buffer                    :: (_num: u32) -> u32 #foreign bgfx "bgfx_get_avail_transient_index_buffer";
get_avail_transient_vertex_buffer                   :: (_num: u32, _layout: *bgfx_vertex_layout) -> u32 #foreign bgfx "bgfx_get_avail_transient_vertex_buffer";
get_avail_instance_data_buffer                      :: (_num: u32, _stride: u16) -> u32 #foreign bgfx "bgfx_get_avail_instance_data_buffer";
alloc_transient_index_buffer                        :: (_tib: *bgfx_transient_index_buffer, _num: u32, _index32: bool) #foreign bgfx "bgfx_alloc_transient_index_buffer";
alloc_transient_vertex_buffer                       :: (_tvb: *bgfx_transient_vertex_buffer, _num: u32, _layout: *bgfx_vertex_layout) #foreign bgfx "bgfx_alloc_transient_vertex_buffer";
alloc_transient_buffers                             :: (_tvb: *bgfx_transient_vertex_buffer, _layout: *bgfx_vertex_layout, _numVertices: u32, _tib: *bgfx_transient_index_buffer, _numIndices: u32) -> bool #foreign bgfx "bgfx_alloc_transient_buffers";
alloc_instance_data_buffer                          :: (_idb: *bgfx_instance_data_buffer, _num: u32, _stride: u16) #foreign bgfx "bgfx_alloc_instance_data_buffer";
create_indirect_buffer                              :: (_num: u32) -> bgfx_indirect_buffer_handle #foreign bgfx "bgfx_create_indirect_buffer";
destroy_indirect_buffer                             :: (_handle: bgfx_indirect_buffer_handle) #foreign bgfx "bgfx_destroy_indirect_buffer";
create_shader                                       :: (_mem: *bgfx_memory) -> bgfx_shader_handle #foreign bgfx "bgfx_create_shader";
get_shader_uniforms                                 :: (_handle: bgfx_shader_handle, _uniforms: *bgfx_uniform_handle, _max: u16) -> u16 #foreign bgfx "bgfx_get_shader_uniforms";
set_shader_name                                     :: (_handle: bgfx_shader_handle,  _name: *u8, _len: s32) #foreign bgfx "bgfx_set_shader_name";
destroy_shader                                      :: (_handle: bgfx_shader_handle) #foreign bgfx "bgfx_destroy_shader";
create_program                                      :: (_vsh: bgfx_shader_handle, _fsh: bgfx_shader_handle, _destroyShaders: bool) -> bgfx_program_handle #foreign bgfx "bgfx_create_program";
create_compute_program                              :: (_csh: bgfx_shader_handle, _destroyShaders: bool) -> bgfx_program_handle #foreign bgfx "bgfx_create_compute_program";
destroy_program                                     :: (_handle: bgfx_program_handle) #foreign bgfx "bgfx_destroy_program";
is_texture_valid                                    :: (_depth: u16, _cubeMap: bool, _numLayers: u16, _format: bgfx_texture_format, _flags: u64) -> bool #foreign bgfx "bgfx_is_texture_valid";
is_frame_buffer_valid                               :: (_num: u8,  _attachment: *bgfx_attachment) -> bool #foreign bgfx "bgfx_is_frame_buffer_valid";
calc_texture_size                                   :: (_info: *bgfx_texture_info, _width: u16, _height: u16, _depth: u16, _cubeMap: bool, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format) #foreign bgfx "bgfx_calc_texture_size";
create_texture                                      :: (_mem: *bgfx_memory, _flags: u64, _skip: u8, _info: *bgfx_texture_info) -> bgfx_texture_handle #foreign bgfx "bgfx_create_texture";
create_texture_2d                                   :: (_width: u16, _height: u16, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format, _flags: u64,  _mem: *bgfx_memory) -> bgfx_texture_handle #foreign bgfx "bgfx_create_texture_2d";
create_texture_2d_scaled                            :: (_ratio: bgfx_backbuffer_ratio, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format, _flags: u64) -> bgfx_texture_handle #foreign bgfx "bgfx_create_texture_2d_scaled";
create_texture_3d                                   :: (_width: u16, _height: u16, _depth: u16, _hasMips: bool, _format: bgfx_texture_format, _flags: u64,  _mem: *bgfx_memory) -> bgfx_texture_handle #foreign bgfx "bgfx_create_texture_3d";
create_texture_cube                                 :: (_size: u16, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format, _flags: u64,  _mem: *bgfx_memory) -> bgfx_texture_handle #foreign bgfx "bgfx_create_texture_cube";
update_texture_2d                                   :: (_handle: bgfx_texture_handle, _layer: u16, _mip: u8, _x: u16, _y: u16, _width: u16, _height: u16,  _mem: *bgfx_memory, _pitch: u16) #foreign bgfx "bgfx_update_texture_2d";
update_texture_3d                                   :: (_handle: bgfx_texture_handle, _mip: u8, _x: u16, _y: u16, _z: u16, _width: u16, _height: u16, _depth: u16,  _mem: *bgfx_memory) #foreign bgfx "bgfx_update_texture_3d";
update_texture_cube                                 :: (_handle: bgfx_texture_handle, _layer: u16, _side: u8, _mip: u8, _x: u16, _y: u16, _width: u16, _height: u16,  _mem: *bgfx_memory, _pitch: u16) #foreign bgfx "bgfx_update_texture_cube";
read_texture                                        :: (_handle: bgfx_texture_handle, _data: *void, _mip: u8) -> u32 #foreign bgfx "bgfx_read_texture";
set_texture_name                                    :: (_handle: bgfx_texture_handle, _name: *u8, _len: s32) #foreign bgfx "bgfx_set_texture_name";
get_direct_access_ptr                               :: (_handle: bgfx_texture_handle) -> *void #foreign bgfx "bgfx_get_direct_access_ptr";
destroy_texture                                     :: (_handle: bgfx_texture_handle) #foreign bgfx "bgfx_destroy_texture";
create_frame_buffer                                 :: (_width: u16, _height: u16, _format: bgfx_texture_format, _textureFlags: u64) -> bgfx_frame_buffer_handle #foreign bgfx "bgfx_create_frame_buffer";
create_frame_buffer_scaled                          :: (_ratio: bgfx_backbuffer_ratio, _format: bgfx_texture_format, _textureFlags: u64) -> bgfx_frame_buffer_handle #foreign bgfx "bgfx_create_frame_buffer_scaled";
create_frame_buffer_from_handles                    :: (_num: u8, _handles: *bgfx_texture_handle, _destroyTexture: bool) -> bgfx_frame_buffer_handle #foreign bgfx "bgfx_create_frame_buffer_from_handles";
create_frame_buffer_from_attachment                 :: (_num: u8, _attachment: *bgfx_attachment, _destroyTexture: bool) -> bgfx_frame_buffer_handle #foreign bgfx "bgfx_create_frame_buffer_from_attachment";
create_frame_buffer_from_nwh                        :: (_nwh: *void, _width: u16, _height: u16, _format: bgfx_texture_format, _depthFormat: bgfx_texture_format) -> bgfx_frame_buffer_handle #foreign bgfx "bgfx_create_frame_buffer_from_nwh";
set_frame_buffer_name                               :: (_handle: bgfx_frame_buffer_handle, _name: *u8, _len: s32) #foreign bgfx "bgfx_set_frame_buffer_name";
get_texture                                         :: (_handle: bgfx_frame_buffer_handle, _attachment: u8) -> bgfx_texture_handle #foreign bgfx "bgfx_get_texture";
destroy_frame_buffer                                :: (_handle: bgfx_frame_buffer_handle) #foreign bgfx "bgfx_destroy_frame_buffer";
create_uniform                                      :: (_name: *u8, _type: bgfx_uniform_type, _num: u16) -> bgfx_uniform_handle #foreign bgfx "bgfx_create_uniform";
get_uniform_info                                    :: (_handle: bgfx_uniform_handle, _info: *bgfx_uniform_info) #foreign bgfx "bgfx_get_uniform_info";
destroy_uniform                                     :: (_handle: bgfx_uniform_handle) #foreign bgfx "bgfx_destroy_uniform";
create_occlusion_query                              :: () -> bgfx_occlusion_query_handle #foreign bgfx "bgfx_create_occlusion_query";
get_result                                          :: (_handle: bgfx_occlusion_query_handle, _result: *s32) -> bgfx_occlusion_query_result #foreign bgfx "bgfx_get_result";
destroy_occlusion_query                             :: (_handle: bgfx_occlusion_query_handle) #foreign bgfx "bgfx_destroy_occlusion_query";
set_palette_color                                   :: (_index: u8, _rgba: [4]float) #foreign bgfx "bgfx_set_palette_color";
set_palette_color_rgba8                             :: (_index: u8, _rgba: u32) #foreign bgfx "bgfx_set_palette_color_rgba8";
set_view_name                                       :: (_id: bgfx_view_id, _name: *u8) #foreign bgfx "bgfx_set_view_name";
set_view_rect                                       :: (_id: bgfx_view_id, _x: u16, _y: u16, _width: u16, _height: u16) #foreign bgfx "bgfx_set_view_rect";
set_view_rect_ratio                                 :: (_id: bgfx_view_id, _x: u16, _y: u16, _ratio: bgfx_backbuffer_ratio) #foreign bgfx "bgfx_set_view_rect_ratio";
set_view_scissor                                    :: (_id: bgfx_view_id, _x: u16, _y: u16, _width: u16, _height: u16) #foreign bgfx "bgfx_set_view_scissor";
set_view_clear                                      :: (_id: bgfx_view_id, _flags: u16, _rgba: u32, _depth: float, _stencil: u8) #foreign bgfx "bgfx_set_view_clear";
set_view_clear_mrt                                  :: (_id: bgfx_view_id, _flags: u16, _depth: float, _stencil: u8, _c0: u8, _c1: u8, _c2: u8, _c3: u8, _c4: u8, _c5: u8, _c6: u8, _c7: u8) #foreign bgfx "bgfx_set_view_clear_mrt";
set_view_mode                                       :: (_id: bgfx_view_id, _mode: bgfx_view_mode) #foreign bgfx "bgfx_set_view_mode";
set_view_frame_buffer                               :: (_id: bgfx_view_id, _handle: bgfx_frame_buffer_handle) #foreign bgfx "bgfx_set_view_frame_buffer";
set_view_transform                                  :: (_id: bgfx_view_id, _view: *void, _proj: *void) #foreign bgfx "bgfx_set_view_transform";
set_view_order                                      :: (_id: bgfx_view_id, _num: u16, _order: *bgfx_view_id) #foreign bgfx "bgfx_set_view_order";
reset_view                                          :: (_id: bgfx_view_id) #foreign bgfx "bgfx_reset_view";
encoder_begin                                       :: (_forThread: bool) -> *bgfx_encoder #foreign bgfx "bgfx_encoder_begin";
encoder_end                                         :: (_encoder: *bgfx_encoder) #foreign bgfx "bgfx_encoder_end";
encoder_set_marker                                  :: (_this: *bgfx_encoder, _marker: *u8) #foreign bgfx "bgfx_encoder_set_marker";
encoder_set_state                                   :: (_this: *bgfx_encoder, _state: u64, _rgba: u32) #foreign bgfx "bgfx_encoder_set_state";
encoder_set_condition                               :: (_this: *bgfx_encoder, _handle: bgfx_occlusion_query_handle, _visible: bool) #foreign bgfx "bgfx_encoder_set_condition";
encoder_set_stencil                                 :: (_this: *bgfx_encoder, _fstencil: u32, _bstencil: u32) #foreign bgfx "bgfx_encoder_set_stencil";
encoder_set_scissor                                 :: (_this: *bgfx_encoder, _x: u16, _y: u16, _width: u16, _height: u16) -> u16 #foreign bgfx "bgfx_encoder_set_scissor";
encoder_set_scissor_cached                          :: (_this: *bgfx_encoder, _cache: u16) #foreign bgfx "bgfx_encoder_set_scissor_cached";
encoder_set_transform                               :: (_this: *bgfx_encoder, _mtx: *void, _num: u16) -> u32 #foreign bgfx "bgfx_encoder_set_transform";
encoder_set_transform_cached                        :: (_this: *bgfx_encoder, _cache: u32, _num: u16) #foreign bgfx "bgfx_encoder_set_transform_cached";
encoder_alloc_transform                             :: (_this: *bgfx_encoder, _transform: *bgfx_transform, _num: u16) -> u32 #foreign bgfx "bgfx_encoder_alloc_transform";
encoder_set_uniform                                 :: (_this: *bgfx_encoder, _handle: bgfx_uniform_handle, _value: *void, _num: u16) #foreign bgfx "bgfx_encoder_set_uniform";
encoder_set_index_buffer                            :: (_this: *bgfx_encoder, _handle: bgfx_index_buffer_handle, _firstIndex: u32, _numIndices: u32) #foreign bgfx "bgfx_encoder_set_index_buffer";
encoder_set_dynamic_index_buffer                    :: (_this: *bgfx_encoder, _handle: bgfx_dynamic_index_buffer_handle, _firstIndex: u32, _numIndices: u32) #foreign bgfx "bgfx_encoder_set_dynamic_index_buffer";
encoder_set_transient_index_buffer                  :: (_this: *bgfx_encoder, _tib: *bgfx_transient_index_buffer, _firstIndex: u32, _numIndices: u32) #foreign bgfx "bgfx_encoder_set_transient_index_buffer";
encoder_set_vertex_buffer                           :: (_this: *bgfx_encoder, _stream: u8, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _numVertices: u32) #foreign bgfx "bgfx_encoder_set_vertex_buffer";
encoder_set_vertex_buffer_with_layout               :: (_this: *bgfx_encoder, _stream: u8, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign bgfx "bgfx_encoder_set_vertex_buffer_with_layout";
encoder_set_dynamic_vertex_buffer                   :: (_this: *bgfx_encoder, _stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _numVertices: u32) #foreign bgfx "bgfx_encoder_set_dynamic_vertex_buffer";
encoder_set_dynamic_vertex_buffer_with_layout       :: (_this: *bgfx_encoder, _stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign bgfx "bgfx_encoder_set_dynamic_vertex_buffer_with_layout";
encoder_set_transient_vertex_buffer                 :: (_this: *bgfx_encoder, _stream: u8, _tvb: *bgfx_transient_vertex_buffer, _startVertex: u32, _numVertices: u32) #foreign bgfx "bgfx_encoder_set_transient_vertex_buffer";
encoder_set_transient_vertex_buffer_with_layout     :: (_this: *bgfx_encoder, _stream: u8, _tvb: *bgfx_transient_vertex_buffer, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign bgfx "bgfx_encoder_set_transient_vertex_buffer_with_layout";
encoder_set_vertex_count                            :: (_this: *bgfx_encoder, _numVertices: u32) #foreign bgfx "bgfx_encoder_set_vertex_count";
encoder_set_instance_data_buffer                    :: (_this: *bgfx_encoder, _idb: bgfx_instance_data_buffer, _start: u32, _num: u32) #foreign bgfx "bgfx_encoder_set_instance_data_buffer";
encoder_set_instance_data_from_vertex_buffer        :: (_this: *bgfx_encoder, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _num: u32) #foreign bgfx "bgfx_encoder_set_instance_data_from_vertex_buffer";
encoder_set_instance_data_from_dynamic_vertex_buffer:: (_this: *bgfx_encoder, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _num: u32) #foreign bgfx "bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer";
encoder_set_instance_count                          :: (_this: *bgfx_encoder, _numInstances: u32) #foreign bgfx "bgfx_encoder_set_instance_count";
encoder_set_texture                                 :: (_this: *bgfx_encoder, _stage: u8, _sampler: bgfx_uniform_handle, _handle: bgfx_texture_handle, _flags: u32) #foreign bgfx "bgfx_encoder_set_texture";
encoder_touch                                       :: (_this: *bgfx_encoder, _id: bgfx_view_id) #foreign bgfx "bgfx_encoder_touch";
encoder_submit                                      :: (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _depth: u32, _flags: u8) #foreign bgfx "bgfx_encoder_submit";
encoder_submit_occlusion_query                      :: (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _occlusionQuery: bgfx_occlusion_query_handle, _depth: u32, _flags: u8) #foreign bgfx "bgfx_encoder_submit_occlusion_query";
encoder_submit_indirect                             :: (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _indirectHandle: bgfx_indirect_buffer_handle, _start: u16, _num: u16, _depth: u32, _flags: u8) #foreign bgfx "bgfx_encoder_submit_indirect";
encoder_set_compute_index_buffer                    :: (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_index_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_encoder_set_compute_index_buffer";
encoder_set_compute_vertex_buffer                   :: (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_vertex_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_encoder_set_compute_vertex_buffer";
encoder_set_compute_dynamic_index_buffer            :: (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_dynamic_index_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_encoder_set_compute_dynamic_index_buffer";
encoder_set_compute_dynamic_vertex_buffer           :: (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_encoder_set_compute_dynamic_vertex_buffer";
encoder_set_compute_indirect_buffer                 :: (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_indirect_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_encoder_set_compute_indirect_buffer";
encoder_set_image                                   :: (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_texture_handle, _mip: u8, _access: bgfx_access, _format: bgfx_texture_format) #foreign bgfx "bgfx_encoder_set_image";
encoder_dispatch                                    :: (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _numX: u32, _numY: u32, _numZ: u32, _flags: u8) #foreign bgfx "bgfx_encoder_dispatch";
encoder_dispatch_indirect                           :: (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _indirectHandle: bgfx_indirect_buffer_handle, _start: u16, _num: u16, _flags: u8) #foreign bgfx "bgfx_encoder_dispatch_indirect";
encoder_discard                                     :: (_this: *bgfx_encoder, _flags: u8) #foreign bgfx "bgfx_encoder_discard";
encoder_blit                                        :: (_this: *bgfx_encoder, _id: bgfx_view_id, _dst: bgfx_texture_handle, _dstMip: u8, _dstX: u16, _dstY: u16, _dstZ: u16, _src: bgfx_texture_handle, _srcMip: u8, _srcX: u16, _srcY: u16, _srcZ: u16, _width: u16, _height: u16, _depth: u16) #foreign bgfx "bgfx_encoder_blit";
request_screen_shot                                 :: (_handle: bgfx_frame_buffer_handle, _filePath: *u8) #foreign bgfx "bgfx_request_screen_shot";
render_frame                                        :: (_msecs: s32) -> bgfx_render_frame #foreign bgfx "bgfx_render_frame";
set_platform_data                                   :: (_data: *bgfx_platform_data) #foreign bgfx "bgfx_set_platform_data";
get_internal_data                                   :: () -> *bgfx_internal_data #foreign bgfx "bgfx_get_internal_data";
override_internal_texture_ptr                       :: (_handle: bgfx_texture_handle, _ptr: u64) -> u64 #foreign bgfx "bgfx_override_internal_texture_ptr";
override_internal_texture                           :: (_handle: bgfx_texture_handle, _width: u16, _height: u16, _numMips: u8, _format: bgfx_texture_format, _flags: u64) -> u64 #foreign bgfx "bgfx_override_internal_texture";
set_marker                                          :: (_marker: *u8) #foreign bgfx "bgfx_set_marker";
set_state                                           :: (_state: u64, _rgba: u32) #foreign bgfx "bgfx_set_state";
set_condition                                       :: (_handle: bgfx_occlusion_query_handle, _visible: bool) #foreign bgfx "bgfx_set_condition";
set_stencil                                         :: (_fstencil: u32, _bstencil: u32) #foreign bgfx "bgfx_set_stencil";
set_scissor                                         :: (_x: u16, _y: u16, _width: u16, _height: u16) -> u16 #foreign bgfx "bgfx_set_scissor";
set_scissor_cached                                  :: (_cache: u16) #foreign bgfx "bgfx_set_scissor_cached";
set_transform                                       :: (_mtx: *void, _num: u16) -> u32 #foreign bgfx "bgfx_set_transform";
set_transform_cached                                :: (_cache: u32, _num: u16) #foreign bgfx "bgfx_set_transform_cached";
alloc_transform                                     :: (_transform: *bgfx_transform, _num: u16) -> u32 #foreign bgfx "bgfx_alloc_transform";
set_uniform                                         :: (_handle: bgfx_uniform_handle, _value: *void, _num: u16) #foreign bgfx "bgfx_set_uniform";
set_index_buffer                                    :: (_handle: bgfx_index_buffer_handle, _firstIndex: u32, _numIndices: u32) #foreign bgfx "bgfx_set_index_buffer";
set_dynamic_index_buffer                            :: (_handle: bgfx_dynamic_index_buffer_handle, _firstIndex: u32, _numIndices: u32) #foreign bgfx "bgfx_set_dynamic_index_buffer";
set_transient_index_buffer                          :: (_tib: *bgfx_transient_index_buffer, _firstIndex: u32, _numIndices: u32) #foreign bgfx "bgfx_set_transient_index_buffer";
set_vertex_buffer                                   :: (_stream: u8, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _numVertices: u32) #foreign bgfx "bgfx_set_vertex_buffer";
set_vertex_buffer_with_layout                       :: (_stream: u8, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign bgfx "bgfx_set_vertex_buffer_with_layout";
set_dynamic_vertex_buffer                           :: (_stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _numVertices: u32) #foreign bgfx "bgfx_set_dynamic_vertex_buffer";
set_dynamic_vertex_buffer_with_layout               :: (_stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign bgfx "bgfx_set_dynamic_vertex_buffer_with_layout";
set_transient_vertex_buffer                         :: (_stream: u8, _tvb: *bgfx_transient_vertex_buffer, _startVertex: u32, _numVertices: u32) #foreign bgfx "bgfx_set_transient_vertex_buffer";
set_transient_vertex_buffer_with_layout             :: (_stream: u8, _tvb: *bgfx_transient_vertex_buffer, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign bgfx "bgfx_set_transient_vertex_buffer_with_layout";
set_vertex_count                                    :: (_numVertices: u32) #foreign bgfx "bgfx_set_vertex_count";
set_instance_data_buffer                            :: (_idb: *bgfx_instance_data_buffer, _start: u32, _num: u32) #foreign bgfx "bgfx_set_instance_data_buffer";
set_instance_data_from_vertex_buffer                :: (_handle: bgfx_vertex_buffer_handle, _startVertex: u32, _num: u32) #foreign bgfx "bgfx_set_instance_data_from_vertex_buffer";
set_instance_data_from_dynamic_vertex_buffer        :: (_handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _num: u32) #foreign bgfx "bgfx_set_instance_data_from_dynamic_vertex_buffer";
set_instance_count                                  :: (_numInstances: u32) #foreign bgfx "bgfx_set_instance_count";
set_texture                                         :: (_stage: u8, _sampler: bgfx_uniform_handle, _handle: bgfx_texture_handle, _flags: u32) #foreign bgfx "bgfx_set_texture";
touch                                               :: (_id: bgfx_view_id) #foreign bgfx "bgfx_touch";
submit                                              :: (_id: bgfx_view_id, _program: bgfx_program_handle, _depth: u32, _flags: u8) #foreign bgfx "bgfx_submit";
submit_occlusion_query                              :: (_id: bgfx_view_id, _program: bgfx_program_handle, _occlusionQuery: bgfx_occlusion_query_handle, _depth: u32, _flags: u8) #foreign bgfx "bgfx_submit_occlusion_query";
submit_indirect                                     :: (_id: bgfx_view_id, _program: bgfx_program_handle, _indirectHandle: bgfx_indirect_buffer_handle, _start: u16, _num: u16, _depth: u32, _flags: u8) #foreign bgfx "bgfx_submit_indirect";
set_compute_index_buffer                            :: (_stage: u8, _handle: bgfx_index_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_set_compute_index_buffer";
set_compute_vertex_buffer                           :: (_stage: u8, _handle: bgfx_vertex_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_set_compute_vertex_buffer";
set_compute_dynamic_index_buffer                    :: (_stage: u8, _handle: bgfx_dynamic_index_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_set_compute_dynamic_index_buffer";
set_compute_dynamic_vertex_buffer                   :: (_stage: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_set_compute_dynamic_vertex_buffer";
set_compute_indirect_buffer                         :: (_stage: u8, _handle: bgfx_indirect_buffer_handle, _access: bgfx_access) #foreign bgfx "bgfx_set_compute_indirect_buffer";
set_image                                           :: (_stage: u8, _handle: bgfx_texture_handle, _mip: u8, _access: bgfx_access, _format: bgfx_texture_format) #foreign bgfx "bgfx_set_image";
dispatch                                            :: (_id: bgfx_view_id, _program: bgfx_program_handle, _numX: u32, _numY: u32, _numZ: u32, _flags: u8) #foreign bgfx "bgfx_dispatch";
dispatch_indirect                                   :: (_id: bgfx_view_id, _program: bgfx_program_handle, _indirectHandle: bgfx_indirect_buffer_handle, _start: u16, _num: u16, _flags: u8) #foreign bgfx "bgfx_dispatch_indirect";
discard                                             :: (_flags: u8) #foreign bgfx "bgfx_discard";
blit                                                :: (_id: bgfx_view_id, _dst: bgfx_texture_handle, _dstMip: u8, _dstX: u16, _dstY: u16, _dstZ: u16, _src: bgfx_texture_handle, _srcMip: u8, _srcX: u16, _srcY: u16, _srcZ: u16, _width: u16, _height: u16, _depth: u16) #foreign bgfx "bgfx_blit";
get_interface :: (_version: u32) -> *bgfx_interface_vtbl #foreign bgfx "bgfx_get_interface";

bgfx_function_id :: enum u32
{
    BGFX_FUNCTION_ID_ATTACHMENT_INIT;
    BGFX_FUNCTION_ID_VERTEX_LAYOUT_BEGIN;
    BGFX_FUNCTION_ID_VERTEX_LAYOUT_ADD;
    BGFX_FUNCTION_ID_VERTEX_LAYOUT_DECODE;
    BGFX_FUNCTION_ID_VERTEX_LAYOUT_HAS;
    BGFX_FUNCTION_ID_VERTEX_LAYOUT_SKIP;
    BGFX_FUNCTION_ID_VERTEX_LAYOUT_END;
    BGFX_FUNCTION_ID_VERTEX_PACK;
    BGFX_FUNCTION_ID_VERTEX_UNPACK;
    BGFX_FUNCTION_ID_VERTEX_CONVERT;
    BGFX_FUNCTION_ID_WELD_VERTICES;
    BGFX_FUNCTION_ID_TOPOLOGY_CONVERT;
    BGFX_FUNCTION_ID_TOPOLOGY_SORT_TRI_LIST;
    BGFX_FUNCTION_ID_GET_SUPPORTED_RENDERERS;
    BGFX_FUNCTION_ID_GET_RENDERER_NAME;
    BGFX_FUNCTION_ID_INIT_CTOR;
    BGFX_FUNCTION_ID_INIT;
    BGFX_FUNCTION_ID_SHUTDOWN;
    BGFX_FUNCTION_ID_RESET;
    BGFX_FUNCTION_ID_FRAME;
    BGFX_FUNCTION_ID_GET_RENDERER_TYPE;
    BGFX_FUNCTION_ID_GET_CAPS;
    BGFX_FUNCTION_ID_GET_STATS;
    BGFX_FUNCTION_ID_ALLOC;
    BGFX_FUNCTION_ID_COPY;
    BGFX_FUNCTION_ID_MAKE_REF;
    BGFX_FUNCTION_ID_MAKE_REF_RELEASE;
    BGFX_FUNCTION_ID_SET_DEBUG;
    BGFX_FUNCTION_ID_DBG_TEXT_CLEAR;
    BGFX_FUNCTION_ID_DBG_TEXT_PRINTF;
    BGFX_FUNCTION_ID_DBG_TEXT_VPRINTF;
    BGFX_FUNCTION_ID_DBG_TEXT_IMAGE;
    BGFX_FUNCTION_ID_CREATE_INDEX_BUFFER;
    BGFX_FUNCTION_ID_SET_INDEX_BUFFER_NAME;
    BGFX_FUNCTION_ID_DESTROY_INDEX_BUFFER;
    BGFX_FUNCTION_ID_CREATE_VERTEX_LAYOUT;
    BGFX_FUNCTION_ID_DESTROY_VERTEX_LAYOUT;
    BGFX_FUNCTION_ID_CREATE_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_SET_VERTEX_BUFFER_NAME;
    BGFX_FUNCTION_ID_DESTROY_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_CREATE_DYNAMIC_INDEX_BUFFER;
    BGFX_FUNCTION_ID_CREATE_DYNAMIC_INDEX_BUFFER_MEM;
    BGFX_FUNCTION_ID_UPDATE_DYNAMIC_INDEX_BUFFER;
    BGFX_FUNCTION_ID_DESTROY_DYNAMIC_INDEX_BUFFER;
    BGFX_FUNCTION_ID_CREATE_DYNAMIC_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_CREATE_DYNAMIC_VERTEX_BUFFER_MEM;
    BGFX_FUNCTION_ID_UPDATE_DYNAMIC_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_DESTROY_DYNAMIC_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_GET_AVAIL_TRANSIENT_INDEX_BUFFER;
    BGFX_FUNCTION_ID_GET_AVAIL_TRANSIENT_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_GET_AVAIL_INSTANCE_DATA_BUFFER;
    BGFX_FUNCTION_ID_ALLOC_TRANSIENT_INDEX_BUFFER;
    BGFX_FUNCTION_ID_ALLOC_TRANSIENT_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_ALLOC_TRANSIENT_BUFFERS;
    BGFX_FUNCTION_ID_ALLOC_INSTANCE_DATA_BUFFER;
    BGFX_FUNCTION_ID_CREATE_INDIRECT_BUFFER;
    BGFX_FUNCTION_ID_DESTROY_INDIRECT_BUFFER;
    BGFX_FUNCTION_ID_CREATE_SHADER;
    BGFX_FUNCTION_ID_GET_SHADER_UNIFORMS;
    BGFX_FUNCTION_ID_SET_SHADER_NAME;
    BGFX_FUNCTION_ID_DESTROY_SHADER;
    BGFX_FUNCTION_ID_CREATE_PROGRAM;
    BGFX_FUNCTION_ID_CREATE_COMPUTE_PROGRAM;
    BGFX_FUNCTION_ID_DESTROY_PROGRAM;
    BGFX_FUNCTION_ID_IS_TEXTURE_VALID;
    BGFX_FUNCTION_ID_IS_FRAME_BUFFER_VALID;
    BGFX_FUNCTION_ID_CALC_TEXTURE_SIZE;
    BGFX_FUNCTION_ID_CREATE_TEXTURE;
    BGFX_FUNCTION_ID_CREATE_TEXTURE_2D;
    BGFX_FUNCTION_ID_CREATE_TEXTURE_2D_SCALED;
    BGFX_FUNCTION_ID_CREATE_TEXTURE_3D;
    BGFX_FUNCTION_ID_CREATE_TEXTURE_CUBE;
    BGFX_FUNCTION_ID_UPDATE_TEXTURE_2D;
    BGFX_FUNCTION_ID_UPDATE_TEXTURE_3D;
    BGFX_FUNCTION_ID_UPDATE_TEXTURE_CUBE;
    BGFX_FUNCTION_ID_READ_TEXTURE;
    BGFX_FUNCTION_ID_SET_TEXTURE_NAME;
    BGFX_FUNCTION_ID_GET_DIRECT_ACCESS_PTR;
    BGFX_FUNCTION_ID_DESTROY_TEXTURE;
    BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER;
    BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER_SCALED;
    BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER_FROM_HANDLES;
    BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER_FROM_ATTACHMENT;
    BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER_FROM_NWH;
    BGFX_FUNCTION_ID_SET_FRAME_BUFFER_NAME;
    BGFX_FUNCTION_ID_GET_TEXTURE;
    BGFX_FUNCTION_ID_DESTROY_FRAME_BUFFER;
    BGFX_FUNCTION_ID_CREATE_UNIFORM;
    BGFX_FUNCTION_ID_GET_UNIFORM_INFO;
    BGFX_FUNCTION_ID_DESTROY_UNIFORM;
    BGFX_FUNCTION_ID_CREATE_OCCLUSION_QUERY;
    BGFX_FUNCTION_ID_GET_RESULT;
    BGFX_FUNCTION_ID_DESTROY_OCCLUSION_QUERY;
    BGFX_FUNCTION_ID_SET_PALETTE_COLOR;
    BGFX_FUNCTION_ID_SET_PALETTE_COLOR_RGBA8;
    BGFX_FUNCTION_ID_SET_VIEW_NAME;
    BGFX_FUNCTION_ID_SET_VIEW_RECT;
    BGFX_FUNCTION_ID_SET_VIEW_RECT_RATIO;
    BGFX_FUNCTION_ID_SET_VIEW_SCISSOR;
    BGFX_FUNCTION_ID_SET_VIEW_CLEAR;
    BGFX_FUNCTION_ID_SET_VIEW_CLEAR_MRT;
    BGFX_FUNCTION_ID_SET_VIEW_MODE;
    BGFX_FUNCTION_ID_SET_VIEW_FRAME_BUFFER;
    BGFX_FUNCTION_ID_SET_VIEW_TRANSFORM;
    BGFX_FUNCTION_ID_SET_VIEW_ORDER;
    BGFX_FUNCTION_ID_RESET_VIEW;
    BGFX_FUNCTION_ID_ENCODER_BEGIN;
    BGFX_FUNCTION_ID_ENCODER_END;
    BGFX_FUNCTION_ID_ENCODER_SET_MARKER;
    BGFX_FUNCTION_ID_ENCODER_SET_STATE;
    BGFX_FUNCTION_ID_ENCODER_SET_CONDITION;
    BGFX_FUNCTION_ID_ENCODER_SET_STENCIL;
    BGFX_FUNCTION_ID_ENCODER_SET_SCISSOR;
    BGFX_FUNCTION_ID_ENCODER_SET_SCISSOR_CACHED;
    BGFX_FUNCTION_ID_ENCODER_SET_TRANSFORM;
    BGFX_FUNCTION_ID_ENCODER_SET_TRANSFORM_CACHED;
    BGFX_FUNCTION_ID_ENCODER_ALLOC_TRANSFORM;
    BGFX_FUNCTION_ID_ENCODER_SET_UNIFORM;
    BGFX_FUNCTION_ID_ENCODER_SET_INDEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_DYNAMIC_INDEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_TRANSIENT_INDEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_VERTEX_BUFFER_WITH_LAYOUT;
    BGFX_FUNCTION_ID_ENCODER_SET_DYNAMIC_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_DYNAMIC_VERTEX_BUFFER_WITH_LAYOUT;
    BGFX_FUNCTION_ID_ENCODER_SET_TRANSIENT_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_TRANSIENT_VERTEX_BUFFER_WITH_LAYOUT;
    BGFX_FUNCTION_ID_ENCODER_SET_VERTEX_COUNT;
    BGFX_FUNCTION_ID_ENCODER_SET_INSTANCE_DATA_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_INSTANCE_DATA_FROM_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_INSTANCE_DATA_FROM_DYNAMIC_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_INSTANCE_COUNT;
    BGFX_FUNCTION_ID_ENCODER_SET_TEXTURE;
    BGFX_FUNCTION_ID_ENCODER_TOUCH;
    BGFX_FUNCTION_ID_ENCODER_SUBMIT;
    BGFX_FUNCTION_ID_ENCODER_SUBMIT_OCCLUSION_QUERY;
    BGFX_FUNCTION_ID_ENCODER_SUBMIT_INDIRECT;
    BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_INDEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_DYNAMIC_INDEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_DYNAMIC_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_INDIRECT_BUFFER;
    BGFX_FUNCTION_ID_ENCODER_SET_IMAGE;
    BGFX_FUNCTION_ID_ENCODER_DISPATCH;
    BGFX_FUNCTION_ID_ENCODER_DISPATCH_INDIRECT;
    BGFX_FUNCTION_ID_ENCODER_DISCARD;
    BGFX_FUNCTION_ID_ENCODER_BLIT;
    BGFX_FUNCTION_ID_REQUEST_SCREEN_SHOT;
    BGFX_FUNCTION_ID_RENDER_FRAME;
    BGFX_FUNCTION_ID_SET_PLATFORM_DATA;
    BGFX_FUNCTION_ID_GET_INTERNAL_DATA;
    BGFX_FUNCTION_ID_OVERRIDE_INTERNAL_TEXTURE_PTR;
    BGFX_FUNCTION_ID_OVERRIDE_INTERNAL_TEXTURE;
    BGFX_FUNCTION_ID_SET_MARKER;
    BGFX_FUNCTION_ID_SET_STATE;
    BGFX_FUNCTION_ID_SET_CONDITION;
    BGFX_FUNCTION_ID_SET_STENCIL;
    BGFX_FUNCTION_ID_SET_SCISSOR;
    BGFX_FUNCTION_ID_SET_SCISSOR_CACHED;
    BGFX_FUNCTION_ID_SET_TRANSFORM;
    BGFX_FUNCTION_ID_SET_TRANSFORM_CACHED;
    BGFX_FUNCTION_ID_ALLOC_TRANSFORM;
    BGFX_FUNCTION_ID_SET_UNIFORM;
    BGFX_FUNCTION_ID_SET_INDEX_BUFFER;
    BGFX_FUNCTION_ID_SET_DYNAMIC_INDEX_BUFFER;
    BGFX_FUNCTION_ID_SET_TRANSIENT_INDEX_BUFFER;
    BGFX_FUNCTION_ID_SET_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_SET_VERTEX_BUFFER_WITH_LAYOUT;
    BGFX_FUNCTION_ID_SET_DYNAMIC_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_SET_DYNAMIC_VERTEX_BUFFER_WITH_LAYOUT;
    BGFX_FUNCTION_ID_SET_TRANSIENT_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_SET_TRANSIENT_VERTEX_BUFFER_WITH_LAYOUT;
    BGFX_FUNCTION_ID_SET_VERTEX_COUNT;
    BGFX_FUNCTION_ID_SET_INSTANCE_DATA_BUFFER;
    BGFX_FUNCTION_ID_SET_INSTANCE_DATA_FROM_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_SET_INSTANCE_DATA_FROM_DYNAMIC_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_SET_INSTANCE_COUNT;
    BGFX_FUNCTION_ID_SET_TEXTURE;
    BGFX_FUNCTION_ID_TOUCH;
    BGFX_FUNCTION_ID_SUBMIT;
    BGFX_FUNCTION_ID_SUBMIT_OCCLUSION_QUERY;
    BGFX_FUNCTION_ID_SUBMIT_INDIRECT;
    BGFX_FUNCTION_ID_SET_COMPUTE_INDEX_BUFFER;
    BGFX_FUNCTION_ID_SET_COMPUTE_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_SET_COMPUTE_DYNAMIC_INDEX_BUFFER;
    BGFX_FUNCTION_ID_SET_COMPUTE_DYNAMIC_VERTEX_BUFFER;
    BGFX_FUNCTION_ID_SET_COMPUTE_INDIRECT_BUFFER;
    BGFX_FUNCTION_ID_SET_IMAGE;
    BGFX_FUNCTION_ID_DISPATCH;
    BGFX_FUNCTION_ID_DISPATCH_INDIRECT;
    BGFX_FUNCTION_ID_DISCARD;
    BGFX_FUNCTION_ID_BLIT;

    BGFX_FUNCTION_ID_COUNT;

}

bgfx_interface_vtbl :: struct
{
    attachment_init                                      : (_this: *bgfx_attachment, _handle: bgfx_texture_handle, _access: bgfx_access, _layer: u16, _numLayers: u16, _mip: u16, _resolve: u8) #foreign;
    vertex_layout_begin                                  : (_this: *bgfx_vertex_layout, _rendererType: bgfx_renderer_type) -> *bgfx_vertex_layout #foreign;
    vertex_layout_add                                    : (_this: *bgfx_vertex_layout, _attrib: bgfx_attrib, _num: u8, _type: bgfx_attrib_type, _normalized: bool, _asInt: bool) -> *bgfx_vertex_layout #foreign;
    vertex_layout_decode                                 : (_this: *bgfx_vertex_layout, _attrib: bgfx_attrib, _num: *u8, _type: *bgfx_attrib_type, _normalized: *bool, _asInt: *bool) #foreign;
    vertex_layout_has                                    : (_this: *bgfx_vertex_layout, _attrib: bgfx_attrib) -> bool #foreign;
    vertex_layout_skip                                   : (_this: *bgfx_vertex_layout, _num: u8) -> *bgfx_vertex_layout #foreign;
    vertex_layout_end                                    : (_this: *bgfx_vertex_layout) #foreign;
    vertex_pack                                          : (_input: [4]float, _inputNormalized: bool, _attr: bgfx_attrib, _layout: *bgfx_vertex_layout, _data: *void, _index: u32) #foreign;
    vertex_unpack                                        : (_output: [4]float, _attr: bgfx_attrib, _layout: *bgfx_vertex_layout, _data: *void, _index: u32) #foreign;
    vertex_convert                                       : (_dstLayout: *bgfx_vertex_layout, _dstData: *void, _srcLayout: *bgfx_vertex_layout, _srcData: *void, _num: u32) #foreign;
    weld_vertices                                        : (_output: *void, _layout: *bgfx_vertex_layout, _data: *void, _num: u32, _index32: bool, _epsilon: float) -> u32 #foreign;
    topology_convert                                     : (_conversion: bgfx_topology_convert, _dst: *void, _dstSize: u32, _indices: *void, _numIndices: u32, _index32: bool) -> u32 #foreign;
    topology_sort_tri_list                               : (_sort: bgfx_topology_sort, _dst: *void, _dstSize: u32, _dir: [3]float, _pos: [3]float, _vertices: *void, _stride: u32, _indices: *void, _numIndices: u32, _index32: bool) #foreign;
    get_supported_renderers                              : (_max: u8, _enum: *bgfx_renderer_type) -> u8 #foreign;
    get_renderer_name                                    : (_type: bgfx_renderer_type) -> *u8 #foreign;
    init_ctor                                            : (_init: *bgfx_init) #foreign;
    init                                                 : (_init: *bgfx_init) -> bool #foreign;
    shutdown                                             : () #foreign;
    reset                                                : (_width: u32, _height: u32, _flags: u32, _format: bgfx_texture_format) #foreign;
    frame                                                : (_capture: bool) -> u32 #foreign;
    get_renderer_type                                    : () -> bgfx_renderer_type #foreign;
    get_caps                                             : () -> *bgfx_caps #foreign;
    get_stats                                            : () -> *bgfx_stats #foreign;
    alloc                                                : (_size: u32) -> *bgfx_memory #foreign;
    copy                                                 : (_data: *void, _size: u32) -> *bgfx_memory #foreign;
    make_ref                                             : ( _data: *void, _size: u32) -> *bgfx_memory #foreign;
    make_ref_release                                     : ( _data: *void, _size: u32, _releaseFn: (_ptr: *void, _userData: *void) -> (), _userData: *void) -> *bgfx_memory #foreign;
    set_debug                                            : (_debug: u32) #foreign;
    dbg_text_clear                                       : (_attr: u8, _small: bool) #foreign;
    dbg_text_printf                                      : (_x: u16, _y: u16, _attr: u8, _format: *u8, args: .. Any) #foreign;
    dbg_text_vprintf                                     : (_x: u16, _y: u16, _attr: u8, _format: *u8, args: .. Any) #foreign;
    dbg_text_image                                       : (_x: u16, _y: u16, _width: u16, _height: u16, _data: *void, _pitch: u16) #foreign;
    create_index_buffer                                  : ( _mem: *bgfx_memory, _flags: u16) -> bgfx_index_buffer_handle #foreign;
    set_index_buffer_name                                : (_handle: bgfx_index_buffer_handle, _name: *u8, _len: s32) #foreign;
    destroy_index_buffer                                 : (_handle: bgfx_index_buffer_handle) #foreign;
    create_vertex_layout                                 : (_layout: *bgfx_vertex_layout) -> bgfx_vertex_layout_handle #foreign;
    destroy_vertex_layout                                : (_layoutHandle: bgfx_vertex_layout_handle) #foreign;
    create_vertex_buffer                                 : ( _mem: *bgfx_memory, _layout: *bgfx_vertex_layout, _flags: u16) -> bgfx_vertex_buffer_handle #foreign;
    set_vertex_buffer_name                               : (_handle: bgfx_vertex_buffer_handle, _name: *u8, _len: s32) #foreign;
    destroy_vertex_buffer                                : (_handle: bgfx_vertex_buffer_handle) #foreign;
    create_dynamic_index_buffer                          : (_num: u32, _flags: u16) -> bgfx_dynamic_index_buffer_handle #foreign;
    create_dynamic_index_buffer_mem                      : (_mem: *bgfx_memory, _flags: u16) -> bgfx_dynamic_index_buffer_handle #foreign;
    update_dynamic_index_buffer                          : (_handle: bgfx_dynamic_index_buffer_handle, _startIndex: u32, _mem: *bgfx_memory) #foreign;
    destroy_dynamic_index_buffer                         : (_handle: bgfx_dynamic_index_buffer_handle) #foreign;
    create_dynamic_vertex_buffer                         : (_num: u32, _layout: *bgfx_vertex_layout, _flags: u16) -> bgfx_dynamic_vertex_buffer_handle #foreign;
    create_dynamic_vertex_buffer_mem                     : (_mem: *bgfx_memory, _layout: *bgfx_vertex_layout, _flags: u16) -> bgfx_dynamic_vertex_buffer_handle #foreign;
    update_dynamic_vertex_buffer                         : (_handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _mem: *bgfx_memory) #foreign;
    destroy_dynamic_vertex_buffer                        : (_handle: bgfx_dynamic_vertex_buffer_handle) #foreign;
    get_avail_transient_index_buffer                     : (_num: u32) -> u32 #foreign;
    get_avail_transient_vertex_buffer                    : (_num: u32, _layout: *bgfx_vertex_layout) -> u32 #foreign;
    get_avail_instance_data_buffer                       : (_num: u32, _stride: u16) -> u32 #foreign;
    alloc_transient_index_buffer                         : (_tib: *bgfx_transient_index_buffer, _num: u32, _index32: bool) #foreign;
    alloc_transient_vertex_buffer                        : (_tvb: *bgfx_transient_vertex_buffer, _num: u32, _layout: *bgfx_vertex_layout) #foreign;
    alloc_transient_buffers                              : (_tvb: *bgfx_transient_vertex_buffer, _layout: *bgfx_vertex_layout, _numVertices: u32, _tib: *bgfx_transient_index_buffer, _numIndices: u32) -> bool #foreign;
    alloc_instance_data_buffer                           : (_idb: *bgfx_instance_data_buffer, _num: u32, _stride: u16) #foreign;
    create_indirect_buffer                               : (_num: u32) -> bgfx_indirect_buffer_handle #foreign;
    destroy_indirect_buffer                              : (_handle: bgfx_indirect_buffer_handle) #foreign;
    create_shader                                        : (_mem: *bgfx_memory) -> bgfx_shader_handle #foreign;
    get_shader_uniforms                                  : (_handle: bgfx_shader_handle, _uniforms: *bgfx_uniform_handle, _max: u16) -> u16 #foreign;
    set_shader_name                                      : (_handle: bgfx_shader_handle, _name: *u8, _len: s32) #foreign;
    destroy_shader                                       : (_handle: bgfx_shader_handle) #foreign;
    create_program                                       : (_vsh: bgfx_shader_handle, _fsh: bgfx_shader_handle, _destroyShaders: bool) -> bgfx_program_handle #foreign;
    create_compute_program                               : (_csh: bgfx_shader_handle, _destroyShaders: bool) -> bgfx_program_handle #foreign;
    destroy_program                                      : (_handle: bgfx_program_handle) #foreign;
    is_texture_valid                                     : (_depth: u16, _cubeMap: bool, _numLayers: u16, _format: bgfx_texture_format, _flags: u64) -> bool #foreign;
    is_frame_buffer_valid                                : (_num: u8, _attachment: *bgfx_attachment) -> bool #foreign;
    calc_texture_size                                    : (_info: *bgfx_texture_info, _width: u16, _height: u16, _depth: u16, _cubeMap: bool, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format) #foreign;
    create_texture                                       : (_mem: *bgfx_memory, _flags: u64, _skip: u8, _info: *bgfx_texture_info) -> bgfx_texture_handle #foreign;
    create_texture_2d                                    : (_width: u16, _height: u16, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format, _flags: u64, _mem: *bgfx_memory) -> bgfx_texture_handle #foreign;
    create_texture_2d_scaled                             : (_ratio: bgfx_backbuffer_ratio, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format, _flags: u64) -> bgfx_texture_handle #foreign;
    create_texture_3d                                    : (_width: u16, _height: u16, _depth: u16, _hasMips: bool, _format: bgfx_texture_format, _flags: u64, _mem: *bgfx_memory) -> bgfx_texture_handle #foreign;
    create_texture_cube                                  : (_size: u16, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format, _flags: u64, _mem: *bgfx_memory) -> bgfx_texture_handle #foreign;
    update_texture_2d                                    : (_handle: bgfx_texture_handle, _layer: u16, _mip: u8, _x: u16, _y: u16, _width: u16, _height: u16, _mem: *bgfx_memory, _pitch: u16) #foreign;
    update_texture_3d                                    : (_handle: bgfx_texture_handle, _mip: u8, _x: u16, _y: u16, _z: u16, _width: u16, _height: u16, _depth: u16, _mem: *bgfx_memory) #foreign;
    update_texture_cube                                  : (_handle: bgfx_texture_handle, _layer: u16, _side: u8, _mip: u8, _x: u16, _y: u16, _width: u16, _height: u16, _mem: *bgfx_memory, _pitch: u16) #foreign;
    read_texture                                         : (_handle: bgfx_texture_handle, _data: *void, _mip: u8) -> u32 #foreign;
    set_texture_name                                     : (_handle: bgfx_texture_handle, _name: *u8, _len: s32) #foreign;
    get_direct_access_ptr                                : (_handle: bgfx_texture_handle) -> *void #foreign;
    destroy_texture                                      : (_handle: bgfx_texture_handle) #foreign;
    create_frame_buffer                                  : (_width: u16, _height: u16, _format: bgfx_texture_format, _textureFlags: u64) -> bgfx_frame_buffer_handle #foreign;
    create_frame_buffer_scaled                           : (_ratio: bgfx_backbuffer_ratio, _format: bgfx_texture_format, _textureFlags: u64) -> bgfx_frame_buffer_handle #foreign;
    create_frame_buffer_from_handles                     : (_num: u8, _handles: *bgfx_texture_handle, _destroyTexture: bool) -> bgfx_frame_buffer_handle #foreign;
    create_frame_buffer_from_attachment                  : (_num: u8, _attachment: *bgfx_attachment, _destroyTexture: bool) -> bgfx_frame_buffer_handle #foreign;
    create_frame_buffer_from_nwh                         : (_nwh: *void, _width: u16, _height: u16, _format: bgfx_texture_format, _depthFormat: bgfx_texture_format) -> bgfx_frame_buffer_handle #foreign;
    set_frame_buffer_name                                : (_handle: bgfx_frame_buffer_handle, _name: *u8, _len: s32) #foreign;
    get_texture                                          : (_handle: bgfx_frame_buffer_handle, _attachment: u8) -> bgfx_texture_handle #foreign;
    destroy_frame_buffer                                 : (_handle: bgfx_frame_buffer_handle) #foreign;
    create_uniform                                       : (_name: *u8, _type: bgfx_uniform_type, _num: u16) -> bgfx_uniform_handle #foreign;
    get_uniform_info                                     : (_handle: bgfx_uniform_handle, _info: *bgfx_uniform_info) #foreign;
    destroy_uniform                                      : (_handle: bgfx_uniform_handle) #foreign;
    create_occlusion_query                               : () -> bgfx_occlusion_query_handle #foreign;
    get_result                                           : (_handle: bgfx_occlusion_query_handle, _result: *s32) -> bgfx_occlusion_query_result #foreign;
    destroy_occlusion_query                              : (_handle: bgfx_occlusion_query_handle) #foreign;
    set_palette_color                                    : (_index: u8, _rgba: [4]float) #foreign;
    set_palette_color_rgba8                              : (_index: u8, _rgba: u32) #foreign;
    set_view_name                                        : (_id: bgfx_view_id, _name: *u8) #foreign;
    set_view_rect                                        : (_id: bgfx_view_id, _x: u16, _y: u16, _width: u16, _height: u16) #foreign;
    set_view_rect_ratio                                  : (_id: bgfx_view_id, _x: u16, _y: u16, _ratio: bgfx_backbuffer_ratio) #foreign;
    set_view_scissor                                     : (_id: bgfx_view_id, _x: u16, _y: u16, _width: u16, _height: u16) #foreign;
    set_view_clear                                       : (_id: bgfx_view_id, _flags: u16, _rgba: u32, _depth: float, _stencil: u8) #foreign;
    set_view_clear_mrt                                   : (_id: bgfx_view_id, _flags: u16, _depth: float, _stencil: u8, _c0: u8, _c1: u8, _c2: u8, _c3: u8, _c4: u8, _c5: u8, _c6: u8, _c7: u8) #foreign;
    set_view_mode                                        : (_id: bgfx_view_id, _mode: bgfx_view_mode) #foreign;
    set_view_frame_buffer                                : (_id: bgfx_view_id, _handle: bgfx_frame_buffer_handle) #foreign;
    set_view_transform                                   : (_id: bgfx_view_id, _view: *void, _proj: *void) #foreign;
    set_view_order                                       : (_id: bgfx_view_id, _num: u16, _order: *bgfx_view_id) #foreign;
    reset_view                                           : (_id: bgfx_view_id) #foreign;
    encoder_begin                                        : (_forThread: bool) -> bgfx_encoder #foreign;
    encoder_end                                          : (_encoder: *bgfx_encoder) #foreign;
    encoder_set_marker                                   : (_this: *bgfx_encoder, _marker: *u8) #foreign;
    encoder_set_state                                    : (_this: *bgfx_encoder, _state: u64, _rgba: u32) #foreign;
    encoder_set_condition                                : (_this: *bgfx_encoder, _handle: bgfx_occlusion_query_handle, _visible: bool) #foreign;
    encoder_set_stencil                                  : (_this: *bgfx_encoder, _fstencil: u32, _bstencil: u32) #foreign;
    encoder_set_scissor                                  : (_this: *bgfx_encoder, _x: u16, _y: u16, _width: u16, _height: u16) -> u16 #foreign;
    encoder_set_scissor_cached                           : (_this: *bgfx_encoder, _cache: u16) #foreign;
    encoder_set_transform                                : (_this: *bgfx_encoder, _mtx: *void, _num: u16) -> u32 #foreign;
    encoder_set_transform_cached                         : (_this: *bgfx_encoder, _cache: u32, _num: u16) #foreign;
    encoder_alloc_transform                              : (_this: *bgfx_encoder, _transform: *bgfx_transform, _num: u16) -> u32 #foreign;
    encoder_set_uniform                                  : (_this: *bgfx_encoder, _handle: bgfx_uniform_handle, _value: *void, _num: u16) #foreign;
    encoder_set_index_buffer                             : (_this: *bgfx_encoder, _handle: bgfx_index_buffer_handle, _firstIndex: u32, _numIndices: u32) #foreign;
    encoder_set_dynamic_index_buffer                     : (_this: *bgfx_encoder, _handle: bgfx_dynamic_index_buffer_handle, _firstIndex: u32, _numIndices: u32) #foreign;
    encoder_set_transient_index_buffer                   : (_this: *bgfx_encoder, _tib: *bgfx_transient_index_buffer, _firstIndex: u32, _numIndices: u32) #foreign;
    encoder_set_vertex_buffer                            : (_this: *bgfx_encoder, _stream: u8, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _numVertices: u32) #foreign;
    encoder_set_vertex_buffer_with_layout                : (_this: *bgfx_encoder, _stream: u8, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign;
    encoder_set_dynamic_vertex_buffer                    : (_this: *bgfx_encoder, _stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _numVertices: u32) #foreign;
    encoder_set_dynamic_vertex_buffer_with_layout        : (_this: *bgfx_encoder, _stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign;
    encoder_set_transient_vertex_buffer                  : (_this: *bgfx_encoder, _stream: u8, _tvb: *bgfx_transient_vertex_buffer, _startVertex: u32, _numVertices: u32) #foreign;
    encoder_set_transient_vertex_buffer_with_layout      : (_this: *bgfx_encoder, _stream: u8, _tvb: *bgfx_transient_vertex_buffer, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign;
    encoder_set_vertex_count                             : (_this: *bgfx_encoder, _numVertices: u32) #foreign;
    encoder_set_instance_data_buffer                     : (_this: *bgfx_encoder, _idb: *bgfx_instance_data_buffer, _start: u32, _num: u32) #foreign;
    encoder_set_instance_data_from_vertex_buffer         : (_this: *bgfx_encoder, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _num: u32) #foreign;
    encoder_set_instance_data_from_dynamic_vertex_buffer : (_this: *bgfx_encoder, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _num: u32) #foreign;
    encoder_set_instance_count                           : (_this: *bgfx_encoder, _numInstances: u32) #foreign;
    encoder_set_texture                                  : (_this: *bgfx_encoder, _stage: u8, _sampler: bgfx_uniform_handle, _handle: bgfx_texture_handle, _flags: u32) #foreign;
    encoder_touch                                        : (_this: *bgfx_encoder, _id: bgfx_view_id) #foreign;
    encoder_submit                                       : (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _depth: u32, _flags: u8) #foreign;
    encoder_submit_occlusion_query                       : (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _occlusionQuery: bgfx_occlusion_query_handle, _depth: u32, _flags: u8) #foreign;
    encoder_submit_indirect                              : (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _indirectHandle: bgfx_indirect_buffer_handle, _start: u16, _num: u16, _depth: u32, _flags: u8) #foreign;
    encoder_set_compute_index_buffer                     : (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_index_buffer_handle, _access: bgfx_access) #foreign;
    encoder_set_compute_vertex_buffer                    : (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_vertex_buffer_handle, _access: bgfx_access) #foreign;
    encoder_set_compute_dynamic_index_buffer             : (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_dynamic_index_buffer_handle, _access: bgfx_access) #foreign;
    encoder_set_compute_dynamic_vertex_buffer            : (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _access: bgfx_access) #foreign;
    encoder_set_compute_indirect_buffer                  : (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_indirect_buffer_handle, _access: bgfx_access) #foreign;
    encoder_set_image                                    : (_this: *bgfx_encoder, _stage: u8, _handle: bgfx_texture_handle, _mip: u8, _access: bgfx_access, _format: bgfx_texture_format) #foreign;
    encoder_dispatch                                     : (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _numX: u32, _numY: u32, _numZ: u32, _flags: u8) #foreign;
    encoder_dispatch_indirect                            : (_this: *bgfx_encoder, _id: bgfx_view_id, _program: bgfx_program_handle, _indirectHandle: bgfx_indirect_buffer_handle, _start: u16, _num: u16, _flags: u8) #foreign;
    encoder_discard                                      : (_this: *bgfx_encoder, _flags: u8) #foreign;
    encoder_blit                                         : (_this: *bgfx_encoder, _id: bgfx_view_id, _dst: bgfx_texture_handle, _dstMip: u8, _dstX: u16, _dstY: u16, _dstZ: u16, _src: bgfx_texture_handle, _srcMip: u8, _srcX: u16, _srcY: u16, _srcZ: u16, _width: u16, _height: u16, _depth: u16) #foreign;
    request_screen_shot                                  : (_handle: bgfx_frame_buffer_handle, _filePath: *u8) #foreign;
    render_frame                                         : (_msecs: s32) -> bgfx_render_frame #foreign;
    set_platform_data                                    : (_data: *bgfx_platform_data) #foreign;
    get_internal_data                                    : () -> *bgfx_internal_data #foreign;
    override_internal_texture_ptr                        : (_handle: bgfx_texture_handle, _ptr: u64) -> u64 #foreign;
    override_internal_texture                            : (_handle: bgfx_texture_handle, _width: u16, _height: u16, _numMips: u8, _format: bgfx_texture_format, _flags: u64) -> u64 #foreign;
    set_marker                                           : (_marker: *u8) #foreign;
    set_state                                            : (_state: u64, _rgba: u32) #foreign;
    set_condition                                        : (_handle: bgfx_occlusion_query_handle, _visible: bool) #foreign;
    set_stencil                                          : (_fstencil: u32, _bstencil: u32) #foreign;
    set_scissor                                          : (_x: u16, _y: u16, _width: u16, _height: u16) -> u16 #foreign;
    set_scissor_cached                                   : (_cache: u16) #foreign;
    set_transform                                        : ( _mtx: *void, _num: u16) -> u32 #foreign;
    set_transform_cached                                 : (_cache: u32, _num: u16) #foreign;
    alloc_transform                                      : (_transform: *bgfx_transform, _num: u16) -> u32 #foreign;
    set_uniform                                          : (_handle: bgfx_uniform_handle, _value: *void, _num: u16) #foreign;
    set_index_buffer                                     : (_handle: bgfx_index_buffer_handle, _firstIndex: u32, _numIndices: u32) #foreign;
    set_dynamic_index_buffer                             : (_handle: bgfx_dynamic_index_buffer_handle, _firstIndex: u32, _numIndices: u32) #foreign;
    set_transient_index_buffer                           : (_tib: *bgfx_transient_index_buffer, _firstIndex: u32, _numIndices: u32) #foreign;
    set_vertex_buffer                                    : (_stream: u8, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _numVertices: u32) #foreign;
    set_vertex_buffer_with_layout                        : (_stream: u8, _handle: bgfx_vertex_buffer_handle, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign;
    set_dynamic_vertex_buffer                            : (_stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _numVertices: u32) #foreign;
    set_dynamic_vertex_buffer_with_layout                : (_stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign;
    set_transient_vertex_buffer                          : (_stream: u8, _tvb: *bgfx_transient_vertex_buffer, _startVertex: u32, _numVertices: u32) #foreign;
    set_transient_vertex_buffer_with_layout              : (_stream: u8, _tvb: *bgfx_transient_vertex_buffer, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle) #foreign;
    set_vertex_count                                     : (_numVertices: u32) #foreign;
    set_instance_data_buffer                             : ( _idb: *bgfx_instance_data_buffer, _start: u32, _num: u32) #foreign;
    set_instance_data_from_vertex_buffer                 : (_handle: bgfx_vertex_buffer_handle, _startVertex: u32, _num: u32) #foreign;
    set_instance_data_from_dynamic_vertex_buffer         : (_handle: bgfx_dynamic_vertex_buffer_handle, _startVertex: u32, _num: u32) #foreign;
    set_instance_count                                   : (_numInstances: u32) #foreign;
    set_texture                                          : (_stage: u8, _sampler: bgfx_uniform_handle, _handle: bgfx_texture_handle, _flags: u32) #foreign;
    touch                                                : (_id: bgfx_view_id) #foreign;
    submit                                               : (_id: bgfx_view_id, _program: bgfx_program_handle, _depth: u32, _flags: u8) #foreign;
    submit_occlusion_query                               : (_id: bgfx_view_id, _program: bgfx_program_handle, _occlusionQuery: bgfx_occlusion_query_handle, _depth: u32, _flags: u8) #foreign;
    submit_indirect                                      : (_id: bgfx_view_id, _program: bgfx_program_handle, _indirectHandle: bgfx_indirect_buffer_handle, _start: u16, _num: u16, _depth: u32, _flags: u8) #foreign;
    set_compute_index_buffer                             : (_stage: u8, _handle: bgfx_index_buffer_handle, _access: bgfx_access) #foreign;
    set_compute_vertex_buffer                            : (_stage: u8, _handle: bgfx_vertex_buffer_handle, _access: bgfx_access) #foreign;
    set_compute_dynamic_index_buffer                     : (_stage: u8, _handle: bgfx_dynamic_index_buffer_handle, _access: bgfx_access) #foreign;
    set_compute_dynamic_vertex_buffer                    : (_stage: u8, _handle: bgfx_dynamic_vertex_buffer_handle, _access: bgfx_access) #foreign;
    set_compute_indirect_buffer                          : (_stage: u8, _handle: bgfx_indirect_buffer_handle, _access: bgfx_access) #foreign;
    set_image                                            : (_stage: u8, _handle: bgfx_texture_handle, _mip: u8, _access: bgfx_access, _format: bgfx_texture_format) #foreign;
    dispatch                                             : (_id: bgfx_view_id, _program: bgfx_program_handle, _numX: u32, _numY: u32, _numZ: u32, _flags: u8) #foreign;
    dispatch_indirect                                    : (_id: bgfx_view_id, _program: bgfx_program_handle, _indirectHandle: bgfx_indirect_buffer_handle, _start: u16, _num: u16, _flags: u8) #foreign;
    discard                                              : (_flags: u8) #foreign;
    blit                                                 : (_id: bgfx_view_id, _dst: bgfx_texture_handle, _dstMip: u8, _dstX: u16, _dstY: u16, _dstZ: u16, _src: bgfx_texture_handle, _srcMip: u8, _srcX: u16, _srcY: u16, _srcZ: u16, _width: u16, _height: u16, _depth: u16) #foreign;
};






// #define BGFX_API_VERSION UINT32_C(114)

// /**
//  * Color RGB/alpha/depth write. When it's not specified write will be disabled.
//  *
//  */
// #define BGFX_STATE_WRITE_R                        UINT64_C(0x0000000000000001) //!< Enable R write.
// #define BGFX_STATE_WRITE_G                        UINT64_C(0x0000000000000002) //!< Enable G write.
// #define BGFX_STATE_WRITE_B                        UINT64_C(0x0000000000000004) //!< Enable B write.
// #define BGFX_STATE_WRITE_A                        UINT64_C(0x0000000000000008) //!< Enable alpha write.
// #define BGFX_STATE_WRITE_Z                        UINT64_C(0x0000004000000000) //!< Enable depth write.
// /// Enable RGB write.
// #define BGFX_STATE_WRITE_RGB (0 \
//     | BGFX_STATE_WRITE_R \
//     | BGFX_STATE_WRITE_G \
//     | BGFX_STATE_WRITE_B \
//     )

// /// Write all channels mask.
// #define BGFX_STATE_WRITE_MASK (0 \
//     | BGFX_STATE_WRITE_RGB \
//     | BGFX_STATE_WRITE_A \
//     | BGFX_STATE_WRITE_Z \
//     )


// /**
//  * Depth test state. When `BGFX_STATE_DEPTH_` is not specified depth test will be disabled.
//  *
//  */
// #define BGFX_STATE_DEPTH_TEST_LESS                UINT64_C(0x0000000000000010) //!< Enable depth test, less.
// #define BGFX_STATE_DEPTH_TEST_LEQUAL              UINT64_C(0x0000000000000020) //!< Enable depth test, less or equal.
// #define BGFX_STATE_DEPTH_TEST_EQUAL               UINT64_C(0x0000000000000030) //!< Enable depth test, equal.
// #define BGFX_STATE_DEPTH_TEST_GEQUAL              UINT64_C(0x0000000000000040) //!< Enable depth test, greater or equal.
// #define BGFX_STATE_DEPTH_TEST_GREATER             UINT64_C(0x0000000000000050) //!< Enable depth test, greater.
// #define BGFX_STATE_DEPTH_TEST_NOTEQUAL            UINT64_C(0x0000000000000060) //!< Enable depth test, not equal.
// #define BGFX_STATE_DEPTH_TEST_NEVER               UINT64_C(0x0000000000000070) //!< Enable depth test, never.
// #define BGFX_STATE_DEPTH_TEST_ALWAYS              UINT64_C(0x0000000000000080) //!< Enable depth test, always.
// #define BGFX_STATE_DEPTH_TEST_SHIFT               4                            //!< Depth test state bit shift
// #define BGFX_STATE_DEPTH_TEST_MASK                UINT64_C(0x00000000000000f0) //!< Depth test state bit mask

// /**
//  * Use BGFX_STATE_BLEND_FUNC(_src, _dst) or BGFX_STATE_BLEND_FUNC_SEPARATE(_srcRGB, _dstRGB, _srcA, _dstA)
//  * helper macros.
//  *
//  */
// #define BGFX_STATE_BLEND_ZERO                     UINT64_C(0x0000000000001000) //!< 0, 0, 0, 0
// #define BGFX_STATE_BLEND_ONE                      UINT64_C(0x0000000000002000) //!< 1, 1, 1, 1
// #define BGFX_STATE_BLEND_SRC_COLOR                UINT64_C(0x0000000000003000) //!< Rs, Gs, Bs, As
// #define BGFX_STATE_BLEND_INV_SRC_COLOR            UINT64_C(0x0000000000004000) //!< 1-Rs, 1-Gs, 1-Bs, 1-As
// #define BGFX_STATE_BLEND_SRC_ALPHA                UINT64_C(0x0000000000005000) //!< As, As, As, As
// #define BGFX_STATE_BLEND_INV_SRC_ALPHA            UINT64_C(0x0000000000006000) //!< 1-As, 1-As, 1-As, 1-As
// #define BGFX_STATE_BLEND_DST_ALPHA                UINT64_C(0x0000000000007000) //!< Ad, Ad, Ad, Ad
// #define BGFX_STATE_BLEND_INV_DST_ALPHA            UINT64_C(0x0000000000008000) //!< 1-Ad, 1-Ad, 1-Ad ,1-Ad
// #define BGFX_STATE_BLEND_DST_COLOR                UINT64_C(0x0000000000009000) //!< Rd, Gd, Bd, Ad
// #define BGFX_STATE_BLEND_INV_DST_COLOR            UINT64_C(0x000000000000a000) //!< 1-Rd, 1-Gd, 1-Bd, 1-Ad
// #define BGFX_STATE_BLEND_SRC_ALPHA_SAT            UINT64_C(0x000000000000b000) //!< f, f, f, 1; f = min(As, 1-Ad)
// #define BGFX_STATE_BLEND_FACTOR                   UINT64_C(0x000000000000c000) //!< Blend factor
// #define BGFX_STATE_BLEND_INV_FACTOR               UINT64_C(0x000000000000d000) //!< 1-Blend factor
// #define BGFX_STATE_BLEND_SHIFT                    12                           //!< Blend state bit shift
// #define BGFX_STATE_BLEND_MASK                     UINT64_C(0x000000000ffff000) //!< Blend state bit mask

// /**
//  * Use BGFX_STATE_BLEND_EQUATION(_equation) or BGFX_STATE_BLEND_EQUATION_SEPARATE(_equationRGB, _equationA)
//  * helper macros.
//  *
//  */
// #define BGFX_STATE_BLEND_EQUATION_ADD             UINT64_C(0x0000000000000000) //!< Blend add: src + dst.
// #define BGFX_STATE_BLEND_EQUATION_SUB             UINT64_C(0x0000000010000000) //!< Blend subtract: src - dst.
// #define BGFX_STATE_BLEND_EQUATION_REVSUB          UINT64_C(0x0000000020000000) //!< Blend reverse subtract: dst - src.
// #define BGFX_STATE_BLEND_EQUATION_MIN             UINT64_C(0x0000000030000000) //!< Blend min: min(src, dst).
// #define BGFX_STATE_BLEND_EQUATION_MAX             UINT64_C(0x0000000040000000) //!< Blend max: max(src, dst).
// #define BGFX_STATE_BLEND_EQUATION_SHIFT           28                           //!< Blend equation bit shift
// #define BGFX_STATE_BLEND_EQUATION_MASK            UINT64_C(0x00000003f0000000) //!< Blend equation bit mask

// /**
//  * Cull state. When `BGFX_STATE_CULL_*` is not specified culling will be disabled.
//  *
//  */
// #define BGFX_STATE_CULL_CW                        UINT64_C(0x0000001000000000) //!< Cull clockwise triangles.
// #define BGFX_STATE_CULL_CCW                       UINT64_C(0x0000002000000000) //!< Cull counter-clockwise triangles.
// #define BGFX_STATE_CULL_SHIFT                     36                           //!< Culling mode bit shift
// #define BGFX_STATE_CULL_MASK                      UINT64_C(0x0000003000000000) //!< Culling mode bit mask

// /**
//  * Alpha reference value.
//  *
//  */
// #define BGFX_STATE_ALPHA_REF_SHIFT                40                           //!< Alpha reference bit shift
// #define BGFX_STATE_ALPHA_REF_MASK                 UINT64_C(0x0000ff0000000000) //!< Alpha reference bit mask
// #define BGFX_STATE_ALPHA_REF(v) ( ( (uint64_t)(v)<<BGFX_STATE_ALPHA_REF_SHIFT )&BGFX_STATE_ALPHA_REF_MASK)

// #define BGFX_STATE_PT_TRISTRIP                    UINT64_C(0x0001000000000000) //!< Tristrip.
// #define BGFX_STATE_PT_LINES                       UINT64_C(0x0002000000000000) //!< Lines.
// #define BGFX_STATE_PT_LINESTRIP                   UINT64_C(0x0003000000000000) //!< Line strip.
// #define BGFX_STATE_PT_POINTS                      UINT64_C(0x0004000000000000) //!< Points.
// #define BGFX_STATE_PT_SHIFT                       48                           //!< Primitive type bit shift
// #define BGFX_STATE_PT_MASK                        UINT64_C(0x0007000000000000) //!< Primitive type bit mask

// /**
//  * Point size value.
//  *
//  */
// #define BGFX_STATE_POINT_SIZE_SHIFT               52                           //!< Point size bit shift
// #define BGFX_STATE_POINT_SIZE_MASK                UINT64_C(0x00f0000000000000) //!< Point size bit mask
// #define BGFX_STATE_POINT_SIZE(v) ( ( (uint64_t)(v)<<BGFX_STATE_POINT_SIZE_SHIFT )&BGFX_STATE_POINT_SIZE_MASK)

// /**
//  * Enable MSAA write when writing into MSAA frame buffer.
//  * This flag is ignored when not writing into MSAA frame buffer.
//  *
//  */
// #define BGFX_STATE_MSAA                           UINT64_C(0x0100000000000000) //!< Enable MSAA rasterization.
// #define BGFX_STATE_LINEAA                         UINT64_C(0x0200000000000000) //!< Enable line AA rasterization.
// #define BGFX_STATE_CONSERVATIVE_RASTER            UINT64_C(0x0400000000000000) //!< Enable conservative rasterization.
// #define BGFX_STATE_NONE                           UINT64_C(0x0000000000000000) //!< No state.
// #define BGFX_STATE_FRONT_CCW                      UINT64_C(0x0000008000000000) //!< Front counter-clockwise (default is clockwise).
// #define BGFX_STATE_BLEND_INDEPENDENT              UINT64_C(0x0000000400000000) //!< Enable blend independent.
// #define BGFX_STATE_BLEND_ALPHA_TO_COVERAGE        UINT64_C(0x0000000800000000) //!< Enable alpha to coverage.
// /// Default state is write to RGB, alpha, and depth with depth test less enabled, with clockwise
// /// culling and MSAA (when writing into MSAA frame buffer, otherwise this flag is ignored).
// #define BGFX_STATE_DEFAULT (0 \
//     | BGFX_STATE_WRITE_RGB \
//     | BGFX_STATE_WRITE_A \
//     | BGFX_STATE_WRITE_Z \
//     | BGFX_STATE_DEPTH_TEST_LESS \
//     | BGFX_STATE_CULL_CW \
//     | BGFX_STATE_MSAA \
//     )

// #define BGFX_STATE_MASK                           UINT64_C(0xffffffffffffffff) //!< State bit mask

// /**
//  * Do not use!
//  *
//  */
// #define BGFX_STATE_RESERVED_SHIFT                 61

// #define BGFX_STATE_RESERVED_MASK                  UINT64_C(0xe000000000000000)

// /**
//  * Set stencil ref value.
//  *
//  */
// #define BGFX_STENCIL_FUNC_REF_SHIFT               0

// #define BGFX_STENCIL_FUNC_REF_MASK                UINT32_C(0x000000ff)
// #define BGFX_STENCIL_FUNC_REF(v) ( ( (uint32_t)(v)<<BGFX_STENCIL_FUNC_REF_SHIFT )&BGFX_STENCIL_FUNC_REF_MASK)

// /**
//  * Set stencil rmask value.
//  *
//  */
// #define BGFX_STENCIL_FUNC_RMASK_SHIFT             8

// #define BGFX_STENCIL_FUNC_RMASK_MASK              UINT32_C(0x0000ff00)
// #define BGFX_STENCIL_FUNC_RMASK(v) ( ( (uint32_t)(v)<<BGFX_STENCIL_FUNC_RMASK_SHIFT )&BGFX_STENCIL_FUNC_RMASK_MASK)

// #define BGFX_STENCIL_NONE                         UINT32_C(0x00000000)
// #define BGFX_STENCIL_MASK                         UINT32_C(0xffffffff)
// #define BGFX_STENCIL_DEFAULT                      UINT32_C(0x00000000)

// #define BGFX_STENCIL_TEST_LESS                    UINT32_C(0x00010000) //!< Enable stencil test, less.
// #define BGFX_STENCIL_TEST_LEQUAL                  UINT32_C(0x00020000) //!< Enable stencil test, less or equal.
// #define BGFX_STENCIL_TEST_EQUAL                   UINT32_C(0x00030000) //!< Enable stencil test, equal.
// #define BGFX_STENCIL_TEST_GEQUAL                  UINT32_C(0x00040000) //!< Enable stencil test, greater or equal.
// #define BGFX_STENCIL_TEST_GREATER                 UINT32_C(0x00050000) //!< Enable stencil test, greater.
// #define BGFX_STENCIL_TEST_NOTEQUAL                UINT32_C(0x00060000) //!< Enable stencil test, not equal.
// #define BGFX_STENCIL_TEST_NEVER                   UINT32_C(0x00070000) //!< Enable stencil test, never.
// #define BGFX_STENCIL_TEST_ALWAYS                  UINT32_C(0x00080000) //!< Enable stencil test, always.
// #define BGFX_STENCIL_TEST_SHIFT                   16                   //!< Stencil test bit shift
// #define BGFX_STENCIL_TEST_MASK                    UINT32_C(0x000f0000) //!< Stencil test bit mask

// #define BGFX_STENCIL_OP_FAIL_S_ZERO               UINT32_C(0x00000000) //!< Zero.
// #define BGFX_STENCIL_OP_FAIL_S_KEEP               UINT32_C(0x00100000) //!< Keep.
// #define BGFX_STENCIL_OP_FAIL_S_REPLACE            UINT32_C(0x00200000) //!< Replace.
// #define BGFX_STENCIL_OP_FAIL_S_INCR               UINT32_C(0x00300000) //!< Increment and wrap.
// #define BGFX_STENCIL_OP_FAIL_S_INCRSAT            UINT32_C(0x00400000) //!< Increment and clamp.
// #define BGFX_STENCIL_OP_FAIL_S_DECR               UINT32_C(0x00500000) //!< Decrement and wrap.
// #define BGFX_STENCIL_OP_FAIL_S_DECRSAT            UINT32_C(0x00600000) //!< Decrement and clamp.
// #define BGFX_STENCIL_OP_FAIL_S_INVERT             UINT32_C(0x00700000) //!< Invert.
// #define BGFX_STENCIL_OP_FAIL_S_SHIFT              20                   //!< Stencil operation fail bit shift
// #define BGFX_STENCIL_OP_FAIL_S_MASK               UINT32_C(0x00f00000) //!< Stencil operation fail bit mask

// #define BGFX_STENCIL_OP_FAIL_Z_ZERO               UINT32_C(0x00000000) //!< Zero.
// #define BGFX_STENCIL_OP_FAIL_Z_KEEP               UINT32_C(0x01000000) //!< Keep.
// #define BGFX_STENCIL_OP_FAIL_Z_REPLACE            UINT32_C(0x02000000) //!< Replace.
// #define BGFX_STENCIL_OP_FAIL_Z_INCR               UINT32_C(0x03000000) //!< Increment and wrap.
// #define BGFX_STENCIL_OP_FAIL_Z_INCRSAT            UINT32_C(0x04000000) //!< Increment and clamp.
// #define BGFX_STENCIL_OP_FAIL_Z_DECR               UINT32_C(0x05000000) //!< Decrement and wrap.
// #define BGFX_STENCIL_OP_FAIL_Z_DECRSAT            UINT32_C(0x06000000) //!< Decrement and clamp.
// #define BGFX_STENCIL_OP_FAIL_Z_INVERT             UINT32_C(0x07000000) //!< Invert.
// #define BGFX_STENCIL_OP_FAIL_Z_SHIFT              24                   //!< Stencil operation depth fail bit shift
// #define BGFX_STENCIL_OP_FAIL_Z_MASK               UINT32_C(0x0f000000) //!< Stencil operation depth fail bit mask

// #define BGFX_STENCIL_OP_PASS_Z_ZERO               UINT32_C(0x00000000) //!< Zero.
// #define BGFX_STENCIL_OP_PASS_Z_KEEP               UINT32_C(0x10000000) //!< Keep.
// #define BGFX_STENCIL_OP_PASS_Z_REPLACE            UINT32_C(0x20000000) //!< Replace.
// #define BGFX_STENCIL_OP_PASS_Z_INCR               UINT32_C(0x30000000) //!< Increment and wrap.
// #define BGFX_STENCIL_OP_PASS_Z_INCRSAT            UINT32_C(0x40000000) //!< Increment and clamp.
// #define BGFX_STENCIL_OP_PASS_Z_DECR               UINT32_C(0x50000000) //!< Decrement and wrap.
// #define BGFX_STENCIL_OP_PASS_Z_DECRSAT            UINT32_C(0x60000000) //!< Decrement and clamp.
// #define BGFX_STENCIL_OP_PASS_Z_INVERT             UINT32_C(0x70000000) //!< Invert.
// #define BGFX_STENCIL_OP_PASS_Z_SHIFT              28                   //!< Stencil operation depth pass bit shift
// #define BGFX_STENCIL_OP_PASS_Z_MASK               UINT32_C(0xf0000000) //!< Stencil operation depth pass bit mask

BGFX_CLEAR_NONE            :: 0x0000; //!< No clear flags.
BGFX_CLEAR_COLOR           :: 0x0001; //!< Clear color.
BGFX_CLEAR_DEPTH           :: 0x0002; //!< Clear depth.
BGFX_CLEAR_STENCIL         :: 0x0004; //!< Clear stencil.
BGFX_CLEAR_DISCARD_COLOR_0 :: 0x0008; //!< Discard frame buffer attachment 0.
BGFX_CLEAR_DISCARD_COLOR_1 :: 0x0010; //!< Discard frame buffer attachment 1.
BGFX_CLEAR_DISCARD_COLOR_2 :: 0x0020; //!< Discard frame buffer attachment 2.
BGFX_CLEAR_DISCARD_COLOR_3 :: 0x0040; //!< Discard frame buffer attachment 3.
BGFX_CLEAR_DISCARD_COLOR_4 :: 0x0080; //!< Discard frame buffer attachment 4.
BGFX_CLEAR_DISCARD_COLOR_5 :: 0x0100; //!< Discard frame buffer attachment 5.
BGFX_CLEAR_DISCARD_COLOR_6 :: 0x0200; //!< Discard frame buffer attachment 6.
BGFX_CLEAR_DISCARD_COLOR_7 :: 0x0400; //!< Discard frame buffer attachment 7.
BGFX_CLEAR_DISCARD_DEPTH   :: 0x0800; //!< Discard frame buffer depth attachment.
BGFX_CLEAR_DISCARD_STENCIL :: 0x1000; //!< Discard frame buffer stencil attachment.
// #define BGFX_CLEAR_DISCARD_COLOR_MASK (0 \
//     | BGFX_CLEAR_DISCARD_COLOR_0 \
//     | BGFX_CLEAR_DISCARD_COLOR_1 \
//     | BGFX_CLEAR_DISCARD_COLOR_2 \
//     | BGFX_CLEAR_DISCARD_COLOR_3 \
//     | BGFX_CLEAR_DISCARD_COLOR_4 \
//     | BGFX_CLEAR_DISCARD_COLOR_5 \
//     | BGFX_CLEAR_DISCARD_COLOR_6 \
//     | BGFX_CLEAR_DISCARD_COLOR_7 \
//     )

// #define BGFX_CLEAR_DISCARD_MASK (0 \
//     | BGFX_CLEAR_DISCARD_COLOR_MASK \
//     | BGFX_CLEAR_DISCARD_DEPTH \
//     | BGFX_CLEAR_DISCARD_STENCIL \
//     )


// /**
//  * Rendering state discard. When state is preserved in submit, rendering states can be discarded
//  * on a finer grain.
//  *
//  */
// #define BGFX_DISCARD_NONE                         UINT8_C(0x00) //!< Preserve everything.
// #define BGFX_DISCARD_BINDINGS                     UINT8_C(0x01) //!< Discard texture sampler and buffer bindings.
// #define BGFX_DISCARD_INDEX_BUFFER                 UINT8_C(0x02) //!< Discard index buffer.
// #define BGFX_DISCARD_INSTANCE_DATA                UINT8_C(0x04) //!< Discard instance data.
// #define BGFX_DISCARD_STATE                        UINT8_C(0x08) //!< Discard state and uniform bindings.
// #define BGFX_DISCARD_TRANSFORM                    UINT8_C(0x10) //!< Discard transform.
// #define BGFX_DISCARD_VERTEX_STREAMS               UINT8_C(0x20) //!< Discard vertex streams.
// #define BGFX_DISCARD_ALL                          UINT8_C(0xff) //!< Discard all states.

// #define BGFX_DEBUG_NONE                           UINT32_C(0x00000000) //!< No debug.
// #define BGFX_DEBUG_WIREFRAME                      UINT32_C(0x00000001) //!< Enable wireframe for all primitives.

// /// Enable infinitely fast hardware test. No draw calls will be submitted to driver.
// /// It's useful when profiling to quickly assess bottleneck between CPU and GPU.
BGFX_DEBUG_IFH      ::0x00000002;
BGFX_DEBUG_STATS    ::0x00000004; //!< Enable statistics display.
BGFX_DEBUG_TEXT     ::0x00000008; //!< Enable debug text display.
BGFX_DEBUG_PROFILER ::0x00000010; //!< Enable profiler.

// #define BGFX_BUFFER_COMPUTE_FORMAT_8X1            UINT16_C(0x0001) //!< 1 8-bit value
// #define BGFX_BUFFER_COMPUTE_FORMAT_8X2            UINT16_C(0x0002) //!< 2 8-bit values
// #define BGFX_BUFFER_COMPUTE_FORMAT_8X4            UINT16_C(0x0003) //!< 4 8-bit values
// #define BGFX_BUFFER_COMPUTE_FORMAT_16X1           UINT16_C(0x0004) //!< 1 16-bit value
// #define BGFX_BUFFER_COMPUTE_FORMAT_16X2           UINT16_C(0x0005) //!< 2 16-bit values
// #define BGFX_BUFFER_COMPUTE_FORMAT_16X4           UINT16_C(0x0006) //!< 4 16-bit values
// #define BGFX_BUFFER_COMPUTE_FORMAT_32X1           UINT16_C(0x0007) //!< 1 32-bit value
// #define BGFX_BUFFER_COMPUTE_FORMAT_32X2           UINT16_C(0x0008) //!< 2 32-bit values
// #define BGFX_BUFFER_COMPUTE_FORMAT_32X4           UINT16_C(0x0009) //!< 4 32-bit values
// #define BGFX_BUFFER_COMPUTE_FORMAT_SHIFT          0

// #define BGFX_BUFFER_COMPUTE_FORMAT_MASK           UINT16_C(0x000f)

// #define BGFX_BUFFER_COMPUTE_TYPE_INT              UINT16_C(0x0010) //!< Type `int`.
// #define BGFX_BUFFER_COMPUTE_TYPE_UINT             UINT16_C(0x0020) //!< Type `uint`.
// #define BGFX_BUFFER_COMPUTE_TYPE_FLOAT            UINT16_C(0x0030) //!< Type `float`.
// #define BGFX_BUFFER_COMPUTE_TYPE_SHIFT            4

// #define BGFX_BUFFER_COMPUTE_TYPE_MASK             UINT16_C(0x0030)

// #define BGFX_BUFFER_NONE                          UINT16_C(0x0000)
// #define BGFX_BUFFER_COMPUTE_READ                  UINT16_C(0x0100) //!< Buffer will be read by shader.
// #define BGFX_BUFFER_COMPUTE_WRITE                 UINT16_C(0x0200) //!< Buffer will be used for writing.
// #define BGFX_BUFFER_DRAW_INDIRECT                 UINT16_C(0x0400) //!< Buffer will be used for storing draw indirect commands.
// #define BGFX_BUFFER_ALLOW_RESIZE                  UINT16_C(0x0800) //!< Allow dynamic index/vertex buffer resize during update.
// #define BGFX_BUFFER_INDEX32                       UINT16_C(0x1000) //!< Index buffer contains 32-bit indices.
// #define BGFX_BUFFER_COMPUTE_READ_WRITE (0 \
//     | BGFX_BUFFER_COMPUTE_READ \
//     | BGFX_BUFFER_COMPUTE_WRITE \
//     )


// #define BGFX_TEXTURE_NONE                         UINT64_C(0x0000000000000000)
// #define BGFX_TEXTURE_MSAA_SAMPLE                  UINT64_C(0x0000000800000000) //!< Texture will be used for MSAA sampling.
// #define BGFX_TEXTURE_RT                           UINT64_C(0x0000001000000000) //!< Render target no MSAA.
// #define BGFX_TEXTURE_COMPUTE_WRITE                UINT64_C(0x0000100000000000) //!< Texture will be used for compute write.
// #define BGFX_TEXTURE_SRGB                         UINT64_C(0x0000200000000000) //!< Sample texture as sRGB.
// #define BGFX_TEXTURE_BLIT_DST                     UINT64_C(0x0000400000000000) //!< Texture will be used as blit destination.
// #define BGFX_TEXTURE_READ_BACK                    UINT64_C(0x0000800000000000) //!< Texture will be used for read back from GPU.

// #define BGFX_TEXTURE_RT_MSAA_X2                   UINT64_C(0x0000002000000000) //!< Render target MSAAx2 mode.
// #define BGFX_TEXTURE_RT_MSAA_X4                   UINT64_C(0x0000003000000000) //!< Render target MSAAx4 mode.
// #define BGFX_TEXTURE_RT_MSAA_X8                   UINT64_C(0x0000004000000000) //!< Render target MSAAx8 mode.
// #define BGFX_TEXTURE_RT_MSAA_X16                  UINT64_C(0x0000005000000000) //!< Render target MSAAx16 mode.
// #define BGFX_TEXTURE_RT_MSAA_SHIFT                36

// #define BGFX_TEXTURE_RT_MSAA_MASK                 UINT64_C(0x0000007000000000)

// #define BGFX_TEXTURE_RT_WRITE_ONLY                UINT64_C(0x0000008000000000) //!< Render target will be used for writing
// #define BGFX_TEXTURE_RT_SHIFT                     36

// #define BGFX_TEXTURE_RT_MASK                      UINT64_C(0x000000f000000000)

// /**
//  * Sampler flags.
//  *
//  */
// #define BGFX_SAMPLER_U_MIRROR                     UINT32_C(0x00000001) //!< Wrap U mode: Mirror
// #define BGFX_SAMPLER_U_CLAMP                      UINT32_C(0x00000002) //!< Wrap U mode: Clamp
// #define BGFX_SAMPLER_U_BORDER                     UINT32_C(0x00000003) //!< Wrap U mode: Border
// #define BGFX_SAMPLER_U_SHIFT                      0

// #define BGFX_SAMPLER_U_MASK                       UINT32_C(0x00000003)

// #define BGFX_SAMPLER_V_MIRROR                     UINT32_C(0x00000004) //!< Wrap V mode: Mirror
// #define BGFX_SAMPLER_V_CLAMP                      UINT32_C(0x00000008) //!< Wrap V mode: Clamp
// #define BGFX_SAMPLER_V_BORDER                     UINT32_C(0x0000000c) //!< Wrap V mode: Border
// #define BGFX_SAMPLER_V_SHIFT                      2

// #define BGFX_SAMPLER_V_MASK                       UINT32_C(0x0000000c)

// #define BGFX_SAMPLER_W_MIRROR                     UINT32_C(0x00000010) //!< Wrap W mode: Mirror
// #define BGFX_SAMPLER_W_CLAMP                      UINT32_C(0x00000020) //!< Wrap W mode: Clamp
// #define BGFX_SAMPLER_W_BORDER                     UINT32_C(0x00000030) //!< Wrap W mode: Border
// #define BGFX_SAMPLER_W_SHIFT                      4

// #define BGFX_SAMPLER_W_MASK                       UINT32_C(0x00000030)

// #define BGFX_SAMPLER_MIN_POINT                    UINT32_C(0x00000040) //!< Min sampling mode: Point
// #define BGFX_SAMPLER_MIN_ANISOTROPIC              UINT32_C(0x00000080) //!< Min sampling mode: Anisotropic
// #define BGFX_SAMPLER_MIN_SHIFT                    6

// #define BGFX_SAMPLER_MIN_MASK                     UINT32_C(0x000000c0)

// #define BGFX_SAMPLER_MAG_POINT                    UINT32_C(0x00000100) //!< Mag sampling mode: Point
// #define BGFX_SAMPLER_MAG_ANISOTROPIC              UINT32_C(0x00000200) //!< Mag sampling mode: Anisotropic
// #define BGFX_SAMPLER_MAG_SHIFT                    8

// #define BGFX_SAMPLER_MAG_MASK                     UINT32_C(0x00000300)

// #define BGFX_SAMPLER_MIP_POINT                    UINT32_C(0x00000400) //!< Mip sampling mode: Point
// #define BGFX_SAMPLER_MIP_SHIFT                    10

// #define BGFX_SAMPLER_MIP_MASK                     UINT32_C(0x00000400)

// #define BGFX_SAMPLER_COMPARE_LESS                 UINT32_C(0x00010000) //!< Compare when sampling depth texture: less.
// #define BGFX_SAMPLER_COMPARE_LEQUAL               UINT32_C(0x00020000) //!< Compare when sampling depth texture: less or equal.
// #define BGFX_SAMPLER_COMPARE_EQUAL                UINT32_C(0x00030000) //!< Compare when sampling depth texture: equal.
// #define BGFX_SAMPLER_COMPARE_GEQUAL               UINT32_C(0x00040000) //!< Compare when sampling depth texture: greater or equal.
// #define BGFX_SAMPLER_COMPARE_GREATER              UINT32_C(0x00050000) //!< Compare when sampling depth texture: greater.
// #define BGFX_SAMPLER_COMPARE_NOTEQUAL             UINT32_C(0x00060000) //!< Compare when sampling depth texture: not equal.
// #define BGFX_SAMPLER_COMPARE_NEVER                UINT32_C(0x00070000) //!< Compare when sampling depth texture: never.
// #define BGFX_SAMPLER_COMPARE_ALWAYS               UINT32_C(0x00080000) //!< Compare when sampling depth texture: always.
// #define BGFX_SAMPLER_COMPARE_SHIFT                16

// #define BGFX_SAMPLER_COMPARE_MASK                 UINT32_C(0x000f0000)

// #define BGFX_SAMPLER_BORDER_COLOR_SHIFT           24

// #define BGFX_SAMPLER_BORDER_COLOR_MASK            UINT32_C(0x0f000000)
// #define BGFX_SAMPLER_BORDER_COLOR(v) ( ( (uint32_t)(v)<<BGFX_SAMPLER_BORDER_COLOR_SHIFT )&BGFX_SAMPLER_BORDER_COLOR_MASK)

// #define BGFX_SAMPLER_RESERVED_SHIFT               28

// #define BGFX_SAMPLER_RESERVED_MASK                UINT32_C(0xf0000000)

// #define BGFX_SAMPLER_NONE                         UINT32_C(0x00000000)
// #define BGFX_SAMPLER_SAMPLE_STENCIL               UINT32_C(0x00100000) //!< Sample stencil instead of depth.
// #define BGFX_SAMPLER_POINT (0 \
//     | BGFX_SAMPLER_MIN_POINT \
//     | BGFX_SAMPLER_MAG_POINT \
//     | BGFX_SAMPLER_MIP_POINT \
//     )

// #define BGFX_SAMPLER_UVW_MIRROR (0 \
//     | BGFX_SAMPLER_U_MIRROR \
//     | BGFX_SAMPLER_V_MIRROR \
//     | BGFX_SAMPLER_W_MIRROR \
//     )

// #define BGFX_SAMPLER_UVW_CLAMP (0 \
//     | BGFX_SAMPLER_U_CLAMP \
//     | BGFX_SAMPLER_V_CLAMP \
//     | BGFX_SAMPLER_W_CLAMP \
//     )

// #define BGFX_SAMPLER_UVW_BORDER (0 \
//     | BGFX_SAMPLER_U_BORDER \
//     | BGFX_SAMPLER_V_BORDER \
//     | BGFX_SAMPLER_W_BORDER \
//     )

// #define BGFX_SAMPLER_BITS_MASK (0 \
//     | BGFX_SAMPLER_U_MASK \
//     | BGFX_SAMPLER_V_MASK \
//     | BGFX_SAMPLER_W_MASK \
//     | BGFX_SAMPLER_MIN_MASK \
//     | BGFX_SAMPLER_MAG_MASK \
//     | BGFX_SAMPLER_MIP_MASK \
//     | BGFX_SAMPLER_COMPARE_MASK \
//     )


BGFX_RESET_MSAA_X2            : u32 :  0x00000010; //!< Enable 2x MSAA.
BGFX_RESET_MSAA_X4            : u32 :  0x00000020; //!< Enable 4x MSAA.
BGFX_RESET_MSAA_X8            : u32 :  0x00000030; //!< Enable 8x MSAA.
BGFX_RESET_MSAA_X16           : u32 :  0x00000040; //!< Enable 16x MSAA.
BGFX_RESET_MSAA_SHIFT         : u32 :  4;

BGFX_RESET_MSAA_MASK          : u32 :  0x00000070;

BGFX_RESET_NONE               : u32 :  0x00000000; //!< No reset flags.
BGFX_RESET_FULLSCREEN         : u32 :  0x00000001; //!< Not supported yet.
BGFX_RESET_VSYNC              : u32 :  0x00000080; //!< Enable V-Sync.
BGFX_RESET_MAXANISOTROPY      : u32 :  0x00000100; //!< Turn on/off max anisotropy.
BGFX_RESET_CAPTURE            : u32 :  0x00000200; //!< Begin screen capture.
BGFX_RESET_FLUSH_AFTER_RENDER : u32 :  0x00002000; //!< Flush rendering after submitting to GPU.

/// This flag specifies where flip occurs. Default behaviour is that flip occurs
/// before rendering new frame. This flag only has effect when `BGFX_CONFIG_MULTITHREADED=0`.
BGFX_RESET_FLIP_AFTER_RENDER  : u32 :  0x00004000;
BGFX_RESET_SRGB_BACKBUFFER    : u32 :  0x00008000; //!< Enable sRGB backbuffer.
BGFX_RESET_HDR10              : u32 :  0x00010000; //!< Enable HDR10 rendering.
BGFX_RESET_HIDPI              : u32 :  0x00020000; //!< Enable HiDPI rendering.
BGFX_RESET_DEPTH_CLAMP        : u32 :  0x00040000; //!< Enable depth clamp.
BGFX_RESET_SUSPEND            : u32 :  0x00080000; //!< Suspend rendering.

BGFX_RESET_FULLSCREEN_SHIFT   : u32 :  0;

BGFX_RESET_FULLSCREEN_MASK    : u32 :  0x00000001;

BGFX_RESET_RESERVED_SHIFT     : u32 :  31;                   //!< Internal bit shift
BGFX_RESET_RESERVED_MASK      : u32 :  0x80000000; //!< Internal bit mask

// #define BGFX_CAPS_ALPHA_TO_COVERAGE               UINT64_C(0x0000000000000001) //!< Alpha to coverage is supported.
// #define BGFX_CAPS_BLEND_INDEPENDENT               UINT64_C(0x0000000000000002) //!< Blend independent is supported.
// #define BGFX_CAPS_COMPUTE                         UINT64_C(0x0000000000000004) //!< Compute shaders are supported.
// #define BGFX_CAPS_CONSERVATIVE_RASTER             UINT64_C(0x0000000000000008) //!< Conservative rasterization is supported.
// #define BGFX_CAPS_DRAW_INDIRECT                   UINT64_C(0x0000000000000010) //!< Draw indirect is supported.
// #define BGFX_CAPS_FRAGMENT_DEPTH                  UINT64_C(0x0000000000000020) //!< Fragment depth is available in fragment shader.
// #define BGFX_CAPS_FRAGMENT_ORDERING               UINT64_C(0x0000000000000040) //!< Fragment ordering is available in fragment shader.
// #define BGFX_CAPS_GRAPHICS_DEBUGGER               UINT64_C(0x0000000000000080) //!< Graphics debugger is present.
// #define BGFX_CAPS_HDR10                           UINT64_C(0x0000000000000100) //!< HDR10 rendering is supported.
// #define BGFX_CAPS_HIDPI                           UINT64_C(0x0000000000000200) //!< HiDPI rendering is supported.
// #define BGFX_CAPS_IMAGE_RW                        UINT64_C(0x0000000000000400) //!< Image Read/Write is supported.
// #define BGFX_CAPS_INDEX32                         UINT64_C(0x0000000000000800) //!< 32-bit indices are supported.
// #define BGFX_CAPS_INSTANCING                      UINT64_C(0x0000000000001000) //!< Instancing is supported.
// #define BGFX_CAPS_OCCLUSION_QUERY                 UINT64_C(0x0000000000002000) //!< Occlusion query is supported.
// #define BGFX_CAPS_RENDERER_MULTITHREADED          UINT64_C(0x0000000000004000) //!< Renderer is on separate thread.
// #define BGFX_CAPS_SWAP_CHAIN                      UINT64_C(0x0000000000008000) //!< Multiple windows are supported.
// #define BGFX_CAPS_TEXTURE_2D_ARRAY                UINT64_C(0x0000000000010000) //!< 2D texture array is supported.
// #define BGFX_CAPS_TEXTURE_3D                      UINT64_C(0x0000000000020000) //!< 3D textures are supported.
// #define BGFX_CAPS_TEXTURE_BLIT                    UINT64_C(0x0000000000040000) //!< Texture blit is supported.
// #define BGFX_CAPS_TEXTURE_COMPARE_RESERVED        UINT64_C(0x0000000000080000)
// #define BGFX_CAPS_TEXTURE_COMPARE_LEQUAL          UINT64_C(0x0000000000100000) //!< Texture compare less equal mode is supported.
// #define BGFX_CAPS_TEXTURE_CUBE_ARRAY              UINT64_C(0x0000000000200000) //!< Cubemap texture array is supported.
// #define BGFX_CAPS_TEXTURE_DIRECT_ACCESS           UINT64_C(0x0000000000400000) //!< CPU direct access to GPU texture memory.
// #define BGFX_CAPS_TEXTURE_READ_BACK               UINT64_C(0x0000000000800000) //!< Read-back texture is supported.
// #define BGFX_CAPS_VERTEX_ATTRIB_HALF              UINT64_C(0x0000000001000000) //!< Vertex attribute half-float is supported.
// #define BGFX_CAPS_VERTEX_ATTRIB_UINT10            UINT64_C(0x0000000002000000) //!< Vertex attribute 10_10_10_2 is supported.
// #define BGFX_CAPS_VERTEX_ID                       UINT64_C(0x0000000004000000) //!< Rendering with VertexID only is supported.
// #define BGFX_CAPS_VIEWPORT_LAYER_ARRAY            UINT64_C(0x0000000008000000) //!< Viewport layer is available in vertex shader.
// /// All texture compare modes are supported.
// #define BGFX_CAPS_TEXTURE_COMPARE_ALL (0 \
//     | BGFX_CAPS_TEXTURE_COMPARE_RESERVED \
//     | BGFX_CAPS_TEXTURE_COMPARE_LEQUAL \
//     )


// #define BGFX_CAPS_FORMAT_TEXTURE_NONE             UINT32_C(0x00000000) //!< Texture format is not supported.
// #define BGFX_CAPS_FORMAT_TEXTURE_2D               UINT32_C(0x00000001) //!< Texture format is supported.
// #define BGFX_CAPS_FORMAT_TEXTURE_2D_SRGB          UINT32_C(0x00000002) //!< Texture as sRGB format is supported.
// #define BGFX_CAPS_FORMAT_TEXTURE_2D_EMULATED      UINT32_C(0x00000004) //!< Texture format is emulated.
// #define BGFX_CAPS_FORMAT_TEXTURE_3D               UINT32_C(0x00000008) //!< Texture format is supported.
// #define BGFX_CAPS_FORMAT_TEXTURE_3D_SRGB          UINT32_C(0x00000010) //!< Texture as sRGB format is supported.
// #define BGFX_CAPS_FORMAT_TEXTURE_3D_EMULATED      UINT32_C(0x00000020) //!< Texture format is emulated.
// #define BGFX_CAPS_FORMAT_TEXTURE_CUBE             UINT32_C(0x00000040) //!< Texture format is supported.
// #define BGFX_CAPS_FORMAT_TEXTURE_CUBE_SRGB        UINT32_C(0x00000080) //!< Texture as sRGB format is supported.
// #define BGFX_CAPS_FORMAT_TEXTURE_CUBE_EMULATED    UINT32_C(0x00000100) //!< Texture format is emulated.
// #define BGFX_CAPS_FORMAT_TEXTURE_VERTEX           UINT32_C(0x00000200) //!< Texture format can be used from vertex shader.
// #define BGFX_CAPS_FORMAT_TEXTURE_IMAGE_READ       UINT32_C(0x00000400) //!< Texture format can be used as image and read from.
// #define BGFX_CAPS_FORMAT_TEXTURE_IMAGE_WRITE      UINT32_C(0x00000800) //!< Texture format can be used as image and written to.
// #define BGFX_CAPS_FORMAT_TEXTURE_FRAMEBUFFER      UINT32_C(0x00001000) //!< Texture format can be used as frame buffer.
// #define BGFX_CAPS_FORMAT_TEXTURE_FRAMEBUFFER_MSAA UINT32_C(0x00002000) //!< Texture format can be used as MSAA frame buffer.
// #define BGFX_CAPS_FORMAT_TEXTURE_MSAA             UINT32_C(0x00004000) //!< Texture can be sampled as MSAA.
// #define BGFX_CAPS_FORMAT_TEXTURE_MIP_AUTOGEN      UINT32_C(0x00008000) //!< Texture format supports auto-generated mips.

// #define BGFX_RESOLVE_NONE                         UINT8_C(0x00) //!< No resolve flags.
// #define BGFX_RESOLVE_AUTO_GEN_MIPS                UINT8_C(0x01) //!< Auto-generate mip maps on resolve.

// #define BGFX_PCI_ID_NONE                          UINT16_C(0x0000) //!< Autoselect adapter.
// #define BGFX_PCI_ID_SOFTWARE_RASTERIZER           UINT16_C(0x0001) //!< Software rasterizer.
// #define BGFX_PCI_ID_AMD                           UINT16_C(0x1002) //!< AMD adapter.
// #define BGFX_PCI_ID_INTEL                         UINT16_C(0x8086) //!< Intel adapter.
// #define BGFX_PCI_ID_NVIDIA                        UINT16_C(0x10de) //!< nVidia adapter.

// #define BGFX_CUBE_MAP_POSITIVE_X                  UINT8_C(0x00) //!< Cubemap +x.
// #define BGFX_CUBE_MAP_NEGATIVE_X                  UINT8_C(0x01) //!< Cubemap -x.
// #define BGFX_CUBE_MAP_POSITIVE_Y                  UINT8_C(0x02) //!< Cubemap +y.
// #define BGFX_CUBE_MAP_NEGATIVE_Y                  UINT8_C(0x03) //!< Cubemap -y.
// #define BGFX_CUBE_MAP_POSITIVE_Z                  UINT8_C(0x04) //!< Cubemap +z.
// #define BGFX_CUBE_MAP_NEGATIVE_Z                  UINT8_C(0x05) //!< Cubemap -z.


// /// Blend function separate.
// #define BGFX_STATE_BLEND_FUNC_SEPARATE(_srcRGB, _dstRGB, _srcA, _dstA) (UINT64_C(0) \
//     | ( ( (uint64_t)(_srcRGB)|( (uint64_t)(_dstRGB)<<4) )   )                       \
//     | ( ( (uint64_t)(_srcA  )|( (uint64_t)(_dstA  )<<4) )<<8)                       \
//     )

// /// Blend equation separate.
// #define BGFX_STATE_BLEND_EQUATION_SEPARATE(_equationRGB, _equationA) ( (uint64_t)(_equationRGB)|( (uint64_t)(_equationA)<<3) )

// /// Blend function.
// #define BGFX_STATE_BLEND_FUNC(_src, _dst)    BGFX_STATE_BLEND_FUNC_SEPARATE(_src, _dst, _src, _dst)

// /// Blend equation.
// #define BGFX_STATE_BLEND_EQUATION(_equation) BGFX_STATE_BLEND_EQUATION_SEPARATE(_equation, _equation)

// /// Utility predefined blend modes.

// /// Additive blending.
// #define BGFX_STATE_BLEND_ADD (0                                         \
//     | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_ONE) \
//     )

// /// Alpha blend.
// #define BGFX_STATE_BLEND_ALPHA (0                                                       \
//     | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_SRC_ALPHA, BGFX_STATE_BLEND_INV_SRC_ALPHA) \
//     )

// /// Selects darker color of blend.
// #define BGFX_STATE_BLEND_DARKEN (0                                      \
//     | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_ONE) \
//     | BGFX_STATE_BLEND_EQUATION(BGFX_STATE_BLEND_EQUATION_MIN)          \
//     )

// /// Selects lighter color of blend.
// #define BGFX_STATE_BLEND_LIGHTEN (0                                     \
//     | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_ONE) \
//     | BGFX_STATE_BLEND_EQUATION(BGFX_STATE_BLEND_EQUATION_MAX)          \
//     )

// /// Multiplies colors.
// #define BGFX_STATE_BLEND_MULTIPLY (0                                           \
//     | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_DST_COLOR, BGFX_STATE_BLEND_ZERO) \
//     )

// /// Opaque pixels will cover the pixels directly below them without any math or algorithm applied to them.
// #define BGFX_STATE_BLEND_NORMAL (0                                                \
//     | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_INV_SRC_ALPHA) \
//     )

// /// Multiplies the inverse of the blend and base colors.
// #define BGFX_STATE_BLEND_SCREEN (0                                                \
//     | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_INV_SRC_COLOR) \
//     )

// /// Decreases the brightness of the base color based on the value of the blend color.
// #define BGFX_STATE_BLEND_LINEAR_BURN (0                                                 \
//     | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_DST_COLOR, BGFX_STATE_BLEND_INV_DST_COLOR) \
//     | BGFX_STATE_BLEND_EQUATION(BGFX_STATE_BLEND_EQUATION_SUB)                          \
//     )

// ///
// #define BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) (0         \
//     | ( (uint32_t)( (_src)>>BGFX_STATE_BLEND_SHIFT)       \
//     | ( (uint32_t)( (_dst)>>BGFX_STATE_BLEND_SHIFT)<<4) ) \
//     )

// ///
// #define BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) (0         \
//     | BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst)                          \
//     | ( (uint32_t)( (_equation)>>BGFX_STATE_BLEND_EQUATION_SHIFT)<<8) \
//     )

// #define BGFX_STATE_BLEND_FUNC_RT_1(_src, _dst)  (BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst)<< 0)
// #define BGFX_STATE_BLEND_FUNC_RT_2(_src, _dst)  (BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst)<<11)
// #define BGFX_STATE_BLEND_FUNC_RT_3(_src, _dst)  (BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst)<<22)

// #define BGFX_STATE_BLEND_FUNC_RT_1E(_src, _dst, _equation) (BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation)<< 0)
// #define BGFX_STATE_BLEND_FUNC_RT_2E(_src, _dst, _equation) (BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation)<<11)
// #define BGFX_STATE_BLEND_FUNC_RT_3E(_src, _dst, _equation) (BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation)<<22)





#scope_file

#import "Basic";

bgfx :: #foreign_library, no_dll "win/bgfxRelease";