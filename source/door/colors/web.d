module door.colors.web;
import raylib;

// basic colours
enum Color white                = {255, 255, 255, 255};
enum Color silver               = {192, 192, 192, 255};
enum Color gray                 = {128, 128, 128, 255};
enum Color black                = {  0,   0,   0, 255};
enum Color red                  = {255,   0,   0, 255};
enum Color maroon               = {128,   0,   0, 255};
enum Color yellow               = {255, 255,   0, 255};
enum Color olive                = {128, 128,   0, 255};
enum Color lime                 = {  0, 255,   0, 255};
enum Color green                = {  0, 128,   0, 255};
enum Color aqua                 = {  0, 255, 255, 255};
enum Color teal                 = {  0, 128, 128, 255};
enum Color blue                 = {  0,   0, 255, 255};
enum Color navy                 = {  0,   0, 128, 255};
enum Color fuchsia              = {255,   0, 255, 255};
enum Color purple               = {128,   0, 128, 255};

// extended colours, by category starting with blues
enum Color darkBlue             = {  0,   0, 139, 255};
enum Color mediumBlue           = {  0,   0, 205, 255};
enum Color midnightBlue         = { 25,  25, 112, 255};
enum Color royalBlue            = { 65, 105, 225, 255};
enum Color steelBlue            = { 70, 130, 180, 255};
enum Color dodgerBlue           = { 30, 144, 255, 255};
enum Color deepSkyBlue          = {  0, 191, 255, 255};
enum Color cornflowerBlue       = {100, 149, 237, 255};
enum Color skyBlue              = {135, 205, 235, 255};
enum Color lightSkyBlue         = {135, 206, 250, 255};
enum Color lightSteelBlue       = {176, 196, 222, 255};
enum Color lightBlue            = {173, 216, 230, 255};
enum Color powderBlue           = {176, 224, 230, 255};

// browns
enum Color brown                = {165,  42,  42, 255};
enum Color saddleBrown          = {139,  69,  19, 255};
enum Color sienna               = {160,  82,  45, 255};
enum Color chocolate            = {210, 105,  30, 255};
enum Color darkGoldenrod        = {184, 134,  11, 255};
enum Color peru                 = {205, 133,  63, 255};
enum Color rosyBrown            = {188, 143, 143, 255};
enum Color goldenrod            = {218, 165,  32, 255};
enum Color sandyBrown           = {244, 164,  96, 255};
enum Color tan                  = {210, 180, 140, 255};
enum Color burlywood            = {222, 184, 135, 255};
enum Color wheat                = {245, 222, 179, 255};
enum Color navajoWhite          = {255, 222, 173, 255};
enum Color bisque               = {255, 228, 196, 255};
enum Color blanchedAlmond       = {255, 235, 205, 255};
enum Color cornsilk             = {255, 248, 220, 255};

// cyans
enum Color darkCyan             = {  0, 139, 139, 255};
enum Color lightSeaGreen        = { 32, 178, 170, 255};
enum Color cadetBlue            = { 95, 158, 160, 255};
enum Color darkTurquoise        = {  0, 206, 209, 255};
enum Color mediumTurquoise      = { 72, 209, 204, 255};
enum Color turquoise            = { 64, 224, 208, 255};
enum Color aquamarine           = {127, 255, 212, 255};
enum Color paleTurquoise        = {175, 238, 238, 255};
enum Color lightCyan            = {224, 255, 255, 255};

// greens
enum Color darkGreen            = {  0, 100,   0, 255};
enum Color darkOliveGreen       = { 85, 107,  47, 255};
enum Color forestGreen          = { 34, 139,  34, 255};
enum Color seaGreen             = { 46, 139,  87, 255};
enum Color oliveDrab            = {107, 142,  35, 255};
enum Color mediumSeaGreen       = { 60, 179, 133, 255};
enum Color limeGreen            = { 50, 205,  50, 255};
enum Color springGreen          = {  0, 255, 127, 255};
enum Color mediumSpringGreen    = {  0, 250, 154, 255};
enum Color darkSeaGreen         = {143, 188, 143, 255};
enum Color mediumAquamarine     = {102, 205, 170, 255};
enum Color yellowGreen          = {154, 205,  50, 255};
enum Color lawnGreen            = {124, 252,   0, 255};
enum Color chartreuse           = {127, 255,   0, 255};
enum Color lightGreen           = {114, 238, 144, 255};
enum Color greenYellow          = {173, 255,  47, 255};
enum Color paleGreen            = {152, 251, 152, 255};

