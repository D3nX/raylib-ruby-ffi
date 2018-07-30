require 'ffi'

module Raylib
    extend FFI::Library

    # We load the lib
    ffi_lib 'raylib.dll'

    # Some constant
    PI = 3.14159265358979323846

    DEG2RAD = (PI/180.0)

    RAD2DEG = (180.0/PI)

    #=raylib Config Flags

    FLAG_SHOW_LOGO=             1       # Set to show raylib logo at startup

    FLAG_FULLSCREEN_MODE=       2       # Set to run program in fullscreen

    FLAG_WINDOW_RESIZABLE=      4       # Set to allow resizable window

    FLAG_WINDOW_UNDECORATED=    8       # Set to disable window decoration (frame and buttons)

    FLAG_WINDOW_TRANSPARENT=   16       # Set to allow transparent window

    FLAG_MSAA_4X_HINT=         32       # Set to try enabling MSAA 4X

    FLAG_VSYNC_HINT=           64       # Set to try enabling V#Sync on GPU



    #=Keyboard Function Keys

    KEY_SPACE=           32

    KEY_ESCAPE=         256

    KEY_ENTER=          257

    KEY_TAB=            258

    KEY_BACKSPACE=      259

    KEY_INSERT=         260

    KEY_DELETE=         261

    KEY_RIGHT=          262

    KEY_LEFT=           263

    KEY_DOWN=           264

    KEY_UP=             265

    KEY_PAGE_UP=        266

    KEY_PAGE_DOWN=      267

    KEY_HOME=           268

    KEY_END=            269

    KEY_CAPS_LOCK=      280

    KEY_SCROLL_LOCK=    281

    KEY_NUM_LOCK=       282

    KEY_PRINT_SCREEN=   283

    KEY_PAUSE=          284

    KEY_F1=             290

    KEY_F2=             291

    KEY_F3=             292

    KEY_F4=             293

    KEY_F5=             294

    KEY_F6=             295

    KEY_F7=             296

    KEY_F8=             297

    KEY_F9=             298

    KEY_F10=            299

    KEY_F11=            300

    KEY_F12=            301

    KEY_LEFT_SHIFT=     340

    KEY_LEFT_CONTROL=   341

    KEY_LEFT_ALT=       342

    KEY_RIGHT_SHIFT=    344

    KEY_RIGHT_CONTROL=  345

    KEY_RIGHT_ALT=      346

    KEY_GRAVE=           96

    KEY_SLASH=           47

    KEY_BACKSLASH=       92



    #=Keyboard Alpha Numeric Keys

    KEY_ZERO=            48

    KEY_ONE=             49

    KEY_TWO=             50

    KEY_THREE=           51

    KEY_FOUR=            52

    KEY_FIVE=            53

    KEY_SIX=             54

    KEY_SEVEN=           55

    KEY_EIGHT=           56

    KEY_NINE=            57

    KEY_A=               65

    KEY_B=               66

    KEY_C=               67

    KEY_D=               68

    KEY_E=               69

    KEY_F=               70

    KEY_G=               71

    KEY_H=               72

    KEY_I=               73

    KEY_J=               74

    KEY_K=               75

    KEY_L=               76

    KEY_M=               77

    KEY_N=               78

    KEY_O=               79

    KEY_P=               80

    KEY_Q=               81

    KEY_R=               82

    KEY_S=               83

    KEY_T=               84

    KEY_U=               85

    KEY_V=               86

    KEY_W=               87

    KEY_X=               88

    KEY_Y=               89

    KEY_Z=               90



    #=Android Physical Buttons

    KEY_BACK=             4

    KEY_MENU=            82

    KEY_VOLUME_UP=       24

    KEY_VOLUME_DOWN=     25



    #=Mouse Buttons

    MOUSE_LEFT_BUTTON=    0

    MOUSE_RIGHT_BUTTON=   1

    MOUSE_MIDDLE_BUTTON=  2



    #=Touch points registered

    MAX_TOUCH_POINTS=     2



    #=Gamepad Number

    GAMEPAD_PLAYER1=      0

    GAMEPAD_PLAYER2=      1

    GAMEPAD_PLAYER3=      2

    GAMEPAD_PLAYER4=      3



    #=Gamepad Buttons/Axis



    #=PS3 USB Controller Buttons

    GAMEPAD_PS3_BUTTON_TRIANGLE=0

    GAMEPAD_PS3_BUTTON_CIRCLE=  1

    GAMEPAD_PS3_BUTTON_CROSS=   2

    GAMEPAD_PS3_BUTTON_SQUARE=  3

    GAMEPAD_PS3_BUTTON_L1=      6

    GAMEPAD_PS3_BUTTON_R1=      7

    GAMEPAD_PS3_BUTTON_L2=      4

    GAMEPAD_PS3_BUTTON_R2=      5

    GAMEPAD_PS3_BUTTON_START=   8

    GAMEPAD_PS3_BUTTON_SELECT=  9

    GAMEPAD_PS3_BUTTON_UP=     24

    GAMEPAD_PS3_BUTTON_RIGHT=  25

    GAMEPAD_PS3_BUTTON_DOWN=   26

    GAMEPAD_PS3_BUTTON_LEFT=   27

    GAMEPAD_PS3_BUTTON_PS=     12



    #=PS3 USB Controller Axis

    GAMEPAD_PS3_AXIS_LEFT_X=    0

    GAMEPAD_PS3_AXIS_LEFT_Y=    1

    GAMEPAD_PS3_AXIS_RIGHT_X=   2

    GAMEPAD_PS3_AXIS_RIGHT_Y=   5

    GAMEPAD_PS3_AXIS_L2=        3       # [1..#1] (pressure#level)

    GAMEPAD_PS3_AXIS_R2=        4       # [1..#1] (pressure#level)



    #=Xbox360 USB Controller Buttons

    GAMEPAD_XBOX_BUTTON_A=      0

    GAMEPAD_XBOX_BUTTON_B=      1

    GAMEPAD_XBOX_BUTTON_X=      2

    GAMEPAD_XBOX_BUTTON_Y=      3

    GAMEPAD_XBOX_BUTTON_LB=     4

    GAMEPAD_XBOX_BUTTON_RB=     5

    GAMEPAD_XBOX_BUTTON_SELECT= 6

    GAMEPAD_XBOX_BUTTON_START=  7

    GAMEPAD_XBOX_BUTTON_UP=     10

    GAMEPAD_XBOX_BUTTON_RIGHT=  11

    GAMEPAD_XBOX_BUTTON_DOWN=   12

    GAMEPAD_XBOX_BUTTON_LEFT=   13

    GAMEPAD_XBOX_BUTTON_HOME=   8



    #=Android Gamepad Controller (SNES CLASSIC)

    GAMEPAD_ANDROID_DPAD_UP=       19

    GAMEPAD_ANDROID_DPAD_DOWN=     20

    GAMEPAD_ANDROID_DPAD_LEFT=     21

    GAMEPAD_ANDROID_DPAD_RIGHT=    22

    GAMEPAD_ANDROID_DPAD_CENTER=   23



    GAMEPAD_ANDROID_BUTTON_A=      96

    GAMEPAD_ANDROID_BUTTON_B=      97

    GAMEPAD_ANDROID_BUTTON_C=      98

    GAMEPAD_ANDROID_BUTTON_X=      99

    GAMEPAD_ANDROID_BUTTON_Y=      100

    GAMEPAD_ANDROID_BUTTON_Z=      101

    GAMEPAD_ANDROID_BUTTON_L1=     102

    GAMEPAD_ANDROID_BUTTON_R1=     103

    GAMEPAD_ANDROID_BUTTON_L2=     104

    GAMEPAD_ANDROID_BUTTON_R2=     105

    # Shader and material limits
    MAX_SHADER_LOCATIONS =      32      # Maximum number of predefined locations stored in shader struct
    MAX_MATERIAL_MAPS    =      12      # Maximum number of texture maps stored in shader struct

    # Music enum
    enum :MusicContextType, [:MUSIC_AUDIO_OGG, 0, 
                            :MUSIC_AUDIO_FLAC,
                            :MUSIC_AUDIO_MP3,
                            :MUSIC_MODULE_XM,
                            :MUSIC_MODULE_MOD ]

    CAMERA_PERSPECTIVE = 0
    CAMERA_ORTHOGRAPHIC = 1


    # Structs
    # Vector2 type
    class Vector2 < FFI::Struct
        layout 	:x, :float,
                :y, :float

        def x; self[:x]; end
        def y; self[:y]; end

        def x=(v); self[:x] = v; end
        def y=(v); self[:y] = v; end
    end
    # Vector3 type
    class Vector3 < FFI::Struct
        layout 	:x, :float,
                :y, :float,
                :z, :float

        def x; self[:x]; end
        def y; self[:y]; end
        def z; self[:z]; end

        def x=(v); self[:x] = v; end
        def y=(v); self[:y] = v; end
        def z=(v); self[:z] = v; end
    end
    # Vector4 type
    class Vector4 < FFI::Struct
        layout 	:x, :float,
                :y, :float,
                :z, :float,
                :w, :float

        def x; self[:x]; end
        def y; self[:y]; end
        def z; self[:z]; end
        def w; self[:w]; end

        def x=(v); self[:x] = v; end
        def y=(v); self[:y] = v; end
        def z=(v); self[:z] = v; end
        def w=(v); self[:w] = v; end
    end
    # Quaternion type, same as Vector4
    # Matrix type (OpenGL style 4x4 - right handed, column major)
    class Matrix < FFI::Struct
        layout 	:m0, :float,
                :m4, :float,
                :m8, :float,
                :m12, :float,
                :m1, :float,
                :m5, :float,
                :m9, :float,
                :m13, :float,
                :m2, :float,
                :m6, :float,
                :m10, :float,
                :m14, :float,
                :m3, :float,
                :m7, :float,
                :m11, :float,
                :m15, :float
    end
    # Color type, RGBA (32bit)
    class Color < FFI::Struct
        layout 	:r, :uchar,
                :g, :uchar,
                :b, :uchar,
                :a, :uchar
        def r; self[:r]; end
        def g; self[:g]; end
        def b; self[:b]; end
        def a; self[:a]; end

        def r=(v); self[:r] = v; end
        def g=(v); self[:g] = v; end
        def b=(v); self[:b] = v; end
        def a=(v); self[:a] = v; end
    end
    # Rectangle type
    class Rectangle < FFI::Struct
        layout 	:x, :float,
                :y, :float,
                :width, :float,
                :height, :float

        def x; self[:x]; end
        def y; self[:y]; end
        def width; self[:width]; end
        def height; self[:height]; end

        def x=(v); self[:x] = v; end
        def y=(v); self[:y] = v; end
        def width=(v); self[:width] = v; end
        def height=(v); self[:height] = v; end
    end
    # Image type, bpp always RGBA (32bit)
    # NOTE: Data stored in CPU memory (RAM)
    class Image < FFI::Struct
        layout 	:data, :pointer,
                :width, :int,
                :height, :int,
                :mipmaps, :int,
                :format, :int
    end
    # Texture2D type
    # NOTE: Data stored in GPU memory
    class Texture2D < FFI::Struct
        layout 	:id, :uint,
                :width, :int,
                :height, :int,
                :mipmaps, :int,
                :format, :int
    end
    # Texture type, same as Texture2D
    # RenderTexture2D type, for texture rendering
    class RenderTexture2D < FFI::Struct
        layout 	:id, :uint,
                :texture, Texture2D,
                :depth, Texture2D
    end
    # RenderTexture type, same as RenderTexture2D
    # Font character info
    class CharInfo < FFI::Struct
        layout 	:value, :int,
    # Character rectangle in sprite font
                :offsetX, :int,
                :offsetY, :int,
                :advanceX, :int,
                :data, :uchar
    end
    # Font type, includes texture and charSet array data
    class Font < FFI::Struct
        layout 	:texture, Texture2D.by_value,
                :baseSize, :int,
                :charsCount, :int,
                :chars, CharInfo
    end
    #define SpriteFont Font# SpriteFont type fallback, defaults to Font
    # Camera type, defines a camera position/orientation in 3d space
    class Camera < FFI::Struct
        layout 	:position, Vector3.by_value,
                :target, Vector3.by_value,
                :up, Vector3.by_value,
                :fovy, :float,
                :type, :int

        def position; self[:position]; end
        def target; self[:target]; end
        def up; self[:up]; end
        def fovy; self[:fovy]; end
        def type; self[:type]; end

        def position=(v); self[:position] = v; end
        def target=(v); self[:target] = v; end
        def up=(v); self[:up] = v; end
        def fovy=(v); self[:fovy] = v; end
        def type=(v); self[:type] = v; end
    end
    #define Camera Camera3D# Camera type fallback, defaults to Camera3D
    # Camera2D type, defines a 2d camera
    class Camera2D < FFI::Struct
        layout 	:offset, Vector2.by_value,
                :target, Vector2.by_value,
                :rotation, :float,
                :zoom, :float

        def offset; self[:offset]; end
        def target; self[:target]; end
        def rotation; self[:rotation]; end
        def zoom; self[:zoom]; end

        def offset=(v); self[:offset] = v; end
        def target=(v); self[:target] = v; end
        def rotation=(v); self[:rotation] = v; end
        def zoom=(v); self[:zoom] = v; end
    end
    # Bounding box type
    class BoundingBox < FFI::Struct
        layout 	:min, Vector3.by_value,
                :max, Vector3.by_value
    end
    # Vertex data definning a mesh
    # NOTE: Data stored in CPU memory (and GPU)
    class Mesh < FFI::Struct
        layout 	:vertexCount, :int,
                :triangleCount, :int,
                :vertices, :pointer,
                :texcoords, :pointer,
                :texcoords2, :pointer,
                :normals, :pointer,
                :tangents, :pointer,
                :colors, :pointer,
                :indices, :pointer,
    # Vertex indices (in case vertex data comes indexed)
                :vaoId, :uint,
                :vboId, [:uint, 7]
    end
    # Shader type (generic)
    class Shader < FFI::Struct
        layout 	:id, :uint,
                :locs, [:int, MAX_SHADER_LOCATIONS]
    end
    # Material texture map
    class MaterialMap < FFI::Struct
        layout 	:texture, Texture2D.by_value,
                :color, Color.by_value,
                :value, :float

        def texture; self[:texture]; end
        def color; self[:color]; end
        def value; self[:value]; end

        def texture=(v); self[:texture] = v; end
        def color=(v); self[:color] = v; end
        def value=(v); self[:value] = v; end
    end
    # Material type (generic)
    class Material < FFI::Struct
        layout 	:shader, Shader.by_value,
                :maps, [MaterialMap.by_value, MAX_MATERIAL_MAPS],
                :params, :pointer

        def shader; self[:shader]; end
        def maps; self[:maps]; end
        def value; self[:value]; end

        def shader=(v); self[:shader] = v; end
        def maps=(v); self[:maps] = v; end
        def value=(v); self[:value] = v; end
      end
    # Model type
    class Model < FFI::Struct
        layout 	:mesh, Mesh.by_value,
                :transform, Matrix.by_value,
                :material, Material.by_value

        def mesh; self[:mesh]; end
        def transform; self[:transform]; end
        def material; self[:material]; end

        def mesh=(v); self[:mesh] = v; end
        def transform=(v); self[:transform] = v; end
        def material=(v); self[:material] = v; end
    end
    # Ray type (useful for raycast)
    class Ray < FFI::Struct
        layout 	:position, Vector3.by_value,
                :direction, Vector3.by_value

        def position; self[:position]; end
        def direction; self[:direction]; end

        def position=(v); self[:position] = v; end
        def direction=(v); self[:direction] = v; end
    end
    # Raycast hit information
    class RayHitInfo < FFI::Struct
        layout 	:hit, :bool,
                :distance, :float,
                :position, Vector3.by_value,
                :normal, Vector3.by_value
    end
    # Wave type, defines audio wave data
    class Wave < FFI::Struct
        layout 	:sampleCount, :uint,
                :sampleRate, :uint,
                :sampleSize, :uint,
                :channels, :uint,
                :data, :pointer
    end
    # Sound source type
    class Sound < FFI::Struct
        layout 	:audioBuffer, :pointer,
                :source, :uint,
                :buffer, :uint,
                :format, :int
    end
    # Music type (file streaming from memory)
    # NOTE: Anything longer than ~10 seconds should be streamed
    # class Music < FFI::Struct # Audio stream type
    # NOTE: Useful to create custom audio streams not bound to a specific file
    class AudioStream < FFI::Struct
        layout 	:sampleRate, :uint,
                :sampleSize, :uint,
                :channels, :uint,
                :audioBuffer, :pointer,
                :format, :int,
                :source, :uint,
                :buffers, [:uint, 2]
    end
    # Head-Mounted-Display device parameters
    class VrDeviceInfo < FFI::Struct
        layout 	:hResolution, :int,
                :vResolution, :int,
                :hScreenSize, :float,
                :vScreenSize, :float,
                :vScreenCenter, :float,
                :eyeToScreenDistance, :float,
                :lensSeparationDistance, :float,
                :interpupillaryDistance, :float,
                :lensDistortionValues, [:float, 4],
                :chromaAbCorrection, [:float, 4]
    end

    ## SOME FUNCTIONS ##
    def Raylib.new_color(r, g, b, a)
        c = Color.new
        c.r = r
        c.g = g
        c.b = b
        c.a = a

        return c
    end

    def Raylib.new_rectangle(x, y, width, height)
        rect = Rectangle.new
        rect.x = x
        rect.y = y
        rect.width = width
        rect.height = height

        return rect
    end

    def Raylib.new_camera2d()
        cam = Camera2D.new
        return cam
    end

    def Raylib.new_camera()
        cam = Camera.new
        return cam
    end

    def Raylib.new_vector2(x, y)
        vec2 = Vector2.new
        vec2[:x] = x.to_f
        vec2[:y] = y.to_f

        return vec2
    end

    def Raylib.new_vector3(x, y, z)
        vec3 = Vector3.new
        vec3[:x] = x.to_f
        vec3[:y] = y.to_f
        vec3[:z] = z.to_f

        return vec3
    end

    def Raylib.new_bounding_box(min, max)
        bb = BoundingBox.new
        bb[:min] = min
        bb[:max] = max

        return bb
    end

    def Raylib.new_ray()
        ray = Ray.new
        return ray
    end
    
    ## SOME OTHER DEFINES ##

    # Colors
    LIGHTGRAY = new_color(200, 200, 200, 255)   # Light Gray
    GRAY      = new_color(130, 130, 130, 255)   # Gray
    DARKGRAY  = new_color(80, 80, 80, 255)      # Dark Gray
    YELLOW    = new_color(253, 249, 0, 255)     # Yellow
    GOLD      = new_color(255, 203, 0, 255)     # Gold
    ORANGE    = new_color(255, 161, 0, 255)     # Orange
    PINK      = new_color(255, 109, 194, 255)   # Pink
    RED       = new_color(230, 41, 55, 255)     # Red
    MAROON    = new_color(190, 33, 55, 255)     # Maroon
    GREEN     = new_color(0, 228, 48, 255)      # Green
    LIME      = new_color(0, 158, 47, 255)      # Lime
    DARKGREEN = new_color(0, 117, 44, 255)      # Dark Green
    SKYBLUE   = new_color(102, 191, 255, 255)   # Sky Blue
    BLUE      = new_color(0, 121, 241, 255)     # Blue
    DARKBLUE  = new_color(0, 82, 172, 255)      # Dark Blue
    PURPLE    = new_color(200, 122, 255, 255)   # Purple
    VIOLET    = new_color(135, 60, 190, 255)    # Violet
    DARKPURPLE= new_color(112, 31, 126, 255)    # Dark Purple
    BEIGE     = new_color(211, 176, 131, 255)   # Beige
    BROWN     = new_color(127, 106, 79, 255)    # Brown
    DARKBROWN = new_color(76, 63, 47, 255)      # Dark Brown

    WHITE     = new_color(255, 255, 255, 255)   # White
    BLACK     = new_color(0, 0, 0, 255)         # Black
    BLANK     = new_color(0, 0, 0, 0)           # Blank (Transparent)
    MAGENTA   = new_color(255, 0, 255, 255)     # Magenta
    RAYWHITE  = new_color(245, 245, 245, 255)   # My own White (raylib logo)

    # Trace log type
    LOG_INFO = 0
    LOG_WARNING = 1
    LOG_ERROR = 2
    LOG_DEBUG = 3
    LOG_OTHER = 4

    # Shader location point type
    LOC_VERTEX_POSITION = 0
    LOC_VERTEX_TEXCOORD01 = 5
    LOC_VERTEX_TEXCOORD02 = 6
    LOC_VERTEX_NORMAL = 7
    LOC_VERTEX_TANGENT = 8
    LOC_VERTEX_COLOR = 9
    LOC_MATRIX_MVP = 10
    LOC_MATRIX_MODEL = 11
    LOC_MATRIX_VIEW = 12
    LOC_MATRIX_PROJECTION = 13
    LOC_VECTOR_VIEW = 14
    LOC_COLOR_DIFFUSE = 15
    LOC_COLOR_SPECULAR = 16
    LOC_COLOR_AMBIENT = 17
    LOC_MAP_ALBEDO =  18 # LOC_MAP_DIFFUSE
    LOC_MAP_METALNESS = 19 # LOC_MAP_SPECULAR
    LOC_MAP_NORMAL = 20
    LOC_MAP_ROUGHNESS = 21
    LOC_MAP_OCCUSION = 22
    LOC_MAP_EMISSION = 23
    LOC_MAP_HEIGHT = 24
    LOC_MAP_CUBEMAP = 25
    LOC_MAP_IRRADIANCE = 26
    LOC_MAP_PREFILTER = 27
    LOC_MAP_BRDF = 28

    LOC_MAP_DIFFUSE = LOC_MAP_ALBEDO
    LOC_MAP_SPECULAR = LOC_MAP_METALNESS

    # Material map type

    MAP_ALBEDO = 0
    MAP_METALNESS = 1
    MAP_NORMAL = 2
    MAP_ROUGHNESS = 3
    MAP_OCCLUSION = 4
    MAP_EMISSION = 5
    MAP_HEIGHT = 6
    MAP_CUBEMAP = 7 # NOTE: Uses GL_TEXTURE_CUBE_MAP
    MAP_IRRADIANCE = 8 # NOTE: Uses GL_TEXTURE_CUBE_MAP
    MAP_PREFILTER = 9 # NOTE: Uses GL_TEXTURE_CUBE_MAP
    MAP_BRDF = 10

    MAP_DIFFUSE  = MAP_ALBEDO
    MAP_SPECULAR = MAP_METALNESS

    # Texture formats
    # NOTE: Support depends on OpenGL version and platform

    UNCOMPRESSED_GRAYSCALE = 1 # 8 bit per pixel (no alpha)
    UNCOMPRESSED_GRAY_ALPHA = 2 # 16 bpp (2 channels)
    UNCOMPRESSED_R5G6B5 = 3 # 16 bpp
    UNCOMPRESSED_R8G8B8 = 4 # 24 bpp
    UNCOMPRESSED_R5G5B5A1 = 5 # 16 bpp (1 bit alpha)
    UNCOMPRESSED_R4G4B4A4 = 6 # 16 bpp (4 bit alpha)
    UNCOMPRESSED_R8G8B8A8 = 7 # 32 bpp
    UNCOMPRESSED_R32G32B32 = 8 # 32 bit per channel (float) - HDR
    COMPRESSED_DXT1_RGB = 9 # 4 bpp (no alpha)
    COMPRESSED_DXT1_RGBA = 10 # 4 bpp (1 bit alpha)
    COMPRESSED_DXT3_RGBA = 11 # 8 bpp
    COMPRESSED_DXT5_RGBA = 12 # 8 bpp
    COMPRESSED_ETC1_RGB = 13 # 4 bpp
    COMPRESSED_ETC2_RGB = 14 # 4 bpp
    COMPRESSED_ETC2_EAC_RGBA = 15 # 8 bpp
    COMPRESSED_PVRT_RGB = 16 # 4 bpp
    COMPRESSED_PVRT_RGBA = 17 # 4 bpp
    COMPRESSED_ASTC_4x4_RGBA = 18 # 8 bpp
    COMPRESSED_ASTC_8x8_RGBA = 19 # 2 bpp

    # Texture parameters: filter mode
    # NOTE 1: Filtering considers mipmaps if available in the texture
    # NOTE 2: Filter is accordingly set for minification and magnification

    FILTER_POINT = 0 # No filter = just pixel aproximation
    FILTER_BILINEAR = 1 # Linear filtering
    FILTER_TRILINEAR = 2 # Trilinear filtering (linear with mipmaps)
    FILTER_ANISOTROPIC_4X = 3 # Anisotropic filtering 4x
    FILTER_ANISOTROPIC_8X = 4 # Anisotropic filtering 8x
    FILTER_ANISOTROPIC_16X = 5 # Anisotropic filtering 16x

    # Texture parameters: wrap mode
    
    WRAP_REPEAT = 0
    WRAP_CLAMP = 1
    WRAP_MIRROR = 2

    # Color blending modes (pre-defined)
    
    BLEND_ALPHA = 0 
    BLEND_ADDITIVE = 1 
    BLEND_MULTIPLIED = 2

    # Gestures type
    # NOTE: It could be used as flags to enable only some gestures

    GESTURE_NONE= 0
    GESTURE_TAP = 1
    GESTURE_DOUBLETAP = 2
    GESTURE_HOLD = 4
    GESTURE_DRAG = 8
    GESTURE_SWIPE_RIGHT = 16
    GESTURE_SWIPE_LEFT  = 32
    GESTURE_SWIPE_UP= 64
    GESTURE_SWIPE_DOWN = 128
    GESTURE_PINCH_IN= 256
    GESTURE_PINCH_OUT = 512

    # Camera system modes

    CAMERA_CUSTOM = 0
    CAMERA_FREE = 1
    CAMERA_ORBITAL = 2
    CAMERA_FIRST_PERSON = 3
    CAMERA_THIRD_PERSON = 4

    # Head Mounted Display devices

    HMD_DEFAULT_DEVICE = 0
    HMD_OCULUS_RIFT_DK2 = 1
    HMD_OCULUS_RIFT_CV1 = 2
    HMD_OCULUS_GO = 3
    HMD_VALVE_HTC_VIVE = 4
    HMD_SONY_PSVR = 5

    # RRESData type
    
    RRES_TYPE_RAW = 0
    RRES_TYPE_IMAGE = 1 
    RRES_TYPE_WAVE = 2
    RRES_TYPE_VERTEX = 3 
    RRES_TYPE_TEXT = 4
    RRES_TYPE_FONT_IMAGE = 5
    RRES_TYPE_FONT_CHARDATA = 6# CharInfo data array
    RRES_TYPE_DIRECTORY = 7

    # Window-related functions

    attach_function :InitWindow, [:int, :int, :string], :void
    attach_function :CloseWindow, [], :void
    attach_function :IsWindowReady, [], :bool
    attach_function :WindowShouldClose, [], :bool
    attach_function :IsWindowMinimized, [], :bool
    attach_function :ToggleFullscreen, [], :void
    attach_function :SetWindowIcon, [Image.by_value], :void
    attach_function :SetWindowTitle, [], :void
    attach_function :SetWindowPosition, [:int, :int], :void
    attach_function :SetWindowMonitor, [:int], :void
    attach_function :SetWindowMinSize, [:int, :int], :void
    attach_function :SetWindowSize, [:int, :int], :void
    attach_function :GetScreenWidth, [], :int
    attach_function :GetScreenHeight, [], :int

    # Cursor-related functions

    attach_function :ShowCursor, [], :void
    attach_function :HideCursor, [], :void
    attach_function :IsCursorHidden, [], :bool
    attach_function :EnableCursor, [], :void
    attach_function :DisableCursor, [], :void

    # Drawing-related functions

    attach_function :ClearBackground, [Color.by_value], :void
    attach_function :BeginDrawing, [], :void
    attach_function :EndDrawing, [], :void
    attach_function :BeginMode2D, [Camera2D.by_value], :void
    attach_function :EndMode2D, [], :void
    attach_function :BeginMode3D, [Camera.by_value], :void
    attach_function :EndMode3D, [], :void
    attach_function :BeginTextureMode, [], :void
    attach_function :EndTextureMode, [], :void

    # Screen-space-related functions

    attach_function :GetMouseRay, [Vector2.by_value, Camera.by_value], Ray.by_value
    attach_function :GetWorldToScreen, [Vector3.by_value, Camera.by_value], Vector2.by_value
    attach_function :GetCameraMatrix, [Camera.by_value], Matrix.by_value

    # Timing-related functions

    attach_function :SetTargetFPS, [:int], :void
    attach_function :GetFPS, [], :int
    attach_function :GetFrameTime, [], :float

    # Color-related functions

    attach_function :ColorToInt, [Color.by_value], :int
    attach_function :ColorNormalize, [Color.by_value], Vector4.by_value
    attach_function :ColorToHSV, [Color.by_value], Vector3.by_value
    attach_function :GetColor, [:int], Color.by_value
    attach_function :Fade, [Color.by_value, :float], Color.by_value

    # Misc. functions

    attach_function :ShowLogo, [], :void
    attach_function :SetConfigFlags, [], :void
    attach_function :SetTraceLog, [], :void
    attach_function :TraceLog, [:int], :void
    attach_function :TakeScreenshot, [], :void
    attach_function :GetRandomValue, [:int, :int], :int

    # Files management functions

    attach_function :IsFileExtension, [], :bool
    attach_function :ChangeDirectory, [], :bool
    attach_function :IsFileDropped, [], :bool
    attach_function :ClearDroppedFiles, [], :void

    # Persistent storage management

    attach_function :StorageSaveValue, [:int, :int], :void
    attach_function :StorageLoadValue, [:int], :int

    # Input-related functions: keyboard

    attach_function :IsKeyPressed, [:int], :bool
    attach_function :IsKeyDown, [:int], :bool
    attach_function :IsKeyReleased, [:int], :bool
    attach_function :IsKeyUp, [:int], :bool
    attach_function :GetKeyPressed, [], :int
    attach_function :SetExitKey, [:int], :void

    # Input-related functions: gamepads

    attach_function :IsGamepadAvailable, [:int], :bool
    attach_function :IsGamepadName, [:int], :bool
    attach_function :IsGamepadButtonPressed, [:int, :int], :bool
    attach_function :IsGamepadButtonDown, [:int, :int], :bool
    attach_function :IsGamepadButtonReleased, [:int, :int], :bool
    attach_function :IsGamepadButtonUp, [:int, :int], :bool
    attach_function :GetGamepadButtonPressed, [], :int
    attach_function :GetGamepadAxisCount, [:int], :int
    attach_function :GetGamepadAxisMovement, [:int, :int], :float

    # Input-related functions: mouse

    attach_function :IsMouseButtonPressed, [:int], :bool
    attach_function :IsMouseButtonDown, [:int], :bool
    attach_function :IsMouseButtonReleased, [:int], :bool
    attach_function :IsMouseButtonUp, [:int], :bool
    attach_function :GetMouseX, [], :int
    attach_function :GetMouseY, [], :int
    attach_function :GetMousePosition, [], Vector2.by_value
    attach_function :SetMousePosition, [Vector2.by_value], :void
    attach_function :GetMouseWheelMove, [], :int

    # Input-related functions: touch

    attach_function :GetTouchX, [], :int
    attach_function :GetTouchY, [], :int
    attach_function :GetTouchPosition, [:int], Vector2.by_value

    # Gestures-related functions

    attach_function :SetGesturesEnabled, [:int], :void
    attach_function :IsGestureDetected, [:int], :bool
    attach_function :GetGestureDetected, [], :int
    attach_function :GetTouchPointsCount, [], :int
    attach_function :GetGestureHoldDuration, [], :float
    attach_function :GetGestureDragVector, [], Vector2.by_value
    attach_function :GetGestureDragAngle, [], :float
    attach_function :GetGesturePinchVector, [], Vector2.by_value
    attach_function :GetGesturePinchAngle, [], :float

    # Camera-related functions

    attach_function :SetCameraMode, [Camera.by_value, :int], :void
    attach_function :UpdateCamera, [Camera], :void
    attach_function :SetCameraPanControl, [:int], :void
    attach_function :SetCameraAltControl, [:int], :void
    attach_function :SetCameraSmoothZoomControl, [:int], :void
    attach_function :SetCameraMoveControls, [:int, :int], :void

    # Basic shapes drawing functions

    attach_function :DrawPixel, [:int, :int, Color.by_value], :void
    attach_function :DrawPixelV, [Vector2.by_value, Color.by_value], :void
    attach_function :DrawLine, [:int, :int, :int, :int, Color.by_value], :void
    attach_function :DrawLineV, [Vector2.by_value, Vector2.by_value, Color.by_value], :void
    attach_function :DrawLineEx, [Vector2.by_value, Vector2.by_value, :float, Color.by_value], :void
    attach_function :DrawLineBezier, [Vector2.by_value, Vector2.by_value, :float, Color.by_value], :void
    attach_function :DrawCircle, [:int, :int, :float, Color.by_value], :void
    attach_function :DrawCircleGradient, [:int, :int, :float, Color.by_value, Color.by_value], :void
    attach_function :DrawCircleV, [Vector2.by_value, :float, Color.by_value], :void
    attach_function :DrawCircleLines, [:int, :int, :float, Color.by_value], :void
    attach_function :DrawRectangle, [:int, :int, :int, :int, Color.by_value], :void
    attach_function :DrawRectangleV, [Vector2.by_value, Vector2.by_value, Color.by_value], :void
    attach_function :DrawRectangleRec, [Rectangle.by_value, Color.by_value], :void
    attach_function :DrawRectanglePro, [Rectangle.by_value, Vector2.by_value, :float, Color.by_value], :void
    attach_function :DrawRectangleGradientV, [:int, :int, :int, :int, Color.by_value, Color.by_value], :void
    attach_function :DrawRectangleGradientH, [:int, :int, :int, :int, Color.by_value, Color.by_value], :void
    attach_function :DrawRectangleGradientEx, [Rectangle.by_value, Color.by_value, Color.by_value, Color.by_value, Color.by_value], :void
    attach_function :DrawRectangleLines, [:int, :int, :int, :int, Color.by_value], :void
    attach_function :DrawRectangleLinesEx, [Rectangle.by_value, :int, Color.by_value], :void
    attach_function :DrawTriangle, [Vector2.by_value, Vector2.by_value, Vector2.by_value, Color.by_value], :void
    attach_function :DrawTriangleLines, [Vector2.by_value, Vector2.by_value, Vector2.by_value, Color.by_value], :void
    attach_function :DrawPoly, [Vector2.by_value, :int, :float, :float, Color.by_value], :void
    attach_function :DrawPolyEx, [Vector2.by_value, :int, Color.by_value], :void
    attach_function :DrawPolyExLines, [Vector2.by_value, :int, Color.by_value], :void

    # Basic shapes collision detection functions

    attach_function :CheckCollisionRecs, [Rectangle.by_value, Rectangle.by_value], :bool
    attach_function :CheckCollisionCircles, [Vector2.by_value, :float, Vector2.by_value, :float], :bool
    attach_function :CheckCollisionCircleRec, [Vector2.by_value, :float, Rectangle.by_value], :bool
    attach_function :GetCollisionRec, [Rectangle.by_value, Rectangle.by_value], Rectangle.by_value
    attach_function :CheckCollisionPointRec, [Vector2.by_value, Rectangle.by_value], :bool
    attach_function :CheckCollisionPointCircle, [Vector2.by_value, Vector2.by_value, :float], :bool
    attach_function :CheckCollisionPointTriangle, [Vector2.by_value, Vector2.by_value, Vector2.by_value, Vector2.by_value], :bool

    # Image/Texture2D data loading/unloading/saving functions

    attach_function :LoadImage, [:string], Image.by_value
    attach_function :LoadImageEx, [Color.by_value, :int, :int], Image.by_value
    attach_function :LoadImagePro, [:int, :int, :int], Image.by_value
    attach_function :LoadImageRaw, [:int, :int, :int, :int], Image.by_value
    attach_function :ExportImage, [Image.by_value], :void
    attach_function :LoadTexture, [:string], Texture2D.by_value
    attach_function :LoadTextureFromImage, [Image.by_value], Texture2D.by_value
    attach_function :UnloadImage, [Image.by_value], :void
    attach_function :UnloadTexture, [Texture2D.by_value], :void
    attach_function :UnloadRenderTexture, [], :void
    attach_function :GetImageData, [Image.by_value], :pointer
    attach_function :GetImageDataNormalized, [Image.by_value], :pointer
    attach_function :GetPixelDataSize, [:int, :int, :int], :int
    attach_function :GetTextureData, [Texture2D.by_value], Image.by_value
    attach_function :UpdateTexture, [Texture2D.by_value], :void

    # Image manipulation functions

    attach_function :ImageCopy, [Image.by_value], Image.by_value
    attach_function :ImageToPOT, [Image.by_value, Color.by_value], :void
    attach_function :ImageFormat, [Image.by_value, :int], :void
    attach_function :ImageAlphaMask, [Image.by_value, Image.by_value], :void
    attach_function :ImageAlphaClear, [Image.by_value, Color.by_value, :float], :void
    attach_function :ImageAlphaCrop, [Image.by_value, :float], :void
    attach_function :ImageAlphaPremultiply, [Image.by_value], :void
    attach_function :ImageCrop, [Image.by_value, Rectangle.by_value], :void
    attach_function :ImageResize, [Image.by_value, :int, :int], :void
    attach_function :ImageResizeNN, [Image.by_value, :int], :void
    attach_function :ImageResizeCanvas, [Image.by_value, :int, :int], :void
    attach_function :ImageMipmaps, [Image.by_value], :void
    attach_function :ImageDither, [Image.by_value, :int, :int, :int, :int], :void
    attach_function :ImageText, [:int, Color.by_value], Image.by_value
    attach_function :ImageTextEx, [Font.by_value, :float, :float, Color.by_value], Image.by_value
    attach_function :ImageDraw, [Image.by_value, Image.by_value, Rectangle.by_value, Rectangle.by_value], :void
    attach_function :ImageDrawRectangle, [Image.by_value, Vector2.by_value, Rectangle.by_value, Color.by_value], :void
    attach_function :ImageDrawText, [Image.by_value, Vector2.by_value, :int, Color.by_value], :void
    attach_function :ImageDrawTextEx, [Image.by_value, Vector2.by_value, Font.by_value], :void
    attach_function :ImageFlipVertical, [Image.by_value], :void
    attach_function :ImageFlipHorizontal, [Image.by_value], :void
    attach_function :ImageRotateCW, [Image.by_value], :void
    attach_function :ImageRotateCCW, [Image.by_value], :void
    attach_function :ImageColorTint, [Image.by_value, Color.by_value], :void
    attach_function :ImageColorInvert, [Image.by_value], :void
    attach_function :ImageColorGrayscale, [Image.by_value], :void
    attach_function :ImageColorContrast, [Image.by_value, :float], :void
    attach_function :ImageColorBrightness, [Image.by_value, :int], :void
    attach_function :ImageColorReplace, [Image.by_value, Color.by_value, Color.by_value], :void

    # Image generation functions

    attach_function :GenImageColor, [:int, :int, Color.by_value], Image.by_value
    attach_function :GenImageGradientV, [:int, :int, Color.by_value, Color.by_value], Image.by_value
    attach_function :GenImageGradientH, [:int, :int, Color.by_value, Color.by_value], Image.by_value
    attach_function :GenImageGradientRadial, [:int, :int, :float, Color.by_value, Color.by_value], Image.by_value
    attach_function :GenImageChecked, [:int, :int, :int, :int, Color.by_value, Color.by_value], Image.by_value
    attach_function :GenImageWhiteNoise, [:int, :int, :float], Image.by_value
    attach_function :GenImagePerlinNoise, [:int, :int, :int, :int, :float], Image.by_value
    attach_function :GenImageCellular, [:int, :int, :int], Image.by_value

    # Texture2D configuration functions

    attach_function :GenTextureMipmaps, [Texture2D.by_value], :void
    attach_function :SetTextureFilter, [Texture2D.by_value, :int], :void
    attach_function :SetTextureWrap, [Texture2D.by_value, :int], :void

    # Texture2D drawing functions

    attach_function :DrawTexture, [Texture2D.by_value, :int, :int, Color.by_value], :void
    attach_function :DrawTextureV, [Texture2D.by_value, Vector2.by_value, Color.by_value], :void
    attach_function :DrawTextureEx, [Texture2D.by_value, Vector2.by_value, :float, :float, Color.by_value], :void
    attach_function :DrawTextureRec, [Texture2D.by_value, Rectangle.by_value, Vector2.by_value, Color.by_value], :void
    attach_function :DrawTexturePro, [Texture2D.by_value, Rectangle.by_value, Rectangle.by_value, Vector2.by_value], :void
    
    
    # Font loading/unloading functions

    attach_function :GetFontDefault, [], Font.by_value
    attach_function :LoadFont, [], Font.by_value
    attach_function :LoadFontEx, [:int, :int, :int], Font.by_value
    attach_function :LoadFontData, [:int, :int, :int, :bool], CharInfo
    attach_function :GenImageFontAtlas, [CharInfo.by_value, :int, :int, :int, :int], Image.by_value
    attach_function :UnloadFont, [Font.by_value], :void

    # Text drawing functions

    attach_function :DrawFPS, [:int, :int], :void
    attach_function :DrawText, [:string, :int, :int, :int, Color.by_value], :void
    attach_function :DrawTextEx, [:string, Font.by_value, :string, Vector2.by_value, :float, :float, Color.by_value], :void

    # Text misc. functions

    attach_function :MeasureText, [:string, :int], :int
    attach_function :MeasureTextEx, [:string, Font.by_value, :float, :float], Vector2.by_value
    attach_function :GetGlyphIndex, [Font.by_value, :int], :int

    # Basic geometric 3D shapes drawing functions

    attach_function :DrawLine3D, [Vector3.by_value, Vector3.by_value, Color.by_value], :void
    attach_function :DrawCircle3D, [Vector3.by_value, :float, Vector3.by_value], :void
    attach_function :DrawCube, [Vector3.by_value, :float, :float, :float, Color.by_value], :void
    attach_function :DrawCubeV, [Vector3.by_value, Vector3.by_value, Color.by_value], :void
    attach_function :DrawCubeWires, [Vector3.by_value, :float, :float, :float, Color.by_value], :void
    attach_function :DrawCubeTexture, [Vector3.by_value, :float], :void
    attach_function :DrawSphere, [Vector3.by_value, :float, Color.by_value], :void
    attach_function :DrawSphereEx, [Vector3.by_value, :float, :int, :int, Color.by_value], :void
    attach_function :DrawSphereWires, [Vector3.by_value, :float, :int, :int, Color.by_value], :void
    attach_function :DrawCylinder, [Vector3.by_value, :float, :float], :void
    attach_function :DrawCylinderWires, [Vector3.by_value, :float, :float], :void
    attach_function :DrawPlane, [Vector3.by_value, Vector2.by_value, Color.by_value], :void
    attach_function :DrawRay, [Ray.by_value, Color.by_value], :void
    attach_function :DrawGrid, [:int, :float], :void
    attach_function :DrawGizmo, [Vector3.by_value], :void

    # Model loading/unloading functions

    attach_function :LoadModel, [:string], Model.by_value
    attach_function :LoadModelFromMesh, [Mesh.by_value], Model.by_value
    attach_function :UnloadModel, [Model.by_value], :void

    # Mesh loading/unloading functions

    attach_function :LoadMesh, [], Mesh.by_value
    attach_function :UnloadMesh, [Mesh.by_value], :void
    attach_function :ExportMesh, [Mesh.by_value], :void

    # Mesh manipulation functions

    attach_function :MeshTangents, [Mesh.by_value], :void
    attach_function :MeshBinormals, [Mesh.by_value], :void

    # Mesh generation functions

    attach_function :GenMeshPlane, [:float, :float, :int, :int], Mesh.by_value
    attach_function :GenMeshCube, [:float, :float, :float], Mesh.by_value
    attach_function :GenMeshSphere, [:float, :int, :int], Mesh.by_value
    attach_function :GenMeshHemiSphere, [:float, :int, :int], Mesh.by_value
    attach_function :GenMeshCylinder, [:float, :float, :int], Mesh.by_value
    attach_function :GenMeshTorus, [:float, :float, :int, :int], Mesh.by_value
    attach_function :GenMeshKnot, [:float, :float, :int, :int], Mesh.by_value
    attach_function :GenMeshHeightmap, [Image.by_value, Vector3.by_value], Mesh.by_value
    attach_function :GenMeshCubicmap, [Image.by_value, Vector3.by_value], Mesh.by_value

    # Material loading/unloading functions

    attach_function :LoadMaterial, [], Material.by_value
    attach_function :LoadMaterialDefault, [], Material.by_value
    attach_function :UnloadMaterial, [Material.by_value], :void

    # Model drawing functions

    attach_function :DrawModel, [Model.by_value, Vector3.by_value, :float, Color.by_value], :void
    attach_function :DrawModelEx, [Model.by_value, Vector3.by_value, Vector3.by_value], :void
    attach_function :DrawModelWires, [Model.by_value, Vector3.by_value, :float, Color.by_value], :void
    attach_function :DrawModelWiresEx, [Model.by_value, Vector3.by_value, Vector3.by_value], :void
    attach_function :DrawBoundingBox, [Color.by_value], :void
    attach_function :DrawBillboard, [Camera.by_value, Vector3.by_value, :float, Color.by_value], :void
    attach_function :DrawBillboardRec, [Camera.by_value, Rectangle.by_value], :void

    # Collision detection functions

    attach_function :CheckCollisionSpheres, [Vector3.by_value, :float, Vector3.by_value, :float], :bool
    attach_function :CheckCollisionBoxes, [Vector3.by_value, Vector3.by_value, Vector3.by_value, Vector3.by_value], :bool
    attach_function :CheckCollisionBoxSphere, [Vector3.by_value, Vector3.by_value, Vector3.by_value, :float], :bool
    attach_function :CheckCollisionRaySphere, [Ray.by_value, Vector3.by_value, :float], :bool
    attach_function :CheckCollisionRaySphereEx, [Ray.by_value, Vector3.by_value, :float, Vector3.by_value], :bool
    attach_function :CheckCollisionRayBox, [Ray.by_value, BoundingBox.by_value], :bool
    attach_function :GetCollisionRayModel, [Ray.by_value, Model.by_value], RayHitInfo.by_value
    attach_function :GetCollisionRayTriangle, [Ray.by_value, Vector3.by_value, Vector3.by_value, Vector3.by_value], RayHitInfo.by_value
    attach_function :GetCollisionRayGround, [Ray.by_value, :float], RayHitInfo.by_value

    # Shader loading/unloading functions

    attach_function :LoadShader, [], Shader.by_value
    attach_function :LoadShaderCode, [], Shader.by_value
    attach_function :UnloadShader, [Shader.by_value], :void
    attach_function :GetShaderDefault, [], Shader.by_value

    # Shader access functions

    attach_function :GetShaderLocation, [Shader.by_value], :int
    attach_function :SetShaderValue, [Shader.by_value, :int, :float, :int], :void
    attach_function :SetShaderValuei, [Shader.by_value, :int, :int, :int], :void
    attach_function :SetShaderValueMatrix, [Shader.by_value, :int, Matrix.by_value], :void
    attach_function :SetMatrixProjection, [Matrix.by_value], :void
    attach_function :SetMatrixModelview, [Matrix.by_value], :void
    attach_function :GetMatrixModelview, [], Matrix.by_value

    # Shading beegin/end functions

    attach_function :BeginShaderMode, [Shader.by_value], :void
    attach_function :EndShaderMode, [], :void
    attach_function :BeginBlendMode, [:int], :void
    attach_function :EndBlendMode, [], :void

    # VR control functions

    attach_function :InitVrSimulator, [], :void
    attach_function :CloseVrSimulator, [], :void
    attach_function :IsVrSimulatorReady, [], :bool
    attach_function :UpdateVrTracking, [Camera.by_value], :void
    attach_function :ToggleVrMode, [], :void
    attach_function :BeginVrDrawing, [], :void
    attach_function :EndVrDrawing, [], :void

    # Audio device management functions

    attach_function :InitAudioDevice, [], :void
    attach_function :CloseAudioDevice, [], :void
    attach_function :IsAudioDeviceReady, [], :bool
    attach_function :SetMasterVolume, [:float], :void

    # Wave/Sound loading/unloading functions

    attach_function :LoadWave, [], Wave.by_value
    attach_function :LoadWaveEx, [:float, :int, :int], Wave.by_value
    attach_function :LoadSound, [], Sound.by_value
    attach_function :LoadSoundFromWave, [Wave.by_value], Sound.by_value
    attach_function :UpdateSound, [Sound.by_value, :int], :void
    attach_function :UnloadWave, [Wave.by_value], :void
    attach_function :UnloadSound, [Sound.by_value], :void

    # Wave/Sound management functions

    attach_function :PlaySound, [Sound.by_value], :void
    attach_function :PauseSound, [Sound.by_value], :void
    attach_function :ResumeSound, [Sound.by_value], :void
    attach_function :StopSound, [Sound.by_value], :void
    attach_function :IsSoundPlaying, [Sound.by_value], :bool
    attach_function :SetSoundVolume, [Sound.by_value, :float], :void
    attach_function :SetSoundPitch, [Sound.by_value, :float], :void
    attach_function :WaveFormat, [Wave.by_value, :int, :int, :int], :void
    attach_function :WaveCopy, [Wave.by_value], Wave.by_value
    attach_function :WaveCrop, [Wave.by_value, :int, :int], :void
    attach_function :GetWaveData, [Wave.by_value], :pointer

    # Music management functions
