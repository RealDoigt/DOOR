module door.audio.sound;
import door;
import std.string;
import raylib;

class Snd : IAudio
{
    private Sound sound;
    alias sound this;

    this(string fileName)
    {
        sound = fileName.toStringz.LoadSound;
    }

    this(Wave w)
    {
        sound = w.LoadSoundFromWave;
    }

    this(WaveSnd ws)
    {
        sound = LoadSoundFromWave(ws);
    }

    ~this()
    {
        if (IsWindowReady) sound.UnloadSound;
    }

    void playMultichannel()
    {
        PlaySoundMulti(this);
    }

    override void setVolume(float volume)
    {
        SetSoundVolume(this, volume);
    }

    override void setPitch(float pitch)
    {
        SetSoundPitch(this, pitch);
    }

    override bool isPlaying()
    {
        return IsSoundPlaying(this);
    }

    override void resume()
    {
        ResumeSound(this);
    }

    override void pause()
    {
        PauseSound(this);
    }

    override void play()
    {
        PlaySound(this);
    }

    override void stop()
    {
        StopSound(this);
    }

    static void stopMultichannel()
    {
        StopSoundMulti;
    }

    static int getSoundsPlaying()
    {
        return GetSoundsPlaying;
    }
}
