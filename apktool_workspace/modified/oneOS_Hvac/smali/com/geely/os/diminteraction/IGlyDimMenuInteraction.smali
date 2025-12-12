.class public interface abstract Lcom/geely/os/diminteraction/IGlyDimMenuInteraction;
.super Ljava/lang/Object;
.source "IGlyDimMenuInteraction.java"


# virtual methods
.method public abstract getNaviMode()I
.end method

.method public abstract notifyDimControlCenterActiveType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activeType"
        }
    .end annotation
.end method

.method public abstract notifyDimEnterControlCenter(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enterControlCenterAction"
        }
    .end annotation
.end method

.method public abstract notifyDimSwitchThemeCompeted(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completed"
        }
    .end annotation
.end method

.method public abstract notifyIHUReady()V
.end method

.method public abstract registerDimMenuInteractionCallback(Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract requestDimSwitchTabWindow(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation
.end method

.method public abstract requestDimTheme()V
.end method

.method public abstract setVolume(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract setVolume(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isMute",
            "volume"
        }
    .end annotation
.end method

.method public abstract switchNaviMode(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviMode"
        }
    .end annotation
.end method

.method public abstract unregisterDimMenuInteractionCallback(Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
