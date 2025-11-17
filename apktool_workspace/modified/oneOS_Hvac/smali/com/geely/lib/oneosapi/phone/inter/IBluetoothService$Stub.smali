.class public abstract Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothService.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.phone.inter.IBluetoothService"

.field public static final TRANSACTION_actionAcceptOrDisconnectCall:I = 0xd

.field public static final TRANSACTION_actionRejectOrTerminated:I = 0xe

.field public static final TRANSACTION_answerCall:I = 0x5

.field public static final TRANSACTION_callbackCall:I = 0x17

.field public static final TRANSACTION_disconnectCall:I = 0x6

.field public static final TRANSACTION_getCallLogList:I = 0x12

.field public static final TRANSACTION_getCallbackCallItem:I = 0x1a

.field public static final TRANSACTION_getDownloadStateListener:I = 0x14

.field public static final TRANSACTION_getGlyCallItem:I = 0x18

.field public static final TRANSACTION_getRebroadcastCallItem:I = 0x19

.field public static final TRANSACTION_holdCall:I = 0x9

.field public static final TRANSACTION_isMicrophoneMute:I = 0xc

.field public static final TRANSACTION_placeCall:I = 0x3

.field public static final TRANSACTION_playDTM:I = 0x7

.field public static final TRANSACTION_rebroadcastCall:I = 0x16

.field public static final TRANSACTION_registerBtStateListener:I = 0x1b

.field public static final TRANSACTION_registerCallLogListener:I = 0x15

.field public static final TRANSACTION_registerDownloadStateListener:I = 0x13

.field public static final TRANSACTION_registerListener:I = 0x1

.field public static final TRANSACTION_rejectCall:I = 0x4

.field public static final TRANSACTION_rejectRingOrTerminatedActive:I = 0xf

.field public static final TRANSACTION_setCallViewStatus:I = 0x11

.field public static final TRANSACTION_setMicrophoneAudio:I = 0xa

.field public static final TRANSACTION_setRingtoneMute:I = 0xb

.field public static final TRANSACTION_stopDtmfTone:I = 0x8

.field public static final TRANSACTION_switchActiveCall:I = 0x10

.field public static final TRANSACTION_unRegisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.phone.inter.IBluetoothService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;
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
    const-string v0, "com.geely.lib.oneosapi.phone.inter.IBluetoothService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;

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

    const-string v1, "com.geely.lib.oneosapi.phone.inter.IBluetoothService"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/phone/inter/IBtStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/phone/inter/IBtStateChangeListener;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->registerBtStateListener(Lcom/geely/lib/oneosapi/phone/inter/IBtStateChangeListener;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 9
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->getCallbackCallItem()Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {p1, p3, v0}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 18
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->getRebroadcastCallItem()Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    invoke-virtual {p1, p3, v0}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 27
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->getGlyCallItem()Ljava/util/List;

    move-result-object p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 31
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->callbackCall()V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 34
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->rebroadcastCall()V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 37
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/phone/inter/ICallLogDateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/phone/inter/ICallLogDateListener;

    move-result-object p1

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->registerCallLogListener(Lcom/geely/lib/oneosapi/phone/inter/ICallLogDateListener;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 44
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 49
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->getDownloadStateListener(II)I

    move-result p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 52
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/phone/inter/IPhonebookDownloadStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/phone/inter/IPhonebookDownloadStateListener;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->registerDownloadStateListener(Lcom/geely/lib/oneosapi/phone/inter/IPhonebookDownloadStateListener;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 59
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->getCallLogList()Ljava/util/List;

    move-result-object p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 63
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 66
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->setCallViewStatus(I)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 68
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->switchActiveCall()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 71
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->rejectRingOrTerminatedActive()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 74
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->actionRejectOrTerminated()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 77
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->actionAcceptOrDisconnectCall()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 80
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->isMicrophoneMute()Z

    move-result p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 84
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v2, v0

    .line 87
    :cond_2
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->setRingtoneMute(Z)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 89
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    .line 92
    :cond_3
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->setMicrophoneAudio(Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 94
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v2, v0

    .line 97
    :cond_4
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->holdCall(Z)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 99
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->stopDtmfTone()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 102
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    .line 105
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->playDTM(C)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 107
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->disconnectCall()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 110
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->answerCall()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 113
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->rejectCall()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 116
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->placeCall(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 121
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    move-result-object p1

    .line 124
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->unRegisterListener(Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 126
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothService;->registerListener(Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 133
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
