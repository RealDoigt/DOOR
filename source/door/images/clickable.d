module door.images.clickable;
import door;
import raylib;

class ClickableImage : Rect
{
    private
    {
        Img normalImage, hoverImage, activeImage;
        Tx2d texture;
    }

    protected
    {
        auto isClicked()
        {
            return MOUSE_LEFT_BUTTON.IsMouseButtonPressed && checkCollision(GetMousePosition);
        }

        auto isHovered()
        {
            return checkCollision(GetMousePosition);
        }

        void setActiveImage()
        {
            texture.update(activeImage);
        }

        void setHoverImage()
        {
            texture.update(hoverImage);
        }

        void setNormalImage()
        {
            texture.update(normalImage);
        }
    }

    this(int x, int y, string imagePath, string hoverImagePath, string activeImagePath)
    {
        super(x, y, 0, 0, transparent);

        normalImage = new Img(imagePath);
        hoverImage  = new Img(hoverImagePath);
        activeImage = new Img(activeImagePath);

        texture = new Tx2d(normalImage);

        width  = normalImage.width;
        height = normalImage.height;

        if (hoverImage.width != width || hoverImage.height != height)
            hoverImage.resize(width, height);

        if (activeImage.width != width || activeImage.height != height)
            activeImage.resize(width, height);
    }

    this(Vector2 xy, string imagePath, string hoverImagePath, string activeImagePath)
    {
        this(cast(int)xy.x, cast(int)xy.y, imagePath, hoverImagePath, activeImagePath);
    }

    // call this after calling onHover(), not before
    void onClick()
    {
        if (isClicked) setActiveImage;
    }

    void onHover()
    {
        if (isHovered) setHoverImage;
    }

    void onExit()
    {
        if (!isHovered) setNormalImage;
    }

    override void draw()
    {
        texture.draw(x, y);
    }
}
