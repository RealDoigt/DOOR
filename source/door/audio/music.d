module door.audio.music;
import door;
import std.string;
import raylib;

class MusicStream : IAudio
{
    private Music music;
    alias music this;

    this(string fileName)
    {
        music = fileName.toStringz.LoadMusicStream;
    }

    this(string fileType, ubyte* data, int dataSize)
    {
        music = fileType.toStringz.LoadMusicStreamFromMemory(data, dataSize);
    }

    ~this()
    {
        music.UnloadMusicStream;
    }

    override void setVolume(float volume)
    {
        SetMusicVolume(this, volume);
    }

    override void setPitch(float pitch)
    {
        SetMusicPitch(this, pitch);
    }

    override bool isPlaying()
    {
        return IsMusicStreamPlaying(this);
    }

    override void resume()
    {
        ResumeMusicStream(this);
    }

    override void pause()
    {
        PauseMusicStream(this);
    }

    override void play()
    {
        PlayMusicStream(this);
    }

    override void stop()
    {
        StopMusicStream(this);
    }

    void updateStream()
    {
        UpdateMusicStream(this);
    }
    
    void seek(float position)
    {
        SeekMusicStream(this, position);
    }

    auto getTimeLength()
    {
        return GetMusicTimeLength(this);
    }

    auto getTimePlayed()
    {
        return GetMusicTimePlayed(this);
    }
}
