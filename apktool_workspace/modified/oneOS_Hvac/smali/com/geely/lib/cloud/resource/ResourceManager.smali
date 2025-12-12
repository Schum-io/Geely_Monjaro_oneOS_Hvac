.class public Lcom/geely/lib/cloud/resource/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/resource/IResource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ResourceManager"

    const-string v1, "ResourceManager create"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/resource/ResourceManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p2}, Lcom/geely/lib/cloud/resource/IResource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/resource/IResource;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/resource/ResourceManager;->mService:Lcom/geely/lib/cloud/resource/IResource;

    return-void
.end method


# virtual methods
.method public getCarModel(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "carSeries",
            "code",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ResourceManager"

    const-string v1, "getCarModel"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/geely/lib/cloud/resource/ResourceManager;->mService:Lcom/geely/lib/cloud/resource/IResource;

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Lcom/geely/lib/cloud/resource/ResourceManager$5;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/resource/ResourceManager$5;-><init>(Lcom/geely/lib/cloud/resource/ResourceManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/resource/IResource;->getCarModel(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 180
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCloudAlbumFlag(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ResourceManager"

    const-string v1, "getCloudAlbumFlag"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/geely/lib/cloud/resource/ResourceManager;->mService:Lcom/geely/lib/cloud/resource/IResource;

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Lcom/geely/lib/cloud/resource/ResourceManager$3;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/resource/ResourceManager$3;-><init>(Lcom/geely/lib/cloud/resource/ResourceManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/resource/IResource;->getCloudAlbumFlag(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getFragranceUrl(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ResourceManager"

    const-string v1, "getFragranceUrl"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/geely/lib/cloud/resource/ResourceManager;->mService:Lcom/geely/lib/cloud/resource/IResource;

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Lcom/geely/lib/cloud/resource/ResourceManager$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/resource/ResourceManager$2;-><init>(Lcom/geely/lib/cloud/resource/ResourceManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/resource/IResource;->getFragranceUrl(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getInstructionBookUrl(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ResourceManager"

    const-string v1, "getInstructionBookUrl"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/geely/lib/cloud/resource/ResourceManager;->mService:Lcom/geely/lib/cloud/resource/IResource;

    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Lcom/geely/lib/cloud/resource/ResourceManager$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/resource/ResourceManager$1;-><init>(Lcom/geely/lib/cloud/resource/ResourceManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/resource/IResource;->getInstructionBookUrl(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getSmartDriveImageList(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "vehicleSeriesCode",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ResourceManager"

    const-string v1, "getSmartDriveImageList"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/geely/lib/cloud/resource/ResourceManager;->mService:Lcom/geely/lib/cloud/resource/IResource;

    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Lcom/geely/lib/cloud/resource/ResourceManager$4;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/resource/ResourceManager$4;-><init>(Lcom/geely/lib/cloud/resource/ResourceManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/resource/IResource;->getSmartDriveImageList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 150
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    const-string v0, "ResourceManager"

    const-string v1, "ResourceManager setService"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 30
    invoke-static {p1}, Lcom/geely/lib/cloud/resource/IResource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/resource/IResource;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/resource/ResourceManager;->mService:Lcom/geely/lib/cloud/resource/IResource;

    :cond_0
    return-void
.end method
