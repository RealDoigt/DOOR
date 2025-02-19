module door.images.texture;
import door.images.image;
import door.colors.web;
import std.string;
import raylib;

class Tx2d
{
    package(door.images) Texture texture;
    alias texture this;

    this(string fileName)
    {
        texture = fileName.toStringz.LoadTexture;
    }

    this(Image image)
    {
        texture = image.LoadTextureFromImage;
    }

    this(Img image)
    {
        texture = image.image.LoadTextureFromImage;
    }

    ~this()
    {
        if (IsWindowReady) texture.UnloadTexture;
    }

    void update(Img image)
    {
        UpdateTexture(this, image.data);
    }

    void update(Img image, Rectangle rectangle)
    {
        UpdateTextureRec(this, rectangle, image.data);
    }

    void generateMipmaps()
    {
        GenTextureMipmaps(&texture);
    }

    void setFilter(int filter)
    {
        SetTextureFilter(this, filter);
    }

    void setWrap(int wrap)
    {
        SetTextureWrap(this, wrap);
    }

    void draw(int x, int y, Color tint = white)
    {
        DrawTexture(this, x, y, tint);
    }

    void draw(Vector2 position, Color tint = white)
    {
        DrawTextureV(this, position, tint);
    }

    void draw(int x, int y, float rotation, float scale, Color tint = white)
    {
        DrawTextureEx(this, Vector2(x, y), rotation, scale, tint);
    }

    void draw(Vector2 position, float rotation, float scale, Color tint = white)
    {
        DrawTextureEx(this, position, rotation, scale, tint);
    }

    void draw(Rectangle source, int x, int y, Color tint = white)
    {
        DrawTextureRec(this, source, Vector2(x, y), tint);
    }

    void draw(Rectangle source, Vector2 position, Color tint = white)
    {
        DrawTextureRec(this, source, position, tint);
    }

    void draw(Vector2 tiling, Vector2 offset, Rectangle quad, Color tint = white)
    {
        DrawTextureQuad(this, tiling, offset, quad, tint);
    }

    void draw(Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint = white)
    {
        DrawTexturePro(this, source, dest, origin, rotation, tint);
    }

    void drawTiled(Rectangle source, Rectangle dest, Vector2 origin, float rotation, float scale, Color tint = white)
    {
        DrawTextureTiled(this, source, dest, origin, rotation, scale, tint);
    }

    void drawNPatch(NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint = white)
    {
        DrawTextureNPatch(this, nPatchInfo, dest, origin, rotation, tint);
    }

    void drawPolygon(Vector2 center, Vector2[] points, Vector2[] texcoords, Color tint = white)
    {
        DrawTexturePoly(this, center, points.ptr, texcoords.ptr, cast(int)points.length, tint);
    }

    int width()
    {
        return texture.width;
    }

    int height()
    {
        return texture.height;
    }

    int mipmaps()
    {
        return texture.mipmaps;
    }

    PixelFormat format()
    {
        return cast(PixelFormat)texture.format;
    }
}
