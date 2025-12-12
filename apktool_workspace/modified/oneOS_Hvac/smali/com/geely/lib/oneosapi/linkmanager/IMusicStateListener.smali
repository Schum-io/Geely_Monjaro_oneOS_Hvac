.class public interface abstract Lcom/geely/lib/oneosapi/linkmanager/IMusicStateListener;
.super Ljava/lang/Object;
.source "IMusicStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/linkmanager/IMusicStateListener$Stub;,
        Lcom/geely/lib/oneosapi/linkmanager/IMusicStateListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onMusicStatusChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "artistName",
            "albumName",
            "coverArt",
            "lyrics",
            "totalTimesMs",
            "title",
            "authorName",
            "writerName",
            "composerName",
            "playingCurrentTimeMs",
            "isFavorite",
            "isPlaying"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
