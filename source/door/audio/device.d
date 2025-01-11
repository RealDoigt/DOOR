module door.audio.device;
import raylib;

__gshared class AudioDevice
{
    private
    {
        static AudioDevice instance;

        this()
        {
            InitAudioDevice;
        }
    }

    static getInstance()
    {
        if (instance is null) instance = new AudioDevice();
        return instance;
    }

    void close()
    {
        CloseAudioDevice;
        instance = null;
    }

    auto isReady()
    {
        return IsAudioDeviceReady;
    }

    void setVolume(float volume)
    {
        volume.SetMasterVolume;
    }
}
