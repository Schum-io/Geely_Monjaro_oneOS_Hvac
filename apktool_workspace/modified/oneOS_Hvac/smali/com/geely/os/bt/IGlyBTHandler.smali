.class public interface abstract Lcom/geely/os/bt/IGlyBTHandler;
.super Ljava/lang/Object;
.source "IGlyBTHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SCAN_DURATION:I = 0x7530


# direct methods
.method public static create(Landroid/content/Context;)Lcom/geely/os/bt/IGlyBTHandler;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 148
    invoke-static {p0}, Lcom/geely/os/bt/GlyBTHandlerImpl;->create(Landroid/content/Context;)Lcom/geely/os/bt/IGlyBTHandler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getBTDiscoverable()Z
.end method

.method public abstract getBTName()Ljava/lang/String;
.end method

.method public abstract getBondedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/bt/GlyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxA2DPDeviceNum()I
.end method

.method public abstract getMaxHFPDeviceNum()I
.end method

.method public abstract init()V
.end method

.method public abstract isBTFuncSupported()Z
.end method

.method public abstract isBlueToothOpen()Z
.end method

.method public abstract registerBTCallback(Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setBTDiscoverable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discoverable"
        }
    .end annotation
.end method

.method public abstract setBTName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btName"
        }
    .end annotation
.end method

.method public abstract setBTOnOff(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation
.end method

.method public abstract startScan()V
.end method

.method public abstract stopScan()V
.end method

.method public abstract unregisterBTCallback(Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
