.class public Lcom/geely/lib/oneosapi/device/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/oneosapi/device/IDevice;


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/device/DeviceManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/geely/lib/oneosapi/device/IDevice$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/device/IDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/device/DeviceManager;->mService:Lcom/geely/lib/oneosapi/device/IDevice;

    return-void
.end method


# virtual methods
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

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/device/IDevice$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/device/IDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/device/DeviceManager;->mService:Lcom/geely/lib/oneosapi/device/IDevice;

    :cond_0
    return-void
.end method
