.class public interface abstract Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;
.super Ljava/lang/Object;
.source "IGlyBTHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/bt/IGlyBTHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IGlyBTCallback"
.end annotation


# virtual methods
.method public abstract onBTBondStatusChanged(Lcom/geely/os/bt/GlyBluetoothDevice;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bluetoothDevice",
            "bondState"
        }
    .end annotation
.end method

.method public abstract onBTConnectStatusChanged(Lcom/geely/os/bt/GlyBluetoothDevice;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bluetoothDevice",
            "connectState"
        }
    .end annotation
.end method

.method public abstract onBTDeviceFound(Lcom/geely/os/bt/GlyBluetoothDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bluetoothDevice"
        }
    .end annotation
.end method

.method public abstract onBTNameChanged()V
.end method

.method public abstract onBTStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onProfileConnectStatusChanged(Lcom/geely/os/bt/GlyBluetoothDevice;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bluetoothDevice",
            "connectStatus",
            "profile"
        }
    .end annotation
.end method

.method public abstract onScanFinished()V
.end method

.method public abstract onScanStart()V
.end method