=begin
    attach_function :LoadMusicStream, [], Music.by_value
    attach_function :UnloadMusicStream, [Music.by_value], :void
    attach_function :PlayMusicStream, [Music.by_value], :void
    attach_function :UpdateMusicStream, [Music.by_value], :void
    attach_function :StopMusicStream, [Music.by_value], :void
    attach_function :PauseMusicStream, [Music.by_value], :void
    attach_function :ResumeMusicStream, [Music.by_value], :void
    attach_function :IsMusicPlaying, [Music.by_value], :bool
    attach_function :SetMusicVolume, [Music.by_value, :float], :void
    attach_function :SetMusicPitch, [Music.by_value, :float], :void
    attach_function :SetMusicLoopCount, [Music.by_value, :float], :void
    attach_function :GetMusicTimeLength, [Music.by_value], :float
    attach_function :GetMusicTimePlayed, [Music.by_value], :float

    # AudioStream management functions

    attach_function :InitAudioStream, [:int, :int], AudioStream.by_value
    attach_function :UpdateAudioStream, [AudioStream.by_value, :int], :void
    attach_function :CloseAudioStream, [AudioStream.by_value], :void
    attach_function :IsAudioBufferProcessed, [AudioStream.by_value], :bool
    attach_function :PlayAudioStream, [AudioStream.by_value], :void
    attach_function :PauseAudioStream, [AudioStream.by_value], :void
    attach_function :ResumeAudioStream, [AudioStream.by_value], :void
    attach_function :StopAudioStream, [AudioStream.by_value], :void
