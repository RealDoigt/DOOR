module door.images.tile_sheet;
import door.images.image;

class TileSheet
{
    private
    {
        Img tiles;
        int width, height; // individual tile

        auto getSheetPosX(uint index)
        {
            return index * width;
        }
    }

    this(string path, int width, int height)
    {
        this.width = width;
        this.height = height;
        tiles = new Img(path);
    }

    auto get(uint index)
    {
        auto x = getSheetPosX(index), y = 0;
        for (; x + width >= tiles.width; ++y, x -= tiles.width){}
        return new Img(tiles, new Rect(x, y * height, width, height));
    }
}
