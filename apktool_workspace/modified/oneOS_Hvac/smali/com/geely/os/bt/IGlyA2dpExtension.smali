.class public interface abstract Lcom/geely/os/bt/IGlyA2dpExtension;
.super Ljava/lang/Object;
.source "IGlyA2dpExtension.java"


# virtual methods
.method public abstract getA2dpConnectedAddress()Ljava/lang/String;
.end method

.method public abstract getA2dpConnectionState()I
.end method

.method public abstract getA2dpThresholdVolume(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public abstract isA2dpConnected()Z
.end method

.method public abstract isA2dpServiceReady()Z
.end method

.method public abstract muteA2dpAudio(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mute",
            "address"
        }
    .end annotation
.end method

.method public abstract pauseA2dpRender()V
.end method

.method public abstract registerA2dpCallback(Lcom/geely/os/bt/IGlyA2dpCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation
.end method

.method public abstract reqA2dpConnect(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public abstract reqA2dpDisconnect(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public abstract setA2dpLocalVolume(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vol"
        }
    .end annotation
.end method

.method public abstract startA2dpRender()V
.end method

.method public abstract unregisterA2dpCallback(Lcom/geely/os/bt/IGlyA2dpCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation
.end method
