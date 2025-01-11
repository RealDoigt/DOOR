module door.texts.custom;
import door.texts.text;
import door.colors.web;
import raylib;

class CustomText : Text
{
    Font font;

    private auto defaultSpacing()
    {
        // see lines 1018 to 1820 of rcore.c in the raylib library to see
        // where I got these magic numbers from
        return fontSize < 10 ? 1 : fontSize / 10;
    }

    this(Font font, string contents, int x, int y, int fontSize, Color color = black)
    {
        super(contents, x, y, fontSize, color);
        this.font = font;
    }

    override void draw()
    {
        DrawTextEx(font, contents, position, fontSize, defaultSpacing, color);
    }

    override void draw(float spacing)
    {
        DrawTextEx(font, contents, position, fontSize, spacing, color);
    }

    override void draw(Vector2 origin, float rotation, float spacing)
    {
        DrawTextPro(font, contents, position, origin, rotation, fontSize, spacing, color);
    }

    override void drawCodepoint(int codepoint)
    {
        DrawTextCodepoint(font, codepoint, position, fontSize, color);
    }

    override int measure()
    {
        // see line 1157 of rcore.c of the raylib library to see where I got this
        return cast(int)MeasureTextEx(font, contents, fontSize, defaultSpacing).x;
    }

    override Vector2 measure(float spacing)
    {
        return MeasureTextEx(font, contents, fontSize, spacing);
    }
}
