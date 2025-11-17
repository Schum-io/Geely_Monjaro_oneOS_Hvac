.class public Lcom/geely/lib/cloud/device/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/device/IDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "binder"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/device/DeviceManager;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {p2}, Lcom/geely/lib/cloud/device/IDevice$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/device/IDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/device/DeviceManager;->mService:Lcom/geely/lib/cloud/device/IDevice;

    return-void
.end method


# virtual methods
.method public setDeviceInfo(Lcom/geely/lib/cloud/device/data/DeviceInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceInfo"
        }
    .end annotation

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/device/DeviceManager;->mService:Lcom/geely/lib/cloud/device/IDevice;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lcom/geely/lib/cloud/device/IDevice;->setDeviceInfo(Lcom/geely/lib/cloud/device/data/DeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 24
    invoke-static {p1}, Lcom/geely/lib/cloud/device/IDevice$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/device/IDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/device/DeviceManager;->mService:Lcom/geely/lib/cloud/device/IDevice;

    :cond_0
    return-void
.end method
