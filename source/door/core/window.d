module door.core.window;
import raylib;
import std.string;
import door.images.image;

__gshared class Window
{
    private 
    {
        static Window window;
        
        this(int width, int height, const char* title)
        {
            InitWindow(width, height, title);
        }
    }
    
    ~this()
    {
        CloseWindow;
    }

    static getInstance(int width, int height, string title)
    {
        if (window is null)
            window = new Window(width, height, title.toStringz);

        return window;
    }
    
    auto shouldClose()
    {
        return WindowShouldClose;
    }
    
    auto isReady()
    {
        return IsWindowReady;
    }
    
    auto isFullscreen()
    {
        return IsWindowFullscreen;
    }
    
    auto isHidden()
    {
        return IsWindowHidden;
    }
    
    auto isMinimized()
    {
        return IsWindowMinimized;
    }
    
    auto isMaximized()
    {
        return IsWindowMaximized;
    }
    
    void toggleFullscreen()
    {
        ToggleFullscreen;
    }
    
    //void toggleBorderless()
    //{
    //    ToggleBorderlessWindowed;
    //} Not sure why that won't compile, maybe it doesn't exist in 4.0? I'll have to check later
    
    void maximize()
    {
        MaximizeWindow;
    }
    
    void minimize()
    {
        MinimizeWindow;
    }
    
    void restore()
    {
        RestoreWindow;
    }
    
    void setIcon(Img image)
    {
        SetWindowIcon(image);
    }

    void close()
    {
        CloseWindow;
        window = null;
    }
}
