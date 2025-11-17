.class public interface abstract Lcom/geely/os/audio/IGlyAudioCallback;
.super Ljava/lang/Object;
.source "IGlyAudioCallback.java"


# virtual methods
.method public abstract onAudioSettingStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSetting"
        }
    .end annotation
.end method

.method public abstract onGroupVolumeChanged([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation
.end method

.method public abstract onNaviMixModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract onSurroundSoundOnOffChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation
.end method
