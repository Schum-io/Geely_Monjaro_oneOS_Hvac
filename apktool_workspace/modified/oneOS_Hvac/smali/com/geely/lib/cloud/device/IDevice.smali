.class public interface abstract Lcom/geely/lib/cloud/device/IDevice;
.super Ljava/lang/Object;
.source "IDevice.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/device/IDevice$Stub;,
        Lcom/geely/lib/cloud/device/IDevice$Default;
    }
.end annotation


# virtual methods
.method public abstract setDeviceInfo(Lcom/geely/lib/cloud/device/data/DeviceInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
