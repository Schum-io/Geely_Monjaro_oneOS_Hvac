package com.ecarx.xui.adaptapi.audio.audiofx;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface IHarmanEqualizer {
    boolean isHarmanClariFiOnOff();
    boolean setHarmanClariFiOnOff(boolean onOff);
    boolean setSurroundSoundOnOff(boolean onOff);
    boolean isSurroundSoundOnOff();
    FunctionStatus isHarmanSettingSupported(int harmanSetting);
    short[] getBandLevelRange();
    void setBandLevel(int band, short level);
    short getBandLevel(int band);
    boolean registerHarmanSettingListener(IHarmanSettingListener listener);
    boolean unregisterHarmanSettingListener(IHarmanSettingListener listener);

    interface IHarmanSettingListener {
        void onHarmanSettingStateChanged(int i);
        void onBandChanged(int band, int level);
    }
}