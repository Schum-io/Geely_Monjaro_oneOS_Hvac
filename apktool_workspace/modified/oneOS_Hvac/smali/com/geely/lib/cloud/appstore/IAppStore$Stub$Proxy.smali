.class Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppStore.java"

# interfaces
.implements Lcom/geely/lib/cloud/appstore/IAppStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/appstore/IAppStore$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/geely/lib/cloud/appstore/IAppStore;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAppInstallAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appVersionParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 606
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 614
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 615
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 616
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 617
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppInstallAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    throw p1
.end method

.method public getAppStoreBatchCheckUpdate(Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnAppListParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 399
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 407
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 408
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 409
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 410
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreBatchCheckUpdate(Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw p1
.end method

.method public getAppStoreCategory(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 422
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 424
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/PdsnParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 430
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 431
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 433
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreCategory(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    throw p1
.end method

.method public getAppStoreCategoryList(Lcom/geely/lib/cloud/appstore/bean/PdsnIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnIdParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 445
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/PdsnIdParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 453
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 454
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 455
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 456
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreCategoryList(Lcom/geely/lib/cloud/appstore/bean/PdsnIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    throw p1
.end method

.method public getAppStoreDetails(Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vinPackageParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 491
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 493
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 499
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 500
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 502
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreDetails(Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    throw p1
.end method

.method public getAppStoreDownRanking(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 353
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/PdsnParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 361
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 362
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 363
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 364
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreDownRanking(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    throw p1
.end method

.method public getAppStoreDownUp(Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appPackageParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 514
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 522
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 523
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 524
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 525
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreDownUp(Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    throw p1
.end method

.method public getAppStoreGameHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vinVersionParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 537
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 545
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 546
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 547
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 548
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreGameHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    throw p1
.end method

.method public getAppStoreGameSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnKeyParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 560
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 562
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 568
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 569
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 570
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 571
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreGameSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    throw p1
.end method

.method public getAppStoreGroupList(Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idPdsnParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 376
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 384
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 385
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 386
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 387
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreGroupList(Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    throw p1
.end method

.method public getAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnKeyParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 468
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 476
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 477
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 478
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 479
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 485
    throw p1
.end method

.method public getAppStoresHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pasnVersionParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 330
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    invoke-virtual {p1, v0, v1}, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 338
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 339
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 341
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoresHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 347
    throw p1
.end method

.method public getAppVersionAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appVersionParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 583
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 591
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 592
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 593
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 594
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppVersionAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.geely.lib.cloud.appstore.IAppStore"

    return-object v0
.end method

.method public getNewAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnKeyNewParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.appstore.IAppStore"

    .line 629
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 637
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 638
    iget-object v3, p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 639
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 640
    invoke-static {}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getNewAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    throw p1
.end method
