.class public interface abstract Lcom/geely/os/audio/IGlyAudio;
.super Ljava/lang/Object;
.source "IGlyAudio.java"


# virtual methods
.method public abstract adjustStreamVolume(III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamType",
            "direction",
            "flags"
        }
    .end annotation
.end method

.method public abstract getAudioAtrributesContentType(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation
.end method

.method public abstract getAudioAtrributesUsage(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation
.end method

.method public abstract getAudioAtrributesUsage(Ljava/lang/String;Landroid/view/Display;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usage",
            "display"
        }
    .end annotation
.end method

.method public abstract getAudioProvider()I
.end method

.method public abstract getBalanceLevel()S
.end method

.method public abstract getBalanceLevelRange()[S
.end method

.method public abstract getBandLevel(S)S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "band"
        }
    .end annotation
.end method

.method public abstract getBandLevelRange()[S
.end method

.method public abstract getCompensationLevelOfSpeedCompensatedVolume()I
.end method

.method public abstract getCurrentPreset()S
.end method

.method public abstract getDtsSoundMode()I
.end method

.method public abstract getEffectEnhanceMode()I
.end method

.method public abstract getExternalSpeakersMediaPlayMode()I
.end method

.method public abstract getExternalSpeakersVolume()I
.end method

.method public abstract getFaderLevel()S
.end method

.method public abstract getFaderLevelRange()[S
.end method

.method public abstract getLMHBandLevel(I)S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "band"
        }
    .end annotation
.end method

.method public abstract getLMHBandLevelRange()[S
.end method

.method public abstract getMaxVolumeByUsage(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation
.end method

.method public abstract getMinVolumeByUsage(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation
.end method

.method public abstract getNaviVoiceMixMode()I
.end method

.method public abstract getNumberOfBands()S
.end method

.method public abstract getNumberOfPresets()S
.end method

.method public abstract getPresetName(S)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation
.end method

.method public abstract getStreamVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation
.end method

.method public abstract getSupportedEffectEnhanceMode()[I
.end method

.method public abstract getVolumeByUsage(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation
.end method

.method public abstract isAudioSettingSupported(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSetting"
        }
    .end annotation
.end method

.method public abstract isBalanceSupported()I
.end method

.method public abstract isCompensationSettingSupported(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compensationSetting"
        }
    .end annotation
.end method

.method public abstract isDtsSoundEnabled()Z
.end method

.method public abstract isEqualizerSupported()I
.end method

.method public abstract isFaderSupported()I
.end method

.method public abstract isHarmanClariFiOnOff()Z
.end method

.method public abstract isHarmanSettingSupported(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "harmanSetting"
        }
    .end annotation
.end method

.method public abstract isHarmanSurroundSoundOnOff()Z
.end method

.method public abstract isLoudnessEnabled()Z
.end method

.method public abstract isSpeedCompensatedVolumeEnabled()Z
.end method

.method public abstract isSurroundSoundLevelSupported()Z
.end method

.method public abstract isSurroundSoundOnOff()Z
.end method

.method public abstract registerAudioSettingChangedCallback(Lcom/geely/os/audio/IGlyAudioCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract registerCompensationSettingListener(Lcom/geely/os/audio/IGlyCompensationSettingListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerEqualizerStateListener(Lcom/geely/os/audio/IGlyEqualizerStateListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerExternalAudioCallback(Lcom/geely/os/audio/IGlyExternalSpeakersListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract registerExternalAudioVolumeCallback(Lcom/geely/os/audio/IGlyExternalSpeakersVolumeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract registerFaderBalanceStateListener(Lcom/geely/os/audio/IGlyFaderBalanceStateListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerHarmanSettingListener(Lcom/geely/os/audio/IGlyHarmanSettingListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setBalanceLevel(S)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setBandLevel(SS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "band",
            "level"
        }
    .end annotation
.end method

.method public abstract setCompensationLevelOfSpeedCompensatedVolume(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setDtsSoundMode(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dtsMode"
        }
    .end annotation
.end method

.method public abstract setEffectEnhanceMode(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectMode"
        }
    .end annotation
.end method

.method public abstract setExternalSpeakersMediaPlayMode(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setExternalSpeakersSwitch(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract setExternalSpeakersVolume(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract setFaderLevel(S)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHarmanClariFiOnOff(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation
.end method

.method public abstract setHarmanSurroundSoundOnOff(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation
.end method

.method public abstract setLMHBandLevel(IS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "band",
            "level"
        }
    .end annotation
.end method

.method public abstract setLMHBandLevel(SS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "band",
            "level"
        }
    .end annotation
.end method

.method public abstract setLoudnessEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMicVolumeCallbackSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setNaviVoiceMixMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSpeedCompensatedVolumeEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSurroundSoundOnOff(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation
.end method

.method public abstract setVolumeByUsage(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usage",
            "volume"
        }
    .end annotation
.end method

.method public abstract setVolumeByUsage(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "usage",
            "volume",
            "flags"
        }
    .end annotation
.end method

.method public abstract unregisterAudioSettingChangedCallback(Lcom/geely/os/audio/IGlyAudioCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unregisterCompensationSettingListener(Lcom/geely/os/audio/IGlyCompensationSettingListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterEqualizerStateListener(Lcom/geely/os/audio/IGlyEqualizerStateListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterExternalAudioCallback(Lcom/geely/os/audio/IGlyExternalSpeakersListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unregisterExternalAudioVolumeCallback(Lcom/geely/os/audio/IGlyExternalSpeakersVolumeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unregisterFaderBalanceStateListener(Lcom/geely/os/audio/IGlyFaderBalanceStateListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterHarmanSettingListener(Lcom/geely/os/audio/IGlyHarmanSettingListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract usePreset(S)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation
.end method
