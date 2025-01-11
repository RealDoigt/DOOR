module door.shapes.rectcut;
import raylib;
import door.shapes.rectangle;
import door.colors.web;
import std.algorithm;

class RectCut : Rect
{
    private
    {
        auto maxX()
        {
            return width + x;
        }
        
        auto maxY()
        {
            return height + y;
        }
    }

    this(int x, int y, int width, int height, Color color = black)
    {
        super(x, y, width, height, color);
    }
    
    auto cutLeft(int toCut)
    {
        int originalX = x;
        x = min(maxX, x + toCut);
        return new RectCut(originalX, y, x, maxY, color);
    }
    
    auto cutRight(int toCut)
    {
        int originalX = maxX;
        width = max(x, maxX - toCut) - x;
        return new RectCut(maxX, y, originalX, maxY, color);
    }
    

    auto cutTop(int toCut)
    {
        int originalY = y;
        y = min(maxX, y + toCut);
        return new RectCut(x, originalY, maxX, y, color);
    }
    
    auto cutBottom(int toCut)
    {
        int originalY = maxY;
        height = max(y, maxY - toCut) - y;
        return new RectCut(x, maxY, maxX, originalY, color);
    }
    
    auto getLeft(int toCut)
    {
        int newX = min(maxX, x + toCut);
        return new RectCut(x, y, newX, maxY, color);
    }
    
    auto getRight(int toCut)
    {
        int newX = max(x, maxX - toCut);
        return new RectCut(newX, y, maxX, maxY, color);
    }
    
    auto getTop(int toCut)
    {
        int newY = min(maxX, y + toCut);
        return new RectCut(x, y, maxX, newY, color);
    }
    
    auto getBottom(int toCut)
    {
        int newY = max(y, maxY - toCut);
        return new RectCut(x, newY, maxX, maxY, color);
    }
    
    auto addLeft(int toCut)
    {
        return new RectCut(x - toCut, y, maxX, maxY, color);
    }
    
    auto addRight(int toCut)
    {
        return new RectCut(x, y, maxX + toCut, maxY, color);
    }
    
    auto addTop(int toCut)
    {
        return new RectCut(x, y - toCut, maxX, maxY, color);
    }
    
    auto addBottom(int toCut)
    {
        return new RectCut(x, y, maxX, maxY + toCut, color);
    }
    
    auto extend(int toCut)
    {
        return new RectCut(x - toCut, y - toCut, maxX + toCut, maxY + toCut, color);
    }
    
    auto contract(int toCut)
    {
        return new RectCut(x + toCut, y + toCut, maxX - toCut, maxY - toCut, color);
    }
    
    void selfExtend(int toCut)
    {
        x -= toCut;
        y -= toCut;
        width += toCut - x;
        height += toCut - y;
    }
    
    void selfcontract(int toCut)
    {
        x += toCut;
        y += toCut;
        width -= toCut - x;
        height -= toCut - y;
    }
}
