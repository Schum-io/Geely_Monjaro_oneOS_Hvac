.class public abstract Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter$Stub;
.super Landroid/os/Binder;
.source "IMediaCenter.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.mediacenter.IMediaCenter"

.field public static final TRANSACTION_addPsdSourceStateListener:I = 0x9

.field public static final TRANSACTION_addRebootPlayChangeListener:I = 0x17

.field public static final TRANSACTION_addSourceStateListener:I = 0x4

.field public static final TRANSACTION_getAppPackageName:I = 0x14

.field public static final TRANSACTION_getCarManager:I = 0x7

.field public static final TRANSACTION_getCurrentAppSource:I = 0x2

.field public static final TRANSACTION_getCurrentAudioSource:I = 0x1

.field public static final TRANSACTION_getCurrentPsdAppSource:I = 0xd

.field public static final TRANSACTION_getCurrentPsdAudioSource:I = 0xc

.field public static final TRANSACTION_getFocusedAppSource:I = 0x11

.field public static final TRANSACTION_getFocusedAudioSource:I = 0x10

.field public static final TRANSACTION_getMusicManager:I = 0x5

.field public static final TRANSACTION_getPsdFocusedAppSource:I = 0x13

.field public static final TRANSACTION_getPsdFocusedAudioSource:I = 0x12

.field public static final TRANSACTION_getRadioManager:I = 0x6

.field public static final TRANSACTION_getRebootPlay:I = 0x16

.field public static final TRANSACTION_isPsdBtAudioSource:I = 0xa

.field public static final TRANSACTION_isPsdBtDeviceConnected:I = 0xf

.field public static final TRANSACTION_requestAudioSource:I = 0x3

.field public static final TRANSACTION_setHeartbeatPacket:I = 0x8

.field public static final TRANSACTION_setPsdBtAudioSource:I = 0xb

.field public static final TRANSACTION_setPsdBtChannel:I = 0xe

.field public static final TRANSACTION_setRebootPlay:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.mediacenter.IMediaCenter"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;
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
    const-string v0, "com.geely.lib.oneosapi.mediacenter.IMediaCenter"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

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
    .locals 4
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

    const-string v1, "com.geely.lib.oneosapi.mediacenter.IMediaCenter"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRebootPlayChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/IRebootPlayChangeListener;

    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->addRebootPlayChangeListener(Lcom/geely/lib/oneosapi/mediacenter/listener/IRebootPlayChangeListener;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 7
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getRebootPlay()I

    move-result p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 11
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->setRebootPlay(I)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 16
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 21
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getAppPackageName(II)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 24
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getPsdFocusedAppSource()I

    move-result p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 28
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getPsdFocusedAudioSource()I

    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 32
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getFocusedAppSource()I

    move-result p1

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 36
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getFocusedAudioSource()I

    move-result p1

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 40
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->isPsdBtDeviceConnected()Z

    move-result p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 44
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v2, v0

    .line 49
    :cond_0
    invoke-interface {p0, p1, v2}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->setPsdBtChannel(IZ)V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 51
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCurrentPsdAppSource()I

    move-result p1

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 55
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCurrentPsdAudioSource()I

    move-result p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 59
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v2, v0

    .line 66
    :cond_1
    invoke-interface {p0, p1, p4, v2}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->setPsdBtAudioSource(IIZ)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 68
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 73
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->isPsdBtAudioSource(II)Z

    move-result p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 76
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;

    move-result-object p1

    .line 79
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->addPsdSourceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 81
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/IHeartbeatPacket$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/IHeartbeatPacket;

    move-result-object p1

    .line 84
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->setHeartbeatPacket(Lcom/geely/lib/oneosapi/mediacenter/IHeartbeatPacket;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 86
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCarManager()Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;

    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 89
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 90
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    move-result-object p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 93
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 94
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getMusicManager()Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    move-result-object p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 97
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 98
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;

    move-result-object p1

    .line 101
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->addSourceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 103
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 108
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->requestAudioSource(II)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 110
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCurrentAppSource()I

    move-result p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 114
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCurrentAudioSource()I

    move-result p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 118
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