=end
    class << self
        alias :init_window :InitWindow
        alias :close_window :CloseWindow
        alias :is_window_ready :IsWindowReady
        alias :window_should_close :WindowShouldClose
        alias :is_window_minimized :IsWindowMinimized
        alias :toggle_fullscreen :ToggleFullscreen
        alias :set_window_icon :SetWindowIcon
        alias :set_window_title :SetWindowTitle
        alias :set_window_position :SetWindowPosition
        alias :set_window_monitor :SetWindowMonitor
        alias :set_window_min_size :SetWindowMinSize
        alias :set_window_size :SetWindowSize
        alias :get_screen_width :GetScreenWidth
        alias :get_screen_height :GetScreenHeight
        alias :show_cursor :ShowCursor
        alias :hide_cursor :HideCursor
        alias :is_cursor_hidden :IsCursorHidden
        alias :enable_cursor :EnableCursor
        alias :disable_cursor :DisableCursor
        alias :clear_background :ClearBackground
        alias :begin_drawing :BeginDrawing
        alias :end_drawing :EndDrawing
        alias :begin_mode_2d :BeginMode2D
        alias :end_mode_2d :EndMode2D
        alias :begin_mode_3d :BeginMode3D
        alias :end_mode_3d :EndMode3D
        alias :begin_texture_mode :BeginTextureMode
        alias :end_texture_mode :EndTextureMode
        alias :get_mouse_ray :GetMouseRay
        alias :get_world_to_screen :GetWorldToScreen
        alias :get_camera_matrix :GetCameraMatrix
        alias :set_target_fps :SetTargetFPS
        alias :get_fps :GetFPS
        alias :get_frame_time :GetFrameTime
        alias :color_to_int :ColorToInt
        alias :color_normalize :ColorNormalize
        alias :color_to_h_s_v :ColorToHSV
        alias :get_color :GetColor
        alias :fade :Fade
        alias :show_logo :ShowLogo
        alias :set_config_flags :SetConfigFlags
        alias :set_trace_log :SetTraceLog
        alias :trace_log :TraceLog
        alias :take_screenshot :TakeScreenshot
        alias :get_random_value :GetRandomValue
        alias :is_file_extension :IsFileExtension
        alias :change_directory :ChangeDirectory
        alias :is_file_dropped :IsFileDropped
        alias :clear_dropped_files :ClearDroppedFiles
        alias :storage_save_value :StorageSaveValue
        alias :storage_load_value :StorageLoadValue
        alias :is_key_pressed :IsKeyPressed
        alias :is_key_down :IsKeyDown
        alias :is_key_released :IsKeyReleased
        alias :is_key_up :IsKeyUp
        alias :get_key_pressed :GetKeyPressed
        alias :set_exit_key :SetExitKey
        alias :is_gamepad_available :IsGamepadAvailable
        alias :is_gamepad_name :IsGamepadName
        alias :is_gamepad_button_pressed :IsGamepadButtonPressed
        alias :is_gamepad_button_down :IsGamepadButtonDown
        alias :is_gamepad_button_released :IsGamepadButtonReleased
        alias :is_gamepad_button_up :IsGamepadButtonUp
        alias :get_gamepad_button_pressed :GetGamepadButtonPressed
        alias :get_gamepad_axis_count :GetGamepadAxisCount
        alias :get_gamepad_axis_movement :GetGamepadAxisMovement
        alias :is_mouse_button_pressed :IsMouseButtonPressed
        alias :is_mouse_button_down :IsMouseButtonDown
        alias :is_mouse_button_released :IsMouseButtonReleased
        alias :is_mouse_button_up :IsMouseButtonUp
        alias :get_mouse_x :GetMouseX
        alias :get_mouse_y :GetMouseY
        alias :get_mouse_position :GetMousePosition
        alias :set_mouse_position :SetMousePosition
        alias :get_mouse_wheel_move :GetMouseWheelMove
        alias :get_touch_x :GetTouchX
        alias :get_touch_y :GetTouchY
        alias :get_touch_position :GetTouchPosition
        alias :set_gestures_enabled :SetGesturesEnabled
        alias :is_gesture_detected :IsGestureDetected
        alias :get_gesture_detected :GetGestureDetected
        alias :get_touch_points_count :GetTouchPointsCount
        alias :get_gesture_hold_duration :GetGestureHoldDuration
        alias :get_gesture_drag_vector :GetGestureDragVector
        alias :get_gesture_drag_angle :GetGestureDragAngle
        alias :get_gesture_pinch_vector :GetGesturePinchVector
        alias :get_gesture_pinch_angle :GetGesturePinchAngle
        alias :set_camera_mode :SetCameraMode
        alias :update_camera :UpdateCamera
        alias :set_camera_pan_control :SetCameraPanControl
        alias :set_camera_alt_control :SetCameraAltControl
        alias :set_camera_smooth_zoom_control :SetCameraSmoothZoomControl
        alias :set_camera_move_controls :SetCameraMoveControls
        alias :draw_pixel :DrawPixel
        alias :draw_pixel_v :DrawPixelV
        alias :draw_line :DrawLine
        alias :draw_line_v :DrawLineV
        alias :draw_line_ex :DrawLineEx
        alias :draw_line_bezier :DrawLineBezier
        alias :draw_circle :DrawCircle
        alias :draw_circle_gradient :DrawCircleGradient
        alias :draw_circle_v :DrawCircleV
        alias :draw_circle_lines :DrawCircleLines
        alias :draw_rectangle :DrawRectangle
        alias :draw_rectangle_v :DrawRectangleV
        alias :draw_rectangle_rec :DrawRectangleRec
        alias :draw_rectangle_pro :DrawRectanglePro
        alias :draw_rectangle_gradient_v :DrawRectangleGradientV
        alias :draw_rectangle_gradient_h :DrawRectangleGradientH
        alias :draw_rectangle_gradient_ex :DrawRectangleGradientEx
        alias :draw_rectangle_lines :DrawRectangleLines
        alias :draw_rectangle_lines_ex :DrawRectangleLinesEx
        alias :draw_triangle :DrawTriangle
        alias :draw_triangle_lines :DrawTriangleLines
        alias :draw_poly :DrawPoly
        alias :draw_poly_ex :DrawPolyEx
        alias :draw_poly_ex_lines :DrawPolyExLines
        alias :check_collision_recs :CheckCollisionRecs
        alias :check_collision_circles :CheckCollisionCircles
        alias :check_collision_circle_rec :CheckCollisionCircleRec
        alias :get_collision_rec :GetCollisionRec
        alias :check_collision_point_rec :CheckCollisionPointRec
        alias :check_collision_point_circle :CheckCollisionPointCircle
        alias :check_collision_point_triangle :CheckCollisionPointTriangle
        # module: textures
        alias :load_image :LoadImage
        alias :load_image_ex :LoadImageEx
        alias :load_image_pro :LoadImagePro
        alias :load_image_raw :LoadImageRaw
        alias :export_image :ExportImage
        alias :load_texture :LoadTexture
        alias :load_texture_from_image :LoadTextureFromImage
        alias :unload_image :UnloadImage
        alias :unload_texture :UnloadTexture
        alias :unload_render_texture :UnloadRenderTexture
        alias :get_image_data :GetImageData
        alias :get_image_data_normalized :GetImageDataNormalized
        alias :get_pixel_data_size :GetPixelDataSize
        alias :get_texture_data :GetTextureData
        alias :update_texture :UpdateTexture
        alias :image_copy :ImageCopy
        alias :image_to_p_o_t :ImageToPOT
        alias :image_format :ImageFormat
        alias :image_alpha_mask :ImageAlphaMask
        alias :image_alpha_clear :ImageAlphaClear
        alias :image_alpha_crop :ImageAlphaCrop
        alias :image_alpha_premultiply :ImageAlphaPremultiply
        alias :image_crop :ImageCrop
        alias :image_resize :ImageResize
        alias :image_resize_n_n :ImageResizeNN
        alias :image_resize_canvas :ImageResizeCanvas
        alias :image_mipmaps :ImageMipmaps
        alias :image_dither :ImageDither
        alias :image_text :ImageText
        alias :image_text_ex :ImageTextEx
        alias :image_draw :ImageDraw
        alias :image_draw_rectangle :ImageDrawRectangle
        alias :image_draw_text :ImageDrawText
        alias :image_draw_text_ex :ImageDrawTextEx
        alias :image_flip_vertical :ImageFlipVertical
        alias :image_flip_horizontal :ImageFlipHorizontal
        alias :image_rotate_c_w :ImageRotateCW
        alias :image_rotate_c_c_w :ImageRotateCCW
        alias :image_color_tint :ImageColorTint
        alias :image_color_invert :ImageColorInvert
        alias :image_color_grayscale :ImageColorGrayscale
        alias :image_color_contrast :ImageColorContrast
        alias :image_color_brightness :ImageColorBrightness
        alias :image_color_replace :ImageColorReplace
        alias :gen_image_color :GenImageColor
        alias :gen_image_gradient_v :GenImageGradientV
        alias :gen_image_gradient_h :GenImageGradientH
        alias :gen_image_gradient_radial :GenImageGradientRadial
        alias :gen_image_checked :GenImageChecked
        alias :gen_image_white_noise :GenImageWhiteNoise
        alias :gen_image_perlin_noise :GenImagePerlinNoise
        alias :gen_image_cellular :GenImageCellular
        alias :gen_texture_mipmaps :GenTextureMipmaps
        alias :set_texture_filter :SetTextureFilter
        alias :set_texture_wrap :SetTextureWrap
        alias :draw_texture :DrawTexture
        alias :draw_texture_v :DrawTextureV
        alias :draw_texture_ex :DrawTextureEx
        alias :draw_texture_rec :DrawTextureRec
        alias :draw_texture_pro :DrawTexturePro
        # module: text
        alias :get_font_default :GetFontDefault
        alias :load_font :LoadFont
        alias :load_font_ex :LoadFontEx
        alias :load_font_data :LoadFontData
        alias :gen_image_font_atlas :GenImageFontAtlas
        alias :unload_font :UnloadFont
        alias :draw_fps :DrawFPS
        alias :draw_text :DrawText
        alias :draw_text_ex :DrawTextEx
        alias :measure_text :MeasureText
        alias :measure_text_ex :MeasureTextEx
        alias :get_glyph_index :GetGlyphIndex
        alias :draw_line_3d :DrawLine3D
        alias :draw_circle_3d :DrawCircle3D
        alias :draw_cube :DrawCube
        alias :draw_cube_v :DrawCubeV
        alias :draw_cube_wires :DrawCubeWires
        alias :draw_cube_texture :DrawCubeTexture
        alias :draw_sphere :DrawSphere
        alias :draw_sphere_ex :DrawSphereEx
        alias :draw_sphere_wires :DrawSphereWires
        alias :draw_cylinder :DrawCylinder
        alias :draw_cylinder_wires :DrawCylinderWires
        alias :draw_plane :DrawPlane
        alias :draw_ray :DrawRay
        alias :draw_grid :DrawGrid
        alias :draw_gizmo :DrawGizmo
        alias :load_model :LoadModel
        alias :load_model_from_mesh :LoadModelFromMesh
        alias :unload_model :UnloadModel
        alias :load_mesh :LoadMesh
        alias :unload_mesh :UnloadMesh
        alias :export_mesh :ExportMesh
        alias :mesh_tangents :MeshTangents
        alias :mesh_binormals :MeshBinormals
        alias :gen_mesh_plane :GenMeshPlane
        alias :gen_mesh_cube :GenMeshCube
        alias :gen_mesh_sphere :GenMeshSphere
        alias :gen_mesh_hemi_sphere :GenMeshHemiSphere
        alias :gen_mesh_cylinder :GenMeshCylinder
        alias :gen_mesh_torus :GenMeshTorus
        alias :gen_mesh_knot :GenMeshKnot
        alias :gen_mesh_heightmap :GenMeshHeightmap
        alias :gen_mesh_cubicmap :GenMeshCubicmap
        alias :load_material :LoadMaterial
        alias :load_material_default :LoadMaterialDefault
        alias :unload_material :UnloadMaterial
        alias :draw_model :DrawModel
        alias :draw_model_ex :DrawModelEx
        alias :draw_model_wires :DrawModelWires
        alias :draw_model_wires_ex :DrawModelWiresEx
        alias :draw_bounding_box :DrawBoundingBox
        alias :draw_billboard :DrawBillboard
        alias :draw_billboard_rec :DrawBillboardRec
        alias :check_collision_spheres :CheckCollisionSpheres
        alias :check_collision_boxes :CheckCollisionBoxes
        alias :check_collision_box_sphere :CheckCollisionBoxSphere
        alias :check_collision_ray_sphere :CheckCollisionRaySphere
        alias :check_collision_ray_sphere_ex :CheckCollisionRaySphereEx
        alias :check_collision_ray_box :CheckCollisionRayBox
        alias :get_collision_ray_model :GetCollisionRayModel
        alias :get_collision_ray_triangle :GetCollisionRayTriangle
        alias :get_collision_ray_ground :GetCollisionRayGround
        alias :load_shader :LoadShader
        alias :load_shader_code :LoadShaderCode
        alias :unload_shader :UnloadShader
        alias :get_shader_default :GetShaderDefault
        alias :get_shader_location :GetShaderLocation
        alias :set_shader_value :SetShaderValue
        alias :set_shader_valuei :SetShaderValuei
        alias :set_shader_value_matrix :SetShaderValueMatrix
        alias :set_matrix_projection :SetMatrixProjection
        alias :set_matrix_modelview :SetMatrixModelview
        alias :get_matrix_modelview :GetMatrixModelview
        alias :begin_shader_mode :BeginShaderMode
        alias :end_shader_mode :EndShaderMode
        alias :begin_blend_mode :BeginBlendMode
        alias :end_blend_mode :EndBlendMode
        alias :init_vr_simulator :InitVrSimulator
        alias :close_vr_simulator :CloseVrSimulator
        alias :is_vr_simulator_ready :IsVrSimulatorReady
        alias :update_vr_tracking :UpdateVrTracking
        alias :toggle_vr_mode :ToggleVrMode
        alias :begin_vr_drawing :BeginVrDrawing
        alias :end_vr_drawing :EndVrDrawing
