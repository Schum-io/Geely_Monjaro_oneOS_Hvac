package com.ecarx.xui.adaptapi.audio.audiofx;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface ICompensation {
    boolean isLoudnessEnabled();
    void setLoudnessEnable(boolean enable);
    boolean isSpeedCompensatedVolumeEnabled();
    void setSpeedCompensatedVolumeEnable(boolean enable);
    int getCompensationLevelOfSpeedCompensatedVolume();
    void setCompensationLevelOfSpeedCompensatedVolume(int level);
    int[] getSupportedEffectEnhanceMode();
    int getEffectEnhanceMode();
    boolean setEffectEnhanceMode(int effectMode);
    FunctionStatus isCompensationSettingSupported(int compensationSetting);
    boolean registerCompensationSettingListener(ICompensationSettingListener listener);
    boolean unregisterCompensationSettingListener(ICompensationSettingListener listener);
    boolean isDtsSoundEnabled();
    int getDtsSoundMode();
    boolean setDtsSoundMode(int dtsMode);

    interface ICompensationSettingListener {
        void onCompensationSettingStateChanged(int i);
        void onEffectEnhanceModeChanged(int i);
        void onLevelOfSpeedVolumeChanged(int i);
    }
}