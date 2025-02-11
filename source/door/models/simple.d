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

class Line3D : Shape3D
{
    Vector3 endPosition;

    this(Vector3 start, Vector3 end, Color color)
    {
        super(start, color);
        endPosition = end;
    }

    override void draw()
    {
        DrawLine3D(position, endPosition, color);
    }
}

class Plane : Shape3D
{
    Vector2 size;

    this(Vector3 center, Vector2 size, Color color)
    {
        super(center, color);
        this.size = size;
    }

    override void draw()
    {
        DrawPlane(position, size, color);
    }
}
