.class public interface abstract Lcom/geely/os/bt/IGlyBtExtension;
.super Ljava/lang/Object;
.source "IGlyBtExtension.java"


# virtual methods
.method public abstract cancelBtDiscovery()Z
.end method

.method public abstract getA2dpAutoRejectConnStatus()Z
.end method

.method public abstract getA2dpExtension()Lcom/geely/os/bt/IGlyA2dpExtension;
.end method

.method public abstract getBtState()I
.end method

.method public abstract getConnectedPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getHeadsetPower(Lcom/geely/os/bt/GlyBtDevice;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation
.end method

.method public abstract getHfpAutoRejectConnStatus()Z
.end method

.method public abstract getMultiBtPbapExtension()Lcom/geely/os/bt/IGlyMultiBtPbapExtension;
.end method

.method public abstract getPSDBluetoothMacAddress()Ljava/lang/String;
.end method

.method public abstract getPbapExtension()Lcom/geely/os/bt/IGlyPbapExtension;
.end method

.method public abstract isBLEScanEnable()Z
.end method

.method public abstract isBtDiscovering()Z
.end method

.method public abstract isBtEnabled()Z
.end method

.method public abstract registerBtCallback(Lcom/geely/os/bt/IGlyBtExtensionCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation
.end method

.method public abstract reqBtPair(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public abstract reqBtPairedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/bt/GlyBtDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reqBtUnpair(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public abstract setA2dpAutoRejectConnStatus(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bReject"
        }
    .end annotation
.end method

.method public abstract setBLEScanEnable(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation
.end method

.method public abstract setBluetoothAutoConnect(Ljava/lang/String;IZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "profile",
            "enabled"
        }
    .end annotation
.end method

.method public abstract setBluetoothAutoConnect(Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "address",
            "enabled"
        }
    .end annotation
.end method

.method public abstract setBtEnable(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHfpAutoRejectConnStatus(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bReject"
        }
    .end annotation
.end method

.method public abstract startBtDiscovery()Z
.end method

.method public abstract startDiscoveryOnlyClassic()Z
.end method

.method public abstract unregisterBtCallback(Lcom/geely/os/bt/IGlyBtExtensionCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation
.end method
