.class public interface abstract Lcom/geely/os/uiinteraction/IGlyTouchManager;
.super Ljava/lang/Object;
.source "IGlyTouchManager.java"


# virtual methods
.method public abstract registerFullScreenTouchListener(ILandroid/view/View$OnTouchListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterFullScreenTouchListener(Landroid/view/View$OnTouchListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