=begin
        alias :init_audio_device :InitAudioDevice
        alias :close_audio_device :CloseAudioDevice
        alias :is_audio_device_ready :IsAudioDeviceReady
        alias :set_master_volume :SetMasterVolume
        alias :load_wave :LoadWave
        alias :load_wave_ex :LoadWaveEx
        alias :load_sound :LoadSound
        alias :load_sound_from_wave :LoadSoundFromWave
        alias :update_sound :UpdateSound
        alias :unload_wave :UnloadWave
        alias :unload_sound :UnloadSound
        alias :play_sound :PlaySound
        alias :pause_sound :PauseSound
        alias :resume_sound :ResumeSound
        alias :stop_sound :StopSound
        alias :is_sound_playing :IsSoundPlaying
        alias :set_sound_volume :SetSoundVolume
        alias :set_sound_pitch :SetSoundPitch
        alias :wave_format :WaveFormat
        alias :wave_copy :WaveCopy
        alias :wave_crop :WaveCrop
        alias :get_wave_data :GetWaveData
        alias :load_music_stream :LoadMusicStream
        alias :unload_music_stream :UnloadMusicStream
        alias :play_music_stream :PlayMusicStream
        alias :update_music_stream :UpdateMusicStream
        alias :stop_music_stream :StopMusicStream
        alias :pause_music_stream :PauseMusicStream
        alias :resume_music_stream :ResumeMusicStream
        alias :is_music_playing :IsMusicPlaying
        alias :set_music_volume :SetMusicVolume
        alias :set_music_pitch :SetMusicPitch
        alias :set_music_loop_count :SetMusicLoopCount
        alias :get_music_time_length :GetMusicTimeLength
        alias :get_music_time_played :GetMusicTimePlayed
        alias :init_audio_stream :InitAudioStream
        alias :update_audio_stream :UpdateAudioStream
        alias :close_audio_stream :CloseAudioStream
        alias :is_audio_buffer_processed :IsAudioBufferProcessed
        alias :play_audio_stream :PlayAudioStream
        alias :pause_audio_stream :PauseAudioStream
        alias :resume_audio_stream :ResumeAudioStream
        alias :stop_audio_stream :StopAudioStream
