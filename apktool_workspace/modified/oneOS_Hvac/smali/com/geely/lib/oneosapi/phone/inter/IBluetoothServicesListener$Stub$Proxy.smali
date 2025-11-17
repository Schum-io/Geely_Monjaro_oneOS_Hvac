.class public Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothServicesListener.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener"

    return-object v0
.end method

.method public onCallAdded(Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p1, v0, v3}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    :goto_0
    iget-object v4, p0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-static {}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;->getDefaultImpl()Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-static {}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;->getDefaultImpl()Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;->onCallAdded(Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 25
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {p1, v1}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 35
    throw p1
.end method

.method public onCallAddedOther(Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callItem",
            "otherCallItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p1, v0, v3}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {p2, v0, v3}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    :goto_1
    iget-object v2, p0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    invoke-static {}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;->getDefaultImpl()Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 21
    invoke-static {}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;->getDefaultImpl()Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;->onCallAddedOther(Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 35
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    invoke-virtual {p1, v1}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p2, v1}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :cond_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw p1
.end method

.method public onCallViewStateChange(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v2, p0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;->getDefaultImpl()Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;->getDefaultImpl()Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;->onCallViewStateChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 16
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 23
    throw p1
.end method
