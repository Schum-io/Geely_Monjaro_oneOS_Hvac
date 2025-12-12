.class public interface abstract Lcom/geely/os/uiinteraction/IGlyUiInteraction;
.super Ljava/lang/Object;
.source "IGlyUiInteraction.java"


# virtual methods
.method public abstract getFreeFormWindowManager()Lcom/geely/os/uiinteraction/IGlyFreeFormWindow;
.end method

.method public abstract getMultiWindowManager()Lcom/geely/os/uiinteraction/IGlyMultiWindow;
.end method

.method public abstract getTouchManager()Lcom/geely/os/uiinteraction/IGlyTouchManager;
.end method

.method public abstract getWindowManager()Lcom/geely/os/uiinteraction/IGlyWindowManager;
.end method

.method public abstract startApplicationToDisplay(Ljava/lang/String;Landroid/view/Display;Landroid/view/Display;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkg",
            "from",
            "target"
        }
    .end annotation
.end method