=end
        private :InitWindow
        private :CloseWindow
        private :IsWindowReady
        private :WindowShouldClose
        private :IsWindowMinimized
        private :ToggleFullscreen
        private :SetWindowIcon
        private :SetWindowTitle
        private :SetWindowPosition
        private :SetWindowMonitor
        private :SetWindowMinSize
        private :SetWindowSize
        private :GetScreenWidth
        private :GetScreenHeight
        private :ShowCursor
        private :HideCursor
        private :IsCursorHidden
        private :EnableCursor
        private :DisableCursor
        private :ClearBackground
        private :BeginDrawing
        private :EndDrawing
        private :BeginMode2D
        private :EndMode2D
        private :BeginMode3D
        private :EndMode3D
        private :BeginTextureMode
        private :EndTextureMode
        private :GetMouseRay
        private :GetWorldToScreen
        private :GetCameraMatrix
        private :SetTargetFPS
        private :GetFPS
        private :GetFrameTime
        private :ColorToInt
        private :ColorNormalize
        private :ColorToHSV
        private :GetColor
        private :Fade
        private :ShowLogo
        private :SetConfigFlags
        private :SetTraceLog
        private :TraceLog
        private :TakeScreenshot
        private :GetRandomValue
        private :IsFileExtension
        private :ChangeDirectory
        private :IsFileDropped
        private :ClearDroppedFiles
        private :StorageSaveValue
        private :StorageLoadValue
        private :IsKeyPressed
        private :IsKeyDown
        private :IsKeyReleased
        private :IsKeyUp
        private :GetKeyPressed
        private :SetExitKey
        private :IsGamepadAvailable
        private :IsGamepadName
        private :IsGamepadButtonPressed
        private :IsGamepadButtonDown
        private :IsGamepadButtonReleased
        private :IsGamepadButtonUp
        private :GetGamepadButtonPressed
        private :GetGamepadAxisCount
        private :GetGamepadAxisMovement
        private :IsMouseButtonPressed
        private :IsMouseButtonDown
        private :IsMouseButtonReleased
        private :IsMouseButtonUp
        private :GetMouseX
        private :GetMouseY
        private :GetMousePosition
        private :SetMousePosition
        private :GetMouseWheelMove
        private :GetTouchX
        private :GetTouchY
        private :GetTouchPosition
        private :SetGesturesEnabled
        private :IsGestureDetected
        private :GetGestureDetected
        private :GetTouchPointsCount
        private :GetGestureHoldDuration
        private :GetGestureDragVector
        private :GetGestureDragAngle
        private :GetGesturePinchVector
        private :GetGesturePinchAngle
        private :SetCameraMode
        private :UpdateCamera
        private :SetCameraPanControl
        private :SetCameraAltControl
        private :SetCameraSmoothZoomControl
        private :SetCameraMoveControls
        private :DrawPixel
        private :DrawPixelV
        private :DrawLine
        private :DrawLineV
        private :DrawLineEx
        private :DrawLineBezier
        private :DrawCircle
        private :DrawCircleGradient
        private :DrawCircleV
        private :DrawCircleLines
        private :DrawRectangle
        private :DrawRectangleV
        private :DrawRectangleRec
        private :DrawRectanglePro
        private :DrawRectangleGradientV
        private :DrawRectangleGradientH
        private :DrawRectangleGradientEx
        private :DrawRectangleLines
        private :DrawRectangleLinesEx
        private :DrawTriangle
        private :DrawTriangleLines
        private :DrawPoly
        private :DrawPolyEx
        private :DrawPolyExLines
        private :CheckCollisionRecs
        private :CheckCollisionCircles
        private :CheckCollisionCircleRec
        private :GetCollisionRec
        private :CheckCollisionPointRec
        private :CheckCollisionPointCircle
        private :CheckCollisionPointTriangle
        private :LoadImage
        private :LoadImageEx
        private :LoadImagePro
        private :LoadImageRaw
        private :ExportImage
        private :UnloadImage
        private :UnloadTexture
        private :UnloadRenderTexture
        private :GetImageData
        private :GetImageDataNormalized
        private :GetPixelDataSize
        private :GetTextureData
        private :UpdateTexture
        private :ImageCopy
        private :ImageToPOT
        private :ImageFormat
        private :ImageAlphaMask
        private :ImageAlphaClear
        private :ImageAlphaCrop
        private :ImageAlphaPremultiply
        private :ImageCrop
        private :ImageResize
        private :ImageResizeNN
        private :ImageResizeCanvas
        private :ImageMipmaps
        private :ImageDither
        private :ImageText
        private :ImageTextEx
        private :ImageDraw
        private :ImageDrawRectangle
        private :ImageDrawText
        private :ImageDrawTextEx
        private :ImageFlipVertical
        private :ImageFlipHorizontal
        private :ImageRotateCW
        private :ImageRotateCCW
        private :ImageColorTint
        private :ImageColorInvert
        private :ImageColorGrayscale
        private :ImageColorContrast
        private :ImageColorBrightness
        private :ImageColorReplace
        private :GenImageColor
        private :GenImageGradientV
        private :GenImageGradientH
        private :GenImageGradientRadial
        private :GenImageChecked
        private :GenImageWhiteNoise
        private :GenImagePerlinNoise
        private :GenImageCellular
        private :GenTextureMipmaps
        private :SetTextureFilter
        private :SetTextureWrap
        private :DrawTexture
        private :DrawTextureV
        private :DrawTextureEx
        private :DrawTextureRec
        private :DrawTexturePro
        private :GetFontDefault
        private :LoadFont
        private :LoadFontEx
        private :LoadFontData
        private :GenImageFontAtlas
        private :UnloadFont
        private :DrawFPS
        private :DrawText
        private :DrawTextEx
        private :MeasureText
        private :MeasureTextEx
        private :GetGlyphIndex
        private :DrawLine3D
        private :DrawCircle3D
        private :DrawCube
        private :DrawCubeV
        private :DrawCubeWires
        private :DrawCubeTexture
        private :DrawSphere
        private :DrawSphereEx
        private :DrawSphereWires
        private :DrawCylinder
        private :DrawCylinderWires
        private :DrawPlane
        private :DrawRay
        private :DrawGrid
        private :DrawGizmo
        private :LoadModel
        private :LoadModelFromMesh
        private :UnloadModel
        private :LoadMesh
        private :UnloadMesh
        private :ExportMesh
        private :MeshTangents
        private :MeshBinormals
        private :GenMeshPlane
        private :GenMeshCube
        private :GenMeshSphere
        private :GenMeshHemiSphere
        private :GenMeshCylinder
        private :GenMeshTorus
        private :GenMeshKnot
        private :GenMeshHeightmap
        private :GenMeshCubicmap
        private :LoadMaterial
        private :LoadMaterialDefault
        private :UnloadMaterial
        private :DrawModel
        private :DrawModelEx
        private :DrawModelWires
        private :DrawModelWiresEx
        private :DrawBoundingBox
        private :DrawBillboard
        private :DrawBillboardRec
        private :CheckCollisionSpheres
        private :CheckCollisionBoxes
        private :CheckCollisionBoxSphere
        private :CheckCollisionRaySphere
        private :CheckCollisionRaySphereEx
        private :CheckCollisionRayBox
        private :GetCollisionRayModel
        private :GetCollisionRayTriangle
        private :GetCollisionRayGround
        private :LoadShader
        private :LoadShaderCode
        private :UnloadShader
        private :GetShaderDefault
        private :GetShaderLocation
        private :SetShaderValue
        private :SetShaderValuei
        private :SetShaderValueMatrix
        private :SetMatrixProjection
        private :SetMatrixModelview
        private :GetMatrixModelview
        private :BeginShaderMode
        private :EndShaderMode
        private :BeginBlendMode
        private :EndBlendMode
        private :InitVrSimulator
        private :CloseVrSimulator
        private :IsVrSimulatorReady
        private :UpdateVrTracking
        private :ToggleVrMode
        private :BeginVrDrawing
        private :EndVrDrawing
