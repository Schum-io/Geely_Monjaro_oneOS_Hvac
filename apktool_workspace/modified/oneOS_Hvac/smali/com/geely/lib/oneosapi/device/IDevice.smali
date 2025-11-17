.class public interface abstract Lcom/geely/lib/oneosapi/device/IDevice;
.super Ljava/lang/Object;
.source "IDevice.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/device/IDevice$Stub;,
        Lcom/geely/lib/oneosapi/device/IDevice$Default;
    }
.end annotation


# virtual methods
.method public abstract getVIN()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVehicleType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
