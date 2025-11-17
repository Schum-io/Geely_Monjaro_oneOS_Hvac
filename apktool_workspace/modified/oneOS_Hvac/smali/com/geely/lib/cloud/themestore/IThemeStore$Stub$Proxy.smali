.class Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;
.super Ljava/lang/Object;
.source "IThemeStore.java"

# interfaces
.implements Lcom/geely/lib/cloud/themestore/IThemeStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/geely/lib/cloud/themestore/IThemeStore;


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

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getBuyResource(Lcom/geely/lib/cloud/themestore/bean/BuyResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buyResourceParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 731
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/BuyResourceParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 739
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 740
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 741
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 742
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getBuyResource(Lcom/geely/lib/cloud/themestore/bean/BuyResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 748
    throw p1
.end method

.method public getDelResource(Lcom/geely/lib/cloud/themestore/bean/DelResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delResourceParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 754
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 756
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/DelResourceParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 762
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 763
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 764
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 765
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getDelResource(Lcom/geely/lib/cloud/themestore/bean/DelResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 771
    throw p1
.end method

.method public getGoodsDownloadResource(Lcom/geely/lib/cloud/themestore/bean/DownResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downResourceParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 570
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/DownResourceParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 578
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 579
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 580
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 581
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsDownloadResource(Lcom/geely/lib/cloud/themestore/bean/DownResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    throw p1
.end method

.method public getGoodsFrames(Lcom/geely/lib/cloud/themestore/bean/GetFramsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "getFramsParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 386
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    invoke-virtual {p1, v0, v1}, Lcom/geely/lib/cloud/themestore/bean/GetFramsParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 394
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 395
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 396
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 397
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsFrames(Lcom/geely/lib/cloud/themestore/bean/GetFramsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 403
    throw p1
.end method

.method public getGoodsGetGoodsCateGory(Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "getGoodsCategoryParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 455
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 463
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 464
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 465
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 466
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsGetGoodsCateGory(Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 472
    throw p1
.end method

.method public getGoodsOperateInfo(Lcom/geely/lib/cloud/themestore/bean/GetOperateInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "getOperateInfoParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 409
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/GetOperateInfoParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 417
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 418
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 419
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 420
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsOperateInfo(Lcom/geely/lib/cloud/themestore/bean/GetOperateInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw p1
.end method

.method public getGoodsOperateMoreInfo(Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "operateMoreInfoParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 432
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 440
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 441
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 442
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 443
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsOperateMoreInfo(Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    throw p1
.end method

.method public getGoodsPreview(Lcom/geely/lib/cloud/themestore/bean/GoodsPreviewParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "goodsPreviewParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 524
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/GoodsPreviewParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 532
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 533
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 534
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 535
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsPreview(Lcom/geely/lib/cloud/themestore/bean/GoodsPreviewParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    throw p1
.end method

.method public getGoodsPurchaseResource(Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "purchaseResourceParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 547
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 555
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 556
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 557
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 558
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsPurchaseResource(Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    throw p1
.end method

.method public getGoodsSearchGoods(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchGoodsParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 478
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 486
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 487
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 488
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 489
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsSearchGoods(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    throw p1
.end method

.method public getGoodsSearchGoodsDetail(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsDetailParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchGoodsDetailParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 501
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsDetailParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 509
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 510
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 511
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 512
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsSearchGoodsDetail(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsDetailParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 518
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.geely.lib.cloud.themestore.IThemeStore"

    return-object v0
.end method

.method public getOrderCancleOrder(Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cancleOrderParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 662
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 664
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 670
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 671
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 672
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 673
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getOrderCancleOrder(Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 679
    throw p1
.end method

.method public getOrderCreateOrder(Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "createOrderParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 593
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 601
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 602
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 603
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 604
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getOrderCreateOrder(Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 610
    throw p1
.end method

.method public getOrderPay(Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orderPayParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 616
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 624
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 625
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 626
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 627
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getOrderPay(Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 633
    throw p1
.end method

.method public getOrderSearchOrderStatus(Lcom/geely/lib/cloud/themestore/bean/SearchOrderStatusParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchOrderStatusParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 639
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 641
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/SearchOrderStatusParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 647
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 648
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 649
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 650
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getOrderSearchOrderStatus(Lcom/geely/lib/cloud/themestore/bean/SearchOrderStatusParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 656
    throw p1
.end method

.method public getThemeGoodsPurchaseCount(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 708
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/appstore/bean/PdsnParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 714
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 716
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 717
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 718
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 719
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getThemeGoodsPurchaseCount(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 725
    throw p1
.end method

.method public getThemeGoodsPurchaseRecord(Lcom/geely/lib/cloud/themestore/bean/PurchaseRecordParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "purchaseRecordParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 685
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 687
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/themestore/bean/PurchaseRecordParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 691
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 693
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 694
    iget-object v3, p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 695
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 696
    invoke-static {}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getThemeGoodsPurchaseRecord(Lcom/geely/lib/cloud/themestore/bean/PurchaseRecordParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    throw p1
.end method
