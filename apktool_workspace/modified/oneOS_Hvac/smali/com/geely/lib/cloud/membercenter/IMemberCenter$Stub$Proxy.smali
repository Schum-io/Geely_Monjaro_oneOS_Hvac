.class Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMemberCenter.java"

# interfaces
.implements Lcom/geely/lib/cloud/membercenter/IMemberCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/geely/lib/cloud/membercenter/IMemberCenter;


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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.geely.lib.cloud.membercenter.IMemberCenter"

    return-object v0
.end method

.method public getLoginInfo(Lcom/geely/lib/cloud/ICloudCallback;)V
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

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.membercenter.IMemberCenter"

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 175
    iget-object v2, p0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 177
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->getLoginInfo(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw p1
.end method

.method public getLoginQrCode(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 4
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

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.membercenter.IMemberCenter"

    .line 141
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 143
    iget-object v2, p0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 145
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->getLoginQrCode(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    throw p1
.end method

.method public getLoginQrCodeStatus(Lcom/geely/lib/cloud/ICloudCallback;)V
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

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.membercenter.IMemberCenter"

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 158
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 159
    iget-object v2, p0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->getLoginQrCodeStatus(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw p1
.end method

.method public logout(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accessToken",
            "refreshToken",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.membercenter.IMemberCenter"

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 210
    invoke-interface {p3}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 211
    iget-object v2, p0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->logout(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw p1
.end method

.method public refreshToken(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accessToken",
            "refreshToken",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.membercenter.IMemberCenter"

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 192
    invoke-interface {p3}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 193
    iget-object v2, p0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    invoke-static {}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->refreshToken(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 201
    throw p1
.end method
