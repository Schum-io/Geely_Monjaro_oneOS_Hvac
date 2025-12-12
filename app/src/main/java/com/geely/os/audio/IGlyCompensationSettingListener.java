package com.geely.os.audio;

/* loaded from: classes.dex */
public interface IGlyCompensationSettingListener {
    void onCompensationSettingStateChanged(int compensationSetting);

    void onEffectEnhanceModeChanged(int effectMode);

    void onLevelOfSpeedVolumeChanged(int level);

    void onLoudnessChanged(boolean loudness);
}
