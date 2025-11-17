.class public abstract Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub;
.super Landroid/os/Binder;
.source "IDeviceStateListener.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener"

.field public static final TRANSACTION_onAppDied:I = 0x8

.field public static final TRANSACTION_onAppExistStateChanged:I = 0x7

.field public static final TRANSACTION_onBluetoothDeviceChange:I = 0x6

.field public static final TRANSACTION_onDeviceError:I = 0x2

.field public static final TRANSACTION_onDeviceStateChanged:I = 0x1

.field public static final TRANSACTION_onMediaQueryFinished:I = 0xa

.field public static final TRANSACTION_onMediaQueryStarted:I = 0x9

.field public static final TRANSACTION_onScanPathFinish:I = 0x3

.field public static final TRANSACTION_onSearchSongResult:I = 0x5

.field public static final TRANSACTION_onUserInfoResult:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 7
    sget-object p4, Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;

    .line 12
    :cond_0
    invoke-interface {p0, p1, v2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onMediaQueryFinished(ILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 14
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 19
    sget-object p4, Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;

    .line 24
    :cond_1
    invoke-interface {p0, p1, v2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onMediaQueryStarted(ILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 26
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 29
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onAppDied(I)V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 31
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 38
    :goto_0
    invoke-interface {p0, p1, p4, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onAppExistStateChanged(IIZ)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 40
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 44
    sget-object p4, Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 45
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onBluetoothDeviceChange(ILjava/util/List;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 47
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 53
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 54
    invoke-interface {p0, p1, p4, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onSearchSongResult(IILjava/util/List;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 56
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;

    .line 68
    :cond_3
    invoke-interface {p0, p1, p4, v2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onUserInfoResult(IILcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 70
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    sget-object p4, Lcom/geely/lib/oneosapi/mediacenter/bean/MusicFileData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 75
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onScanPathFinish(ILjava/util/List;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 77
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-interface {p0, p1, p4, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onDeviceError(IILjava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 86
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;

    .line 98
    :cond_4
    invoke-interface {p0, p1, p4, v2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;->onDeviceStateChanged(IILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 100
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
