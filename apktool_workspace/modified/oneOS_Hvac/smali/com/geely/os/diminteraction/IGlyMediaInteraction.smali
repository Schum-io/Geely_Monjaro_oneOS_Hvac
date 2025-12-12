.class public interface abstract Lcom/geely/os/diminteraction/IGlyMediaInteraction;
.super Ljava/lang/Object;
.source "IGlyMediaInteraction.java"


# virtual methods
.method public abstract setMediaInteractionCallback(Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unsetMediaInteractionCallback(Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract updateCurrentProgress(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public abstract updateCurrentSourceType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceType"
        }
    .end annotation
.end method

.method public abstract updateExtensionInfo(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensionInfo"
        }
    .end annotation
.end method

.method public abstract updateMediaMuteState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract updateMediaSourceTypeList([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceTypeList"
        }
    .end annotation
.end method

.method public abstract updatePlaybackInfo(Lcom/geely/os/diminteraction/IGlyPlaybackInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackInfo"
        }
    .end annotation
.end method

.method public abstract updatePlaylist(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceType",
            "playlist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/geely/os/diminteraction/IGlyMedia;",
            ">;)V"
        }
    .end annotation
.end method
