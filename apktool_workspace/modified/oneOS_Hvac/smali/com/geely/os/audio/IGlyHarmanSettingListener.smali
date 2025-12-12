.class public interface abstract Lcom/geely/os/audio/IGlyHarmanSettingListener;
.super Ljava/lang/Object;
.source "IGlyHarmanSettingListener.java"


# virtual methods
.method public abstract onBandChanged(II)V
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

.method public abstract onHarmanSettingStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "harmanSetting"
        }
    .end annotation
.end method
