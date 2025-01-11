module door.audio.iaudio;

interface IAudio
{
    void setVolume(float volume);
    void setPitch(float pitch);
    bool isPlaying();
    void resume();
    void pause();
    void play();
    void stop();
}
