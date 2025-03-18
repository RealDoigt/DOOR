module door.images.sprite_list;
import door.images.image;

class OutOfBoundsOrderException : Exception
{
    this(string msg = "One or more of the numbers in the order are out of bounds.", string file = __FILE__, size_t line = __LINE__)
    {
        super(msg, file, line);
    }
}

class NoOrderException : Exception
{
    this(string msg = "The order cannot be empty.", string file = __FILE__, size_t line = __LINE__)
    {
        super(msg, file, line);
    }
}

class NoImageException : Exception
{
    this(string msg = "A sprite list must contain at least one image.", string file = __FILE__, size_t line = __LINE__)
    {
        super(msg, file, line);
    }
}

class SpriteList
{
    private
    {
        Img[] sprites;
        uint[] order;
        size_t current; // index of current order number
    }

    this(string[] pathes, uint[] order ...)
    {
        if (pathes.length == 0) throw new NoImageException();
        if (order.length == 0) throw new NoOrderException();

        foreach (path; pathes) sprites ~= new Img(path);
        foreach (number; order)
        {
            if (number > sprites.length) throw new OutOfBoundsOrderException();
            this.order ~= number;
        }
    }

    auto nextSprite()
    {
        if (current == order.length) current = 0;
        return new Img(sprites[order[current++]]);
    }
}
