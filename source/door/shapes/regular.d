module door.shapes.regular;
import door.shapes.shape;
import door.colors.web;
import raylib;

class RegularPolygon : Shape
{
    int sides;
    float radius, rotation;

    this(int centerX, int centerY, int sides, float radius, float rotation, Color color = black)
    {
        super(centerX, centerY, color);

        this.sides = sides;
        this.radius = radius;
        this.rotation = rotation;
    }

    this(Vector2 center, int sides, float radius, float rotation, Color color = black)
    {
        this(cast(int)center.x, cast(int)center.y, sides, radius, rotation, color);
    }

    override void draw()
    {
        DrawPoly(toVector2, sides, radius, rotation, color);
    }

    override void drawLines()
    {
        DrawPolyLines(toVector2, sides, radius, rotation, color);
    }

    void drawLines(float lineThick)
    {
        DrawPolyLinesEx(toVector2, sides, radius, rotation, lineThick, color);
    }

    override bool checkCollision(Vector2 point)
    {
        // I'm aware this is lazy, mostly acurate if you don't think about it too much
        // TODO: an actual implementation
        return CheckCollisionPointCircle(point, toVector2, radius);
    }
}
