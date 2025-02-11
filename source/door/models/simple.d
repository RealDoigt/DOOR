module door.models.simple;
import raylib;

abstract class Shape3D
{
    Vector3 position;
    Color color;

    this(Vector3 position, Color color)
    {
        this.position = position;
        this.color = color;
    }

    this(int x, int y, int z, Color color)
    {
        this(Vector3(x, y, z), color);
    }

    abstract void draw();
}

class Point3D : Shape3D
{
    this(Vector3 position, Color color)
    {
        super(position, color);
    }

    override void draw()
    {
        DrawPoint3D(position, color);
    }
}
