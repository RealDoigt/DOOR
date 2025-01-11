module door.shapes.shape;
import raylib;

abstract class Shape
{
    int x, y;
    Color color;

    this(int x, int y, Color color)
    {
        this.x = x;
        this.y = y;
        this.color = color;
    }

    abstract void draw();
    abstract void drawLines();
    abstract bool checkCollision(Vector2 point);

    Vector2 toVector2()
    {
        return Vector2(x, y);
    }

    static void draw(Shape[] shapes)
    {
        foreach (shape; shapes) shape.draw();
    }

    static void drawLines(Shape[] shapes)
    {
        foreach (shape; shapes) shape.drawLines();
    }
}
