.class public interface abstract Lcom/geely/os/audio/IGlyCompensationSettingListener;
.super Ljava/lang/Object;
.source "IGlyCompensationSettingListener.java"


# virtual methods
.method public abstract onCompensationSettingStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compensationSetting"
        }
    .end annotation
.end method

.method public abstract onEffectEnhanceModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectMode"
        }
    .end annotation
.end method

.method public abstract onLevelOfSpeedVolumeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract onLoudnessChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loudness"
        }
    .end annotation
.end method
