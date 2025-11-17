.class Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFurniture.java"

# interfaces
.implements Lcom/geely/lib/cloud/furniture/IFurniture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/furniture/IFurniture$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/geely/lib/cloud/furniture/IFurniture;


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

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.geely.lib.cloud.furniture.IFurniture"

    return-object v0
.end method

.method public getJDAuthInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "terminalId",
            "userQrcode",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.furniture.IFurniture"

    .line 296
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 299
    invoke-interface {p3}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 300
    iget-object v2, p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 302
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/geely/lib/cloud/furniture/IFurniture;->getJDAuthInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    throw p1
.end method

.method public getJDLoginQrcode(Lcom/geely/lib/cloud/furniture/bean/JDQrcodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jdQrcodeParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.furniture.IFurniture"

    .line 273
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/furniture/bean/JDQrcodeParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 281
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 282
    iget-object v3, p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 284
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/furniture/IFurniture;->getJDLoginQrcode(Lcom/geely/lib/cloud/furniture/bean/JDQrcodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw p1
.end method

.method public getJDUnboundAccount(Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jdAccountParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.furniture.IFurniture"

    .line 314
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 322
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 323
    iget-object v3, p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 325
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/furniture/IFurniture;->getJDUnboundAccount(Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 331
    throw p1
.end method

.method public getSmartHomeCardList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terminalId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.furniture.IFurniture"

    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 195
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 196
    iget-object v2, p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/furniture/IFurniture;->getSmartHomeCardList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    throw p1
.end method

.method public getSmartHomeDeviceControl(Lcom/geely/lib/cloud/furniture/bean/DeviceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.furniture.IFurniture"

    .line 250
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 258
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 259
    iget-object v3, p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 261
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/furniture/IFurniture;->getSmartHomeDeviceControl(Lcom/geely/lib/cloud/furniture/bean/DeviceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    throw p1
.end method

.method public getSmartHomeSceneAction(Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sceneActionParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.furniture.IFurniture"

    .line 227
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 235
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 236
    iget-object v3, p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 238
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/furniture/IFurniture;->getSmartHomeSceneAction(Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw p1
.end method

.method public getSmartHomeSceneList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terminalId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.furniture.IFurniture"

    .line 210
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 212
    invoke-interface {p2}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 213
    iget-object v2, p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 215
    invoke-static {}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/furniture/IFurniture;->getSmartHomeSceneList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw p1
.end method
