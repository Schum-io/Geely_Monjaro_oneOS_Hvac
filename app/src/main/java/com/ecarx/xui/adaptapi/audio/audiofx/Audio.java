package com.ecarx.xui.adaptapi.audio.audiofx;

import android.content.Context;
import com.ecarx.xui.adaptapi.FunctionStatus;

public class Audio {
    public static Audio create(Context context) {
        return null;
    }

    public ICompensation getCompensation() {
        return null;
    }

    public IFaderBalance getFaderBalance() {
        return null;
    }

    public IHarmanEqualizer getHarmanEqualizer() {
        return null;
    }

    public IEqualizer getEqualizer() {
        return null;
    }

    public IAudioState getAudioState() {
        return null;
    }

    public FunctionStatus isAudioSettingSupported(int audioSetting) {
        return FunctionStatus.UNKNOWN;
    }

    public void registerAudioSettingListener(IAudioSettingListener listener) {
    }

    public void unregisterAudioSettingListener(IAudioSettingListener listener) {
    }

    public boolean isSurroundSoundOn() {
        return false;
    }

    public void setSurroundSoundOnOff(boolean onOff) {
    }

    public void setNaviVoiceMixMode(int mode) {
    }

    public boolean isSurroundSoundLevelSupported() {
        return false;
    }

    public int getAudioProvider() {
        return 0;
    }

    public interface IAudioSettingListener {
        void onAudioSettingStateChanged(int audioSetting);
        void onNaviMixModeChanged(int i);
        void onSurroundSoundOnOffChanged(boolean b);
    }
}