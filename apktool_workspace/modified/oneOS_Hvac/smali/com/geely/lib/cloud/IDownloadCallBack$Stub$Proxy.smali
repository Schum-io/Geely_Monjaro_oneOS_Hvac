.class Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDownloadCallBack.java"

# interfaces
.implements Lcom/geely/lib/cloud/IDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/IDownloadCallBack$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/geely/lib/cloud/IDownloadCallBack;


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

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public completed(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.IDownloadCallBack"

    .line 280
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/download/bean/TaskEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    :goto_0
    iget-object v2, p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/IDownloadCallBack;->completed(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw p1
.end method

.method public connected(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.IDownloadCallBack"

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/download/bean/TaskEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    :goto_0
    iget-object v2, p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/IDownloadCallBack;->connected(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw p1
.end method

.method public error(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.IDownloadCallBack"

    .line 324
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/download/bean/TaskEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    :goto_0
    iget-object v2, p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 334
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/IDownloadCallBack;->error(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.geely.lib.cloud.IDownloadCallBack"

    return-object v0
.end method

.method public paused(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.IDownloadCallBack"

    .line 302
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/download/bean/TaskEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    :goto_0
    iget-object v2, p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 312
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/IDownloadCallBack;->paused(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    throw p1
.end method

.method public pending(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.IDownloadCallBack"

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {p1, v0, v1}, Lcom/geely/lib/cloud/download/bean/TaskEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/IDownloadCallBack;->pending(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    throw p1
.end method

.method public progress(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.IDownloadCallBack"

    .line 258
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/download/bean/TaskEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    :goto_0
    iget-object v2, p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 268
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/IDownloadCallBack;->progress(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw p1
.end method

.method public started(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.IDownloadCallBack"

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {p1, v0, v2}, Lcom/geely/lib/cloud/download/bean/TaskEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 224
    invoke-static {}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/IDownloadCallBack;->started(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    throw p1
.end method
