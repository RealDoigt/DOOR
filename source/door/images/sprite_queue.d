module door.images.sprite_queue;
import door.images.image;

class EmptyQueueException : Exception
{
    this(string msg = "A sprite queue must contain at least one image.", string file = __FILE__, size_t line = __LINE__)
    {
        super(msg, file, line);
    }
}

class SpriteQueue
{
    private
    {
        Img[] sprites;
        size_t current; // index of current sprite
    }

    this(string[] pathes)
    {
        if (pathes.length == 0) throw new EmptyQueueException();
        foreach (path; pathes) sprites ~= new Img(path);
    }

    auto nextSprite()
    {
        if (current == sprites.length) current = 0;
        return new Img(sprites[current++]);
    }
}
