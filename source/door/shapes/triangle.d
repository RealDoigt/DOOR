module door.shapes.triangle;
import door.shapes.shape;
import door.colors.web;
import raylib;

// Warning: This class is little bit more "fragile" than other shape classes
// Please use the setters instead of directly editing the values of x and y;
class Triangle : Shape
{
    private Vector2 vertex1, vertex2, vertex3;

    this(int xFactor, int yFactor, int ax, int ay, int bx, int by, int cx, int cy, Color color = black)
    {
        super(xFactor, yFactor, color);

        // top
        vertex1 = Vector2(ax + xFactor, ay + yFactor);
        // left
        vertex2 = Vector2(bx + xFactor, by + yFactor);
        // right
        vertex3 = Vector2(cx + xFactor, cy + yFactor);
    }

    this(Vector2 factor, Vector2 a, Vector2 b, Vector2 c, Color color = black)
    {
        this
        (
            cast(int)factor.x,
            cast(int)factor.y,
            cast(int)a.x,
            cast(int)a.y,
            cast(int)b.x,
            cast(int)b.y,
            cast(int)c.x,
            cast(int)c.y,
            color
        );
    }

    void setX(int value)
    {
        vertex1.x -= x;
        vertex2.x -= x;
        vertex3.x -= x;

        x = value;

        vertex1.x += x;
        vertex2.x += x;
        vertex3.x += x;
    }

    void setY(int value)
    {
        vertex1.y -= y;
        vertex2.y -= y;
        vertex3.y -= y;

        y = value;

        vertex1.y += y;
        vertex2.y += y;
        vertex3.y += y;
    }

    override void draw()
    {
        DrawTriangle(vertex1, vertex2, vertex3, color);
    }

    override void drawLines()
    {
        DrawTriangleLines(vertex1, vertex2, vertex3, color);
    }

    override bool checkCollision(Vector2 point)
    {
        return CheckCollisionPointTriangle(point, vertex1, vertex2, vertex3);
    }
}