=begin
        private :InitAudioDevice
        private :CloseAudioDevice
        private :IsAudioDeviceReady
        private :SetMasterVolume
        private :LoadWave
        private :LoadWaveEx
        private :LoadSound
        private :LoadSoundFromWave
        private :UpdateSound
        private :UnloadWave
        private :UnloadSound
        private :PlaySound
        private :PauseSound
        private :ResumeSound
        private :StopSound
        private :IsSoundPlaying
        private :SetSoundVolume
        private :SetSoundPitch
        private :WaveFormat
        private :WaveCopy
        private :WaveCrop
        private :GetWaveData
        private :LoadMusicStream
        private :UnloadMusicStream
        private :PlayMusicStream
        private :UpdateMusicStream
        private :StopMusicStream
        private :PauseMusicStream
        private :ResumeMusicStream
        private :IsMusicPlaying
        private :SetMusicVolume
        private :SetMusicPitch
        private :SetMusicLoopCount
        private :GetMusicTimeLength
        private :GetMusicTimePlayed
        private :InitAudioStream
        private :UpdateAudioStream
        private :CloseAudioStream
        private :IsAudioBufferProcessed
        private :PlayAudioStream
        private :PauseAudioStream
        private :ResumeAudioStream
        private :StopAudioStream
=end
    end
end