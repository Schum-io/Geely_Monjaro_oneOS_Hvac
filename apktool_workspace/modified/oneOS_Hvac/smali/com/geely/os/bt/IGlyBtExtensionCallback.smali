.class public interface abstract Lcom/geely/os/bt/IGlyBtExtensionCallback;
.super Ljava/lang/Object;
.source "IGlyBtExtensionCallback.java"


# virtual methods
.method public abstract onAdapterStateChanged(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prevState",
            "newState"
        }
    .end annotation
.end method

.method public abstract onAvrcpPlayPosUpdated(Lcom/geely/os/bt/GlyBtDevice;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "device",
            "playPos"
        }
    .end annotation
.end method

.method public abstract onAvrcpPlayStateUpdated(Lcom/geely/os/bt/GlyBtDevice;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "device",
            "playState"
        }
    .end annotation
.end method

.method public abstract onDeviceBondStateChanged(Lcom/geely/os/bt/GlyBtDevice;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "device",
            "prevState",
            "newState"
        }
    .end annotation
.end method

.method public abstract onDeviceFoundChanged(ILcom/geely/os/bt/GlyBtDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scanState",
            "device"
        }
    .end annotation
.end method

.method public abstract onDevicePowerUpdated(Lcom/geely/os/bt/GlyBtDevice;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "device",
            "value"
        }
    .end annotation
.end method

.method public abstract onDeviceUuidsUpdated(Lcom/geely/os/bt/GlyBtDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation
.end method

.method public abstract onPairedDevicesChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allPairedDevice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/os/bt/GlyBtDevice;",
            ">;)V"
        }
    .end annotation
.end method
