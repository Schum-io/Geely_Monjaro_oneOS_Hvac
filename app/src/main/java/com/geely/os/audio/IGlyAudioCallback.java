package com.geely.os.audio;

/* loaded from: classes.dex */
public interface IGlyAudioCallback {
    void onAudioSettingStateChanged(int audioSetting);

    void onGroupVolumeChanged(String[] usage);

    void onNaviMixModeChanged(int value);

    void onSurroundSoundOnOffChanged(boolean b);
}
