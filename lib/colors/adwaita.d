module raylib_misc.colors.adwaita;
import raylib;

// Palette Colors
enum Color blue1   = {153, 193, 241, 255};
enum Color blue2   = { 98, 160, 234, 255};
enum Color blue3   = { 53, 132, 228, 255};
enum Color blue4   = { 28, 113, 216, 255};
enum Color blue5   = { 26,  95, 180, 255};

enum Color green1  = {143, 240, 164, 255};
enum Color green2  = { 87, 227, 137, 255};
enum Color green3  = { 51, 209, 122, 255};
enum Color green4  = { 46, 194, 126, 255};
enum Color green5  = { 38, 162, 105, 255};

enum Color yellow1 = {249, 240, 107, 255};
enum Color yellow2 = {248, 228,  92, 255};
enum Color yellow3 = {246, 211,  45, 255};
enum Color yellow4 = {245, 194,  17, 255};
enum Color yellow5 = {229, 165,  10, 255};

enum Color orange1 = {255, 190, 111, 255};
enum Color orange2 = {255, 163,  72, 255};
enum Color orange3 = {255, 120,   0, 255};
enum Color orange4 = {230,  97,   0, 255};
enum Color orange5 = {198,  70,   0, 255};
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 
enum Color 

// Miscellaneous Colors
enum Color shadeLight           = {  0,   0,   0,  18};
enum Color shadeDark            = {  0,   0,   0,  92};
alias scrollbarOutlineLight     = light1;
enum Color scrollbarOutlineDark = {  0,   0,   0, 128};

// Window Colours
enum Color windowBGLight = {250, 250, 250, 255};
enum Color windowBGDark  = { 36,  36,  36, 255};
enum Color windowFGLight = {  0,   0,   0, 204};
alias windowFGDark       = light1;

// View Colours
alias viewBGLight     = light1;
enum Color viewBGDark = { 30,  30,  30, 255};
alias viewFGLight     = windowFGLight;
alias viewFGDark      = light1;

// Headerbar Colours
enum Color headerbarBGLight  = {235, 235, 235, 255};
enum Color headerbarBGDark   = { 48,  48,  48, 255};
alias headerbarFGLight       = windowFGLight;
alias headerbarFGDark        = light1;
alias headerbarBorderLight   = windowFGLight;
alias headerbarBorderDark    = light1;
alias headerbarBackdropLight = windowBGLight;
alias headerbarBackdropDark  = windowBGDark;
alias headerbarShadeLight    = shadeLight;
alias headerbarShadeDark     = shadeDark;

// Sidebar Colours
alias sidebarBGLight             = headerbarBGLight;
alias sidebarBGDark              = headerbarFGDark;
alias sidebarFGLight             = windowFGLight;
alias sidebarFGDark              = light1;
enum Color sidebarBackdropLight  = {242, 242, 242, 255};
enum Color sidebarBackdropDark   = { 42,  42,  42};
alias sidebarShadeLight          = shadeLight;
alias sidebarShadeDark           = shadeDark;
enum Color sidebar2BGLight       = {243, 243, 243, 255};
alias sidebar2BGDark             = sidebarBackdropDark;
alias sidebar2FGLight            = windowFGLight;
alias sidebar2FGDark             = light1;
enum Color sidebar2BackdropLight = {246, 246, 246, 255};
enum Color sidebar2BackdropDark  = { 39,  39,  39, 255};
alias sidebar2ShadeLight         = shadeLight;
alias sidebar2ShadeDark          = shadeDark;

// Card Colours
alias cardBGLight     = light1;
enum Color cardBGDark = {255, 255, 255,  20};
alias cardFGLight     = windowFGLight;
alias cardFGDark      = light1;
alias cardShadeLight  = shadeLight;
alias cardShadeDark   = shadeDark;

// Thumbnail Colours
alias thumbnailBGLight     = light1;
enum Color thumbnailBGDark = { 56,  56,  56, 255};
alias thumbnailFGLight     = windowFGLight;
alias thumbnailFGDark      = light1;

// Dialog Colours
alias dialogBGLight = light1;
alias dialogBGDark  = thumbnailBGDark;
alias dialogFGLight = windowFGLight;
alias dialogFGDark  = light1;

// Popover Colours
alias popoverBGLight = light1;
alias popoverBGDark  = thumbnailBGDark;
alias popoverFGLight = windowFGLight;
alias popoverFGDark  = light1;

// Helper Colours
enum Color regular(Color c)      = {c.r, c.g, c.b,  38};
enum Color highContrast(Color c) = {c.r, c.g, c.b, 128};

// Accent Colours
enum Color accentLight   = { 28, 113, 216, 255};
enum Color accentDark    = {120, 174, 237, 255};
enum Color accentBGLight = { 53, 132, 228, 255};
alias accentBGDark  = accentBGLight;
alias accentFGLight = light1;
alias accentFGDark  = light1;

// Destructive Colours
enum Color destructiveLight   = {192,  28,  40, 255};
enum Color destructiveDark    = {255, 123,  99, 255};
enum Color destructiveBGLight = {224,  27,  36, 255};
alias destructiveBGDark  = destructiveLight;
alias destructiveFGLight = light1;
alias destructiveFGDark  = light1;

// Success Colours
enum Color successLight   = { 27, 133,  83, 255};
enum Color successDark    = {143, 240, 164, 255};
enum Color successBGLight = { 46, 194, 126, 255};
enum Color successBGDark  = { 38, 162, 105, 255};
alias successFGLight = light1;
alias successFGDark  = light1;

// Warning Colours
enum Color warningLight   = {156, 110,   3, 255};
enum Color warningDark    = {248, 228,  92, 255};
enum Color warningBGLight = {229, 165,  10, 255};
enum Color warningBGDark  = {205, 147,   9, 255};
alias warningFGLight = windowFGLight;
alias warningFGDark  = warningFGLight;

// Error Colours
alias errorLight   = destructiveLight;
alias errorDark    = destructiveDark;
alias errorBGLight = destructiveBGLight;
alias errorBGDark  = destructiveBGDark;
alias errorFGLight = destructiveFGLight;
alias errorFGDark  = destructiveFGDark;
