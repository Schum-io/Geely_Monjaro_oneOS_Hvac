.class Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUserCenter.java"

# interfaces
.implements Lcom/geely/lib/cloud/usercenter/IUserCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/geely/lib/cloud/usercenter/IUserCenter;


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

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAgreementComparisonDetails(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "docParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1317
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1319
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1323
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1325
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1326
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1327
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1328
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getAgreementComparisonDetails(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1334
    throw p1
.end method

.method public getAgreementPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recordsParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1271
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1273
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1277
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1279
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1280
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1281
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1282
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getAgreementPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1288
    throw p1
.end method

.method public getAgreementResults(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "docParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1294
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1296
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1300
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1302
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1303
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1304
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1305
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getAgreementResults(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1311
    throw p1
.end method

.method public getDownloadUrl(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 1668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1670
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1671
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1672
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1673
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1674
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getDownloadUrl(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    throw p1
.end method

.method public getHimaUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thirdTypeParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1545
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1547
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1551
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1553
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1554
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1555
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1556
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getHimaUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1562
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.geely.lib.cloud.usercenter.IUserCenter"

    return-object v0
.end method

.method public getKugouBindAccountUpdate(Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thirdTokenOpenIdParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1520
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1522
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1526
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1528
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1529
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1530
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1531
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getKugouBindAccountUpdate(Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1537
    throw p1
.end method

.method public getKugouBindQrcode(Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thirdTokenOpenIdParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1474
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1476
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1480
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1482
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1483
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1484
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1485
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getKugouBindQrcode(Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1491
    throw p1
.end method

.method public getKugouUnboundAccount(Lcom/geely/lib/cloud/usercenter/bean/UserIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIdParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1497
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1499
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/UserIdParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1503
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1505
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1506
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1507
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1508
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getKugouUnboundAccount(Lcom/geely/lib/cloud/usercenter/bean/UserIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1514
    throw p1
.end method

.method public getNeteaseBindQrcode(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1426
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1428
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/TokenParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1432
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1434
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1435
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1436
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1437
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getNeteaseBindQrcode(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1443
    throw p1
.end method

.method public getNeteaseUnboundAccount(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1449
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1451
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/TokenParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1455
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1457
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1458
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1459
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1460
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getNeteaseUnboundAccount(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1466
    throw p1
.end method

.method public getPrivacyDetail(Lcom/geely/lib/cloud/usercenter/bean/PrivacyDetailParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privacyDetailParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1645
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1647
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/PrivacyDetailParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1651
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1653
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1654
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1655
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1656
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getPrivacyDetail(Lcom/geely/lib/cloud/usercenter/bean/PrivacyDetailParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1662
    throw p1
.end method

.method public getPrivacyHistory(Lcom/geely/lib/cloud/usercenter/bean/PrivacyHistoryParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privacyHistoryParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1620
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1622
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/PrivacyHistoryParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1626
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1628
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1629
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1630
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1631
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getPrivacyHistory(Lcom/geely/lib/cloud/usercenter/bean/PrivacyHistoryParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1637
    throw p1
.end method

.method public getPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privacyRecordsParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1595
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1597
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1601
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1603
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1604
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1605
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1606
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1612
    throw p1
.end method

.method public getThirdAccount(Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thirdAccountParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1342
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1344
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1348
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1350
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1351
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1352
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1353
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getThirdAccount(Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1359
    throw p1
.end method

.method public getThirdBindAppList(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 1363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1365
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1366
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1367
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1368
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1369
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getThirdBindAppList(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1375
    throw p1
.end method

.method public getThirdBindStatus(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "thirdType",
            "action",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1381
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1384
    invoke-interface {p3}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1385
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1386
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1387
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getThirdBindStatus(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1393
    throw p1
.end method

.method public getThirdSwitchStatus(Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "switchParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1570
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1572
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1576
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1578
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1579
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1580
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1581
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getThirdSwitchStatus(Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1587
    throw p1
.end method

.method public getTodayRadioUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thirdTypeParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1401
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1403
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1407
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1409
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1410
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1411
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1412
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getTodayRadioUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1418
    throw p1
.end method

.method public getUserAPPOwnerQrcode(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1014
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1015
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1016
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1017
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1018
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserAPPOwnerQrcode(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1024
    throw p1
.end method

.method public getUserApplicationAdd(Lcom/geely/lib/cloud/usercenter/bean/ApkParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "apkparam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1246
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1248
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1252
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1254
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1255
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1256
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1257
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserApplicationAdd(Lcom/geely/lib/cloud/usercenter/bean/ApkParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1263
    throw p1
.end method

.method public getUserApplicationList(Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vehicleModel",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1223
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1225
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1229
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1231
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1232
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1233
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1234
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserApplicationList(Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1240
    throw p1
.end method

.method public getUserHabitVehicleDownload(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 1053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1055
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1056
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1057
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1058
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1059
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserHabitVehicleDownload(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1065
    throw p1
.end method

.method public getUserHabitVehicleUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profileParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1032
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1034
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1040
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1041
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1042
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1043
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserHabitVehicleUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1049
    throw p1
.end method

.method public getUserInfo(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 1071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1073
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1074
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1075
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1076
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1077
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserInfo(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1083
    throw p1
.end method

.method public getUserLoginConfirm(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terminalIdParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 841
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 843
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 849
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 850
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 851
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 852
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginConfirm(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 858
    throw p1
.end method

.method public getUserLoginLogout(Lcom/geely/lib/cloud/usercenter/bean/UserLogoutParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userLogoutParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 910
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 912
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/UserLogoutParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 916
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 918
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 919
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 920
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 921
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginLogout(Lcom/geely/lib/cloud/usercenter/bean/UserLogoutParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 927
    throw p1
.end method

.method public getUserLoginQrcode(Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "getQrCodeParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 795
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 797
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    invoke-virtual {p1, v0, v1}, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 801
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 803
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 804
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 805
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 806
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginQrcode(Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    throw p1
.end method

.method public getUserLoginQrcodeStatus(Lcom/geely/lib/cloud/usercenter/bean/QrCodeStatusParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "qrCodeStatusParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 818
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 820
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/QrCodeStatusParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 824
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 826
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 827
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 828
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 829
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginQrcodeStatus(Lcom/geely/lib/cloud/usercenter/bean/QrCodeStatusParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    throw p1
.end method

.method public getUserLoginRefresh(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "refreshTokenParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 887
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 889
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 893
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 895
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 896
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 897
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 898
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginRefresh(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 904
    throw p1
.end method

.method public getUserLoginSync(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam1;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "refreshToken",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 991
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 993
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam1;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 997
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 999
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1000
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1001
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1002
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginSync(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam1;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    throw p1
.end method

.method public getUserLoginUserInfo(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terminalIdParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 864
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 866
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 870
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 872
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 873
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 874
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 875
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginUserInfo(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 881
    throw p1
.end method

.method public getUserMessageSend(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 1186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1189
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1190
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1191
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1192
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserMessageSend(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1198
    throw p1
.end method

.method public getUserMessageVerify(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verificationCode",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1204
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1206
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1207
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1208
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1209
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserMessageVerify(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1215
    throw p1
.end method

.method public getUserPhone(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 1168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1170
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1171
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1172
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1173
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1174
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserPhone(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1180
    throw p1
.end method

.method public getUserRelationAdd(Lcom/geely/lib/cloud/usercenter/bean/PhoneParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "phone",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 951
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 953
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/PhoneParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 959
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 960
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 961
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 962
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserRelationAdd(Lcom/geely/lib/cloud/usercenter/bean/PhoneParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 968
    throw p1
.end method

.method public getUserRelationDelete(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 974
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 976
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 977
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 979
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserRelationDelete(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 985
    throw p1
.end method

.method public getUserRelationList(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 935
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 936
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 937
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 938
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 939
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserRelationList(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    throw p1
.end method

.method public getUserScopeConfirm(Lcom/geely/lib/cloud/usercenter/bean/ScopeConfirmParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scopeConfirmParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1147
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/ScopeConfirmParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1153
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1155
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1156
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1157
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1158
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserScopeConfirm(Lcom/geely/lib/cloud/usercenter/bean/ScopeConfirmParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1164
    throw p1
.end method

.method public getUserScopeInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scope",
            "brandCode",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1129
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1132
    invoke-interface {p3}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1133
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1134
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1135
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserScopeInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1141
    throw p1
.end method

.method public getUserSettingsDownload(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "model",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1112
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1114
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1115
    iget-object v2, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1116
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1117
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserSettingsDownload(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1123
    throw p1
.end method

.method public getUserSettingsUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profileParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1089
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1091
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1095
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1097
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1098
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1099
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1100
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserSettingsUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1106
    throw p1
.end method

.method public postRegisterAdd(Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "postDeviceAddParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 1688
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1690
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1694
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1696
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1697
    iget-object v3, p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1698
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1699
    invoke-static {}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->postRegisterAdd(Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1705
    throw p1
.end method
