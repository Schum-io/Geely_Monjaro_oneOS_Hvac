.class public interface abstract Lcom/geely/os/uiinteraction/IGlyWindowManager;
.super Ljava/lang/Object;
.source "IGlyWindowManager.java"


# virtual methods
.method public abstract getWindowList()[Lcom/geely/os/uiinteraction/IGlyWindow;
.end method

.method public abstract registerWindowObserver(Lcom/geely/os/uiinteraction/IGlyWindowObserver;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract registerWindowViewObserver(Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract unregisterWindowObserver(Lcom/geely/os/uiinteraction/IGlyWindowObserver;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract unregisterWindowViewObserver(Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method
