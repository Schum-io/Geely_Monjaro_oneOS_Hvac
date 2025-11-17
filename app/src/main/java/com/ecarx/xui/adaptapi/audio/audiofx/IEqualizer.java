package com.ecarx.xui.adaptapi.audio.audiofx;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface IEqualizer {
    short getNumberOfBands();
    short[] getBandLevelRange();
    void setBandLevel(short band, short level);
    short getBandLevel(short band);
    short getCurrentPreset();
    void usePreset(short preset);
    short getNumberOfPresets();
    String getPresetName(short preset);
    FunctionStatus isEqualizerSupported();
    boolean registerEqualizerStateListener(IEqualizerStateListener listener);
    boolean unregisterEqualizerStateListener(IEqualizerStateListener listener);

    interface IEqualizerStateListener {
        void onEqualizerStateChanged(FunctionStatus functionStatus);
        void onEqualizerModeChanged(int mode);
    }
}