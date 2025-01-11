module door.texts.text;
import door.colors;
import std.string;
import std.conv;
import raylib;

class Text
{
    int x, y, fontSize;
    Color color;

    protected immutable(char)* contents;

    this(string contents, int x, int y, int fontSize, Color color = black)
    {
        this.x = x;
        this.y = y;
        this.color = color;
        this.fontSize = fontSize;
        this.contents = contents.toStringz;
        // code duplication above to avoid problems with virtual calls
    }

    void set(string newValue)
    {
        contents = newValue.toStringz;
    }

    auto get()
    {
        return contents.to!string;
    }

    void draw()
    {
        DrawText(contents, x, y, fontSize, color);
    }

    void draw(float spacing)
    {
        DrawTextEx(GetFontDefault, contents, position, fontSize, spacing, color);
    }

    void draw(Vector2 origin, float rotation, float spacing)
    {
        DrawTextPro(GetFontDefault, contents, position, origin, rotation, fontSize, spacing, color);
    }

    void drawCodepoint(int codepoint)
    {
        DrawTextCodepoint(GetFontDefault, codepoint, position, fontSize, color);
    }

    int measure()
    {
        return MeasureText(contents, fontSize);
    }

    Vector2 measure(float spacing)
    {
        return MeasureTextEx(GetFontDefault, contents, fontSize, spacing);
    }

    auto position()
    {
        return Vector2(x, y);
    }
}
