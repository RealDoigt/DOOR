module door.images.clickable_delegate;
import door.images;
import raylib;

class ClickableImageDelegate : ClickableImage
{
    private void delegate() clickAction;

    this(int x, int y, string imagePath, string hoverImagePath, string activeImagePath, void delegate() clickAction)
    {
        super(x, y, imagePath, hoverImagePath, activeImagePath);
        this.clickAction = clickAction;
    }

    this(Vector2 xy, string imagePath, string hoverImagePath, string activeImagePath, void delegate() clickAction)
    {
        this(cast(int)xy.x, cast(int)xy.y, imagePath, hoverImagePath, activeImagePath, clickAction);
    }

    override void onClick()
    {
        if (isClicked)
        {
            setActiveImage;
            clickAction();
        }
    }
}
