module door.images.image;
import door.shapes.rectangle;
import door.images.texture;
import door.shapes.circle;
import door.colors.web;
import std.string;
import raylib;


class ImageNotFoundException : Exception
{
    this(string msg = "image not found exception", string file = __FILE__, size_t line = __LINE__)
    {
        super(msg, file, line);
    }
}

class FileDataIsNullException : Exception
{
    this(string msg = "file data is null exception", string file = __FILE__, size_t line = __LINE__)
    {
        super(msg, file, line);
    }
}

class Img
{
    package(door) Image image;
    alias image this;

    this(string fileName)
    {
        if (!fileName.toStringz.FileExists) throw new ImageNotFoundException(fileName ~ " not found");
        image = fileName.toStringz.LoadImage;
    }

    this(string fileName, int width, int height, PixelFormat format, int headerSize)
    {
        //if (!fileName.toStringz.FileExists) throw new ImageNotFoundException();
        image = fileName.toStringz.LoadImageRaw(width, height, format, headerSize);
    }

    this(string fileType, ubyte* fileData, int dataSize)
    {
        if (!fileData) throw new FileDataIsNullException();
        image = fileType.toStringz.LoadImageFromMemory(fileData, dataSize);
    }

    this(Tx2d texture)
    {
        image = LoadImageFromTexture(texture);
    }

    /// this constructor takes the screen image to initialize itself
    this()
    {
        image = LoadImageFromScreen;
    }

    this(int width, int height, Color color = white)
    {
        image = GenImageColor(width, height, color);
    }

    this(Image image)
    {
        this.image = ImageCopy(image);
    }

    this(Img image)
    {
        this(image.image);
    }

    this(Image image, Rectangle rectangle)
    {
        image = ImageFromImage(image, rectangle);
    }

    this(Img image, Rect rectangle)
    {
        this(image.image, rectangle);
    }

    ~this()
    {
        if (IsWindowReady) image.UnloadImage;
    }

    int width()
    {
        return image.width;
    }

    int height()
    {
        return image.height;
    }

    int mipmaps()
    {
        return image.mipmaps;
    }

    PixelFormat format()
    {
        return cast(PixelFormat)image.format;
    }

    void setFormat(PixelFormat format)
    {
        ImageFormat(&image, cast(int)format);
    }

    void toPOT(Color fill)
    {
        ImageToPOT(&image, fill);
    }

    void crop(Rectangle crop)
    {
        ImageCrop(&image, crop);
    }

    void crop(float alphaThreshold)
    {
        ImageAlphaCrop(&image, alphaThreshold);
    }

    void clearAlpha(Color color, float threshold)
    {
        ImageAlphaClear(&image, color, threshold);
    }

    void maskAlpha(Img alphaMask)
    {
        ImageAlphaMask(&image, alphaMask.image);
    }

    void premultiplyAlpha()
    {
        ImageAlphaPremultiply(&image);
    }

    /// bicubic algorithm
    void resize(int width, int height = this.height)
    {
        ImageResize(&image, width, height);
    }

    /// bicubic algorithm
    void resizeH(int height)
    {
        ImageResize(&image, image.width, height);
    }

    /// nearest-neighbor algorithm
    void resizeNN(int width, int height = this.height)
    {
        ImageResizeNN(&image, width, height);
    }

    /// nearest-neighbor algorithm
    void resizeHNN(int height)
    {
        ImageResizeNN(&image, image.width, height);
    }

    void resizeCanvas(int width, int height, int offsetX, int offsetY, Color fill)
    {
        ImageResizeCanvas(&image, width, height, offsetX, offsetY, fill);
    }

    void generateMipmaps()
    {
        ImageMipmaps(&image);
    }

    void dither(int redBPP, int greenBPP, int blueBPP, int alphaBPP)
    {
        ImageDither(&image, redBPP, greenBPP, blueBPP, alphaBPP);
    }

    void dither(Color colorBPP)
    {
        ImageDither(&image, colorBPP.r, colorBPP.g, colorBPP.b, colorBPP.a);
    }

    void flipVertical()
    {
        ImageFlipVertical(&image);
    }

    void flipHorizontal()
    {
        ImageFlipHorizontal(&image);
    }

    void rotateClockwise()
    {
        ImageRotateCW(&image);
    }

    void rotateCounterClockwise()
    {
        ImageRotateCCW(&image);
    }

    void setTint(Color color)
    {
        ImageColorTint(&image, color);
    }

    void invertColor()
    {
        ImageColorInvert(&image);
    }

    void toGrayscale()
    {
        ImageColorGrayscale(&image);
    }

    void setContrast(float contrast)
    {
        ImageColorContrast(&image, contrast);
    }

    void setBrightness(int brightness)
    {
        ImageColorBrightness(&image, brightness);
    }

    void replace(Color newColor, Color target)
    {
        ImageColorReplace(&image, newColor, target);
    }

    Rectangle getAlphaBorder(float threshold)
    {
        return GetImageAlphaBorder(image, threshold);
    }

    Color getColor(int x, int y)
    {
        return GetImageColor(image, x, y);
    }

    void clearBackground(Color color)
    {
        ImageClearBackground(&image, color);
    }

    void drawPixel(int x, int y, Color color)
    {
        ImageDrawPixel(&image, x, y, color);
    }

    void drawPixel(Vector2 position, Color color)
    {
        ImageDrawPixelV(&image, position, color);
    }

    void drawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color)
    {
        ImageDrawLine(&image, startPosX, startPosY, endPosX, endPosY, color);
    }

    void drawLine(Vector2 start, Vector2 end, Color color)
    {
        ImageDrawLineV(&image, start, end, color);
    }

    void drawCircle(int centerX, int centerY, int radius, Color color)
    {
        ImageDrawCircle(&image, centerX, centerY, radius, color);
    }

    void drawCircle(Vector2 center, int radius, Color color)
    {
        ImageDrawCircleV(&image, center, radius, color);
    }

    void drawCircle(Circle circle, Color color)
    {
        ImageDrawCircle(&image, circle.x, circle.y, cast(int)circle.radius, color);
    }

    void drawRectangle(int x, int y, int width, int height, Color color)
    {
        ImageDrawRectangle(&image, x, y, width, height, color);
    }

    void drawRectangle(Vector2 position, Vector2 size, Color color)
    {
        ImageDrawRectangleV(&image, position, size, color);
    }

    void drawRectangle(Rectangle rectangle, Color color)
    {
        ImageDrawRectangleRec(&image, rectangle, color);
    }

    void drawRectangle(Rect rectangle)
    {
        ImageDrawRectangleRec(&image, rectangle, rectangle.color);
    }

    void drawRectangleLines(Rectangle rectangle, Color color, int thick = 1)
    {
        ImageDrawRectangleLines(&image, rectangle, thick, color);
    }

    void drawRectangleLines(Rect rectangle, int thick = 1)
    {
        ImageDrawRectangleLines(&image, rectangle, thick, rectangle.color);
    }

    void drawText(string text, int x, int y, int fontSize, Color color = black)
    {
        ImageDrawText(&image, text.toStringz, x, y, fontSize, color);
    }

    void drawText(string text, Vector2 position, float fontSize, float spacing, Color tint = black, Font font = GetFontDefault)
    {
        ImageDrawTextEx(&image, font, text.toStringz, position, fontSize, spacing, tint);
    }
}
