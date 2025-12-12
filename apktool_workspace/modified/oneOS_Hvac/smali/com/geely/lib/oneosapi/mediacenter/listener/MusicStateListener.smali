.class public interface abstract Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;
.super Ljava/lang/Object;
.source "MusicStateListener.java"


# virtual methods
.method public abstract onFavorStateChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "mediaData"
        }
    .end annotation
.end method

.method public abstract onLrcLoad(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "lrc",
            "time"
        }
    .end annotation
.end method

.method public abstract onMediaDataChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "mediaData"
        }
    .end annotation
.end method

.method public abstract onPlayListChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPlayModeChange(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "mode"
        }
    .end annotation
.end method

.method public abstract onPlayPositionChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "current",
            "total"
        }
    .end annotation
.end method

.method public abstract onPlayStateChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "state"
        }
    .end annotation
.end method
