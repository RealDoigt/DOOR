module door.shapes.circle;
import door.shapes.rectangle;
import door.shapes.shape;
import door.colors.web;
import raylib;

class Circle : Shape
{
    float radius;

    this(int centerX, int centerY, float radius, Color color = black)
    {
        super(centerX, centerY, color);
        this.radius = radius;
    }

    this(Vector2 center, float radius, Color color = black)
    {
        this(cast(int)center.x, cast(int)center.y, radius, color);
    }

    override void draw()
    {
        DrawCircle(x, y, radius, color);
    }

    void drawSector(float startAngle, float endAngle, int segments)
    {
        DrawCircleSector(toVector2, radius, startAngle, endAngle, segments, color);
    }

    void drawSectorLines(float startAngle, float endAngle, int segments)
    {
        DrawCircleSectorLines(toVector2, radius, startAngle, endAngle, segments, color);
    }

    void drawGradient(Color color2)
    {
        DrawCircleGradient(x, y, radius, color, color2);
    }

    override void drawLines()
    {
        DrawCircleLines(x, y, radius, color);
    }

    bool checkCollision(Circle other)
    {
        return CheckCollisionCircles(toVector2, radius, other.toVector2, other.radius);
    }

    bool checkCollision(Rect rectangle)
    {
        return CheckCollisionCircleRec(toVector2, radius, rectangle.toRectangle);
    }

    override bool checkCollision(Vector2 point)
    {
        return CheckCollisionPointCircle(point, toVector2, radius);
    }
}
