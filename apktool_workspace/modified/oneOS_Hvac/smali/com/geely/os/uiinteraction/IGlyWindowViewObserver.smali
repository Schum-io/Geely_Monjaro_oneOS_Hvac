.class public interface abstract Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;
.super Ljava/lang/Object;
.source "IGlyWindowViewObserver.java"


# virtual methods
.method public abstract onWindowAdded(Lcom/geely/os/uiinteraction/IGlyWindow;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation
.end method

.method public abstract onWindowFrameChanged(Lcom/geely/os/uiinteraction/IGlyWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "window",
            "oldFrame",
            "newFrame"
        }
    .end annotation
.end method

.method public abstract onWindowRemoved(Lcom/geely/os/uiinteraction/IGlyWindow;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation
.end method

.method public abstract onWindowVisibilityChanged(Lcom/geely/os/uiinteraction/IGlyWindow;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "visibility"
        }
    .end annotation
.end method
