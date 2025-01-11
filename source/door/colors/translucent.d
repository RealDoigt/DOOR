module door.colors.translucent;
import raylib;

enum Color whiteAlpha(ubyte alpha)   = {255, 255, 255, alpha};
enum Color blackAlpha(ubyte alpha)   = {  0,   0,   0, alpha};
enum Color redAlpha(ubyte alpha)     = {255,   0,   0, alpha};
enum Color orangeAlpha(ubyte alpha)  = {255, 128,   0, alpha};
enum Color yellowAlpha(ubyte alpha)  = {255, 255,   0, alpha};
enum Color greenAlpha(ubyte alpha)   = {  0, 255,   0, alpha};
enum Color blueAlpha(ubyte alpha)    = {  0,   0, 255, alpha};
enum Color cyanAlpha(ubyte alpha)    = {  0, 255, 255, alpha};
enum Color magentaAlpha(ubyte alpha) = {255,   0, 255, alpha};
enum Color brownAlpha(ubyte alpha)   = {128,  64,   0, alpha};
enum Color purpleAlpha(ubyte alpha)  = {128,   0, 255, alpha};
