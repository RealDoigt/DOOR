module door.images.sprite_sheet;
import door.images.image;

class SpriteSheet
{
    private
    {
        Img spriteSheet;
        int left, top,
            width, height,
            distanceX, distanceY;

        auto getSheetPosX()
        {
            return left * (width + distanceX);
        }
    }

    this(string spriteSheetPath, int distance, int width, int height)
    {
        spriteSheet = new Img(spriteSheetPath);
        distanceX = distance;
        distanceY = distance;
        this.height = height;
        this.width = width;
    }

    this(string spriteSheetPath, int distanceX, int distanceY, int width, int height)
    {
        spriteSheet = new Img(spriteSheetPath);
        this.distanceX = distanceX;
        this.distanceY = distanceY;
        this.height = height;
        this.width = width;
    }

    auto nextSprite()
    {
        auto sheetPosX = getSheetPosX;

        if (sheetPosX + width >= spriteSheet.width)
        {
            left = 0;
            sheetPosX = getSheetPosX;
            auto newTop = top + height + distanceY;
            top = newTop < spriteSheet.height ? newTop : 0;
        }

        ++left;

        return new Img(spriteSheet, new Rect(sheetPosX, top, width, height));
    }
}
