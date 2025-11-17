.class public interface abstract Lcom/geely/os/uiinteraction/IGlyMultiWindow;
.super Ljava/lang/Object;
.source "IGlyMultiWindow.java"


# virtual methods
.method public abstract closeSplitScreenMode()V
.end method

.method public abstract closeSplitScreenMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screen"
        }
    .end annotation
.end method

.method public abstract getBottomScreenPackageName()Ljava/lang/String;
.end method

.method public abstract getScreenStackPackageName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screen"
        }
    .end annotation
.end method

.method public abstract getTopScreenPackageName()Ljava/lang/String;
.end method

.method public abstract isActivitySupportedSplitScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkg",
            "cls"
        }
    .end annotation
.end method

.method public abstract isInSplitScreenWindowingMode()Z
.end method

.method public abstract isPackageSupportedSplitScreen(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation
.end method

.method public abstract isSplitScreenModeSupported()I
.end method

.method public abstract moveActivityBetweenDisplay(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gesture"
        }
    .end annotation
.end method

.method public abstract swapDockedAndFullscreenStack()V
.end method