// greys
enum Color darkSlateGray        = { 47,  79,  79, 255};
enum Color dimGray              = {105, 105, 105, 255};
enum Color slateGray            = {112, 128, 144, 255};
enum Color lightSlateGray       = {119, 136, 153, 255};
enum Color darkGray             = {169, 169, 169, 255};
enum Color lightGray            = {211, 211, 211, 255};
enum Color gainsboro            = {220, 220, 220, 255};

// oranges
enum Color orangeRed            = {255,  69,   0, 255};
enum Color tomato               = {255,  99,  71, 255};
enum Color darkOrange           = {255, 140,   0, 255};
enum Color coral                = {255, 127,  80, 255};
enum Color orange               = {255, 165,   0, 255};

// pinks
enum Color mediumVioletRed      = {199,  21, 133, 255};
enum Color deepPink             = {255,  20, 147, 255};
enum Color paleVioletRed        = {219, 112, 147, 255};
enum Color hotPink              = {255, 105, 180, 255};
enum Color pink                 = {255, 192, 203, 255};

// purples
enum Color indigo               = { 75,   0, 130, 255};
enum Color darkMagenta          = {139,   0, 139, 255};
enum Color darkViolet           = {148,   0, 211, 255};
enum Color darkSlateBlue        = { 72,  61, 139, 255};
enum Color blueViolet           = {138,  43, 226, 255};
enum Color darkOrchid           = {153,  50, 204, 255};
enum Color slateBlue            = {106,  90, 205, 255};
enum Color mediumSlateBlue      = {123, 104, 238, 255};
enum Color mediumOrchid         = {186,  85, 211, 255};
enum Color mediumPurple         = {147, 112, 219, 255};
enum Color orchid               = {218, 112, 214, 255};
enum Color violet               = {238, 130, 238, 255};
enum Color plum                 = {221, 160, 221, 255};
enum Color thistle              = {216, 191, 216, 255};
enum Color lavender             = {230, 230, 250, 255};

// reds
enum Color darkRed              = {139,   0,   0, 255};
enum Color firebrick            = {178,  34,  34, 255};
enum Color crimson              = {220,  20,  60, 255};
enum Color indianRed            = {205,  92,  92, 255};
enum Color lightCoral           = {240, 128, 128, 255};
enum Color salmon               = {250, 128, 114, 255};
enum Color darkSalmon           = {233, 150, 122, 255};
enum Color lightSalmon          = {255, 160, 122, 255};

// whites
enum Color mistyRose            = {255, 228, 225, 255};
enum Color antiqueWhite         = {250, 235, 215, 255};
enum Color linen                = {250, 240, 230, 255};
enum Color beige                = {245, 245, 220, 255};
enum Color whiteSmoke           = {245, 245, 245, 255};
enum Color lavenderBlush        = {255, 240, 245, 255};
enum Color oldLace              = {253, 245, 230, 255};
enum Color aliceBlue            = {240, 248, 255, 255};
enum Color seashell             = {255, 245, 238, 255};
enum Color ghostWhite           = {248, 248, 255, 255};
enum Color honeydew             = {240, 255, 240, 255};
enum Color floralWhite          = {255, 250, 240, 255};
enum Color azure                = {240, 255, 255, 255};
enum Color mintCream            = {245, 255, 250, 255};
enum Color snow                 = {255, 250, 250, 255};
enum Color ivory                = {255, 255, 240, 255};

// yellows
enum Color darkKhaki            = {189, 183, 107, 255};
enum Color gold                 = {255, 215,   0, 255};
enum Color khaki                = {240, 230, 140, 255};
enum Color peachPuff            = {255, 218, 185, 255};
enum Color paleGoldenrod        = {238, 232, 170, 255};
enum Color moccasin             = {255, 228, 181, 255};
enum Color papayaWhip           = {255, 239, 213, 255};
enum Color lightGoldenrodYellow = {250, 250, 210, 255};
enum Color lemonChiffon         = {255, 250, 205, 255};
enum Color lightYellow          = {255, 255, 224, 255};

// other web colors not part of basic nor extended
enum Color transparent          = {  0,   0,   0,   0};
enum Color rebeccaPurple        = {102,  51, 153, 255};
