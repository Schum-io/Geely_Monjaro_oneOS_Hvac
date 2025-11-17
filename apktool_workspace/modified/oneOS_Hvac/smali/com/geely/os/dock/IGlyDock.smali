.class public interface abstract Lcom/geely/os/dock/IGlyDock;
.super Ljava/lang/Object;
.source "IGlyDock.java"


# virtual methods
.method public abstract handOverDock(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isHide"
        }
    .end annotation
.end method

.method public abstract setDockCustomAppIcon(I[B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "image"
        }
    .end annotation
.end method

.method public abstract setDockCustomHvacIcon(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method
