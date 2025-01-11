module door.shapes.rectangle;

import door.shapes.circle;
import door.shapes.shape;
import door.colors.web;
import raylib;

class Rect : Shape
{
    int width, height;

    this(int x, int y, int width, int height, Color color = black)
    {
        super(x, y, color);
        this.width = width;
        this.height = height;
    }

    this(Vector2 position, int width, int height, Color color = black)
    {
        this(cast(int)position.x, cast(int)position.y, width, height, color);
    }

    this(Rectangle rectangle, Color color = black)
    {
        this(cast(int)rectangle.x, cast(int)rectangle.y, cast(int)rectangle.width, cast(int)rectangle.height, color);
    }

    Rectangle toRectangle()
    {
        return Rectangle(x, y, width, height);
    }
    alias toRectangle this;

    override void draw()
    {
        DrawRectangle(x, y, width, height, color);
    }

    void draw(Vector2 origin, float rotation)
    {
        DrawRectanglePro(this, origin, rotation, color);
    }

    void drawGradientVertical(Color color2)
    {
        DrawRectangleGradientV(x, y, width, height, color, color2);
    }

    void drawGradientHorizontal(Color color2)
    {
        DrawRectangleGradientH(x, y, width, height, color, color2);
    }

    void drawGradient(Color color2, Color color3, Color color4)
    {
        DrawRectangleGradientEx(this, color, color2, color3, color4);
    }

    override void drawLines()
    {
        DrawRectangleLines(x, y, width, height, color);
    }

    void drawLines(int lineThick)
    {
        DrawRectangleLinesEx(this, lineThick, color);
    }

    void drawRounded(float roundness, int segments)
    {
        DrawRectangleRounded(this, roundness, segments, color);
    }

    void drawRoundedLines(float roundness, int segments, int lineThick = 1)
    {
        DrawRectangleRoundedLines(this, roundness, segments, lineThick, color);
    }

    bool checkCollision(Rect other)
    {
        return CheckCollisionRecs(this, other);
    }

    bool checkCollision(Circle circle)
    {
        return CheckCollisionCircleRec(circle.toVector2, circle.radius, this);
    }

    override bool checkCollision(Vector2 point)
    {
        return CheckCollisionPointRec(point, this);
    }

    Rectangle getCollisionRectangle(Rect other)
    {
        return GetCollisionRec(this, other);
    }
}
