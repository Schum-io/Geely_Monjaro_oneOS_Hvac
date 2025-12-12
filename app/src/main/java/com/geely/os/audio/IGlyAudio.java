package com.geely.os.audio;

import android.view.Display;

/* loaded from: classes.dex */
public interface IGlyAudio {
    void adjustStreamVolume(int streamType, int direction, int flags);

    int getAudioAtrributesContentType(String usage);

    int getAudioAtrributesUsage(String usage);

    int getAudioAtrributesUsage(String usage, Display display);

    int getAudioProvider();

    short getBalanceLevel();

    short[] getBalanceLevelRange();

    short getBandLevel(short band);

    short[] getBandLevelRange();

    int getCompensationLevelOfSpeedCompensatedVolume();

    short getCurrentPreset();

    int getDtsSoundMode();

    int getEffectEnhanceMode();

    int getExternalSpeakersMediaPlayMode();

    int getExternalSpeakersVolume();

    short getFaderLevel();

    short[] getFaderLevelRange();

    short getLMHBandLevel(int band);

    short[] getLMHBandLevelRange();

    int getMaxVolumeByUsage(String usage);

    int getMinVolumeByUsage(String usage);

    int getNaviVoiceMixMode();

    short getNumberOfBands();

    short getNumberOfPresets();

    String getPresetName(short preset);

    int getStreamVolume(int streamType);

    int[] getSupportedEffectEnhanceMode();

    int getVolumeByUsage(String usage);

    boolean isAudioSettingSupported(int audioSetting);

    int isBalanceSupported();

    int isCompensationSettingSupported(int compensationSetting);

    boolean isDtsSoundEnabled();

    int isEqualizerSupported();

    int isFaderSupported();

    boolean isHarmanClariFiOnOff();

    int isHarmanSettingSupported(int harmanSetting);

    boolean isHarmanSurroundSoundOnOff();

    boolean isLoudnessEnabled();

    boolean isSpeedCompensatedVolumeEnabled();

    boolean isSurroundSoundLevelSupported();

    boolean isSurroundSoundOnOff();

    void registerAudioSettingChangedCallback(IGlyAudioCallback callback);

    boolean registerCompensationSettingListener(IGlyCompensationSettingListener listener);

    boolean registerEqualizerStateListener(IGlyEqualizerStateListener listener);

    void registerExternalAudioCallback(IGlyExternalSpeakersListener callback);

    void registerExternalAudioVolumeCallback(IGlyExternalSpeakersVolumeListener callback);

    boolean registerFaderBalanceStateListener(IGlyFaderBalanceStateListener listener);

    boolean registerHarmanSettingListener(IGlyHarmanSettingListener listener);

    void release();

    void setBalanceLevel(short level);

    void setBandLevel(short band, short level);

    void setCompensationLevelOfSpeedCompensatedVolume(int level);

    boolean setDtsSoundMode(int dtsMode);

    boolean setEffectEnhanceMode(int effectMode);

    boolean setExternalSpeakersMediaPlayMode(int mode);

    boolean setExternalSpeakersSwitch(boolean enabled);

    boolean setExternalSpeakersVolume(int volume);

    void setFaderLevel(short level);

    boolean setHarmanClariFiOnOff(boolean onOff);

    boolean setHarmanSurroundSoundOnOff(boolean onOff);

    void setLMHBandLevel(int band, short level);

    void setLMHBandLevel(short band, short level);

    void setLoudnessEnable(boolean enable);

    void setMicVolumeCallbackSwitch(int value);

    void setNaviVoiceMixMode(int mode);

    void setSpeedCompensatedVolumeEnable(boolean enable);

    boolean setSurroundSoundOnOff(boolean onOff);

    void setVolumeByUsage(String usage, int volume);

    void setVolumeByUsage(String usage, int volume, int flags);

    void unregisterAudioSettingChangedCallback(IGlyAudioCallback callback);

    boolean unregisterCompensationSettingListener(IGlyCompensationSettingListener listener);

    boolean unregisterEqualizerStateListener(IGlyEqualizerStateListener listener);

    void unregisterExternalAudioCallback(IGlyExternalSpeakersListener callback);

    void unregisterExternalAudioVolumeCallback(IGlyExternalSpeakersVolumeListener callback);

    boolean unregisterFaderBalanceStateListener(IGlyFaderBalanceStateListener listener);

    boolean unregisterHarmanSettingListener(IGlyHarmanSettingListener listener);

    void usePreset(short preset);
}
