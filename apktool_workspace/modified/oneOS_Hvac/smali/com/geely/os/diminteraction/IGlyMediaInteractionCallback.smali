.class public interface abstract Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;
.super Ljava/lang/Object;
.source "IGlyMediaInteractionCallback.java"


# virtual methods
.method public abstract onMediaHighlighted(Lcom/geely/os/diminteraction/IGlyMedia;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "media"
        }
    .end annotation
.end method

.method public abstract onMediaSelected(Lcom/geely/os/diminteraction/IGlyMedia;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "media"
        }
    .end annotation
.end method

.method public abstract onSourceSelected(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceType"
        }
    .end annotation
.end method

.method public abstract onUpdateMediaStatusRequest(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataType"
        }
    .end annotation
.end method
