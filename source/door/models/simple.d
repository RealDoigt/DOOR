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
