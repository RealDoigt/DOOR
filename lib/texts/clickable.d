class ClickableText : Text
{
    private
    {
        Screens redirect;
        Rect area;
    }

    this(Screens redirect, string contents, int x, int y, int fontSize, Color color = white)
    {
        super(contents, x, y, fontSize, color);
        this.redirect = redirect;
        /*
            code taken from rtext.c in raylib by raysan5 because I wanted the default spacing, under the zlib license
            see https://github.com/raysan5/raylib/blob/master/LICENSE for the full license text
        */
        int defaultFontSize = 10;   // Default Font chars height in pixel
        if (fontSize < defaultFontSize) fontSize = defaultFontSize;
        int spacing = fontSize / defaultFontSize;
        // end of the zlib licensed code

        auto size = measure(cast(float)spacing);

        area = new Rect(position, cast(int)size.x, cast(int)size.y);
    }

    // in both functions below, draw is called in case the delegates changes a visual property of the class

    void onHover(void delegate() d)
    {
        if(area.checkCollision(GetMousePosition))
        {
            d();
            draw;
        }
    }

    void onClick(void delegate() d)
    {
        if (area.checkCollision(GetMousePosition) && IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
        {
            d();
            draw;
        }
    }
}