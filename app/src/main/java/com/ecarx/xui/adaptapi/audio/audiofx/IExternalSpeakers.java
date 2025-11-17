package com.ecarx.xui.adaptapi.audio.audiofx;

public interface IExternalSpeakers {
    int getExternalSpeakersMediaPlayMode();
    int getExternalSpeakersVolume();
    boolean setExternalSpeakersMediaPlayMode(int mode);
    boolean setExternalSpeakersSwitch(boolean enabled);
    boolean setExternalSpeakersVolume(int volume);
    void registerExternalAudioVolumeCallback(IExternalSpeakersVolumeListener callback);
    void unregisterExternalAudioVolumeCallback(IExternalSpeakersVolumeListener callback);
    void setMicVolumeCallbackSwitch(int value);
    void registerExternalAudioCallback(IExternalSpeakersListener callback);
    void unregisterExternalAudioCallback(IExternalSpeakersListener callback);

    interface IExternalSpeakersVolumeListener {
        void onSpeakersVolumeChange(int volume);
    }

    interface IExternalSpeakersListener {
        void onMicVolumeChange(int volume);
    }
}