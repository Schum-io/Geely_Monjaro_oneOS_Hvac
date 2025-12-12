.class public abstract Lcom/geely/lib/oneosapi/linkmanager/ILinkManager$Stub;
.super Landroid/os/Binder;
.source "ILinkManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/linkmanager/ILinkManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.linkmanager.ILinkManager"

.field public static final TRANSACTION_fastBackward:I = 0x10

.field public static final TRANSACTION_fastForward:I = 0xf

.field public static final TRANSACTION_getConnectedSessionBrand:I = 0x4

.field public static final TRANSACTION_getConnectedSessionType:I = 0x5

.field public static final TRANSACTION_isSessionConnected:I = 0x3

.field public static final TRANSACTION_isSourceActivated:I = 0xa

.field public static final TRANSACTION_next:I = 0xd

.field public static final TRANSACTION_play:I = 0xb

.field public static final TRANSACTION_previous:I = 0xe

.field public static final TRANSACTION_registerListener:I = 0x6

.field public static final TRANSACTION_registerModemCallStateListener:I = 0x13

.field public static final TRANSACTION_registerMusicStateListener:I = 0x15

.field public static final TRANSACTION_sessionConnected:I = 0x1

.field public static final TRANSACTION_sessionDisconnected:I = 0x2

.field public static final TRANSACTION_setModemCallState:I = 0x12

.field public static final TRANSACTION_setMusicInfo:I = 0x11

.field public static final TRANSACTION_stop:I = 0xc

.field public static final TRANSACTION_tryConnect:I = 0x8

.field public static final TRANSACTION_unregisterListener:I = 0x7

.field public static final TRANSACTION_unregisterModemCallStateListener:I = 0x14

.field public static final TRANSACTION_unregisterMusicStateListener:I = 0x16

.field public static final TRANSACTION_updatePlayState:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.linkmanager.ILinkManager"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;
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
    const-string v0, "com.geely.lib.oneosapi.linkmanager.ILinkManager"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;

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
    .locals 18
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

    move-object/from16 v14, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v15, p3

    const/16 v16, 0x1

    const-string v2, "com.geely.lib.oneosapi.linkmanager.ILinkManager"

    const v3, 0x5f4e5446

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/linkmanager/IMusicStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/linkmanager/IMusicStateListener;

    move-result-object v0

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {v14, v0, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->unregisterMusicStateListener(Lcom/geely/lib/oneosapi/linkmanager/IMusicStateListener;Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 9
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/linkmanager/IMusicStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/linkmanager/IMusicStateListener;

    move-result-object v0

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-interface {v14, v0, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->registerMusicStateListener(Lcom/geely/lib/oneosapi/linkmanager/IMusicStateListener;Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 16
    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/linkmanager/IModemCallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/linkmanager/IModemCallStateListener;

    move-result-object v0

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {v14, v0, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->unregisterModemCallStateListener(Lcom/geely/lib/oneosapi/linkmanager/IModemCallStateListener;Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 23
    :pswitch_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/linkmanager/IModemCallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/linkmanager/IModemCallStateListener;

    move-result-object v0

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-interface {v14, v0, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->registerModemCallStateListener(Lcom/geely/lib/oneosapi/linkmanager/IModemCallStateListener;Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 30
    :pswitch_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 33
    invoke-interface {v14, v0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->setModemCallState(I)V

    .line 34
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 35
    :pswitch_5
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    move/from16 v17, v16

    goto :goto_0

    :cond_0
    move/from16 v17, v13

    .line 59
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v13, v16

    :cond_1
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move/from16 v12, v17

    .line 60
    invoke-interface/range {v0 .. v13}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->setMusicInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 62
    :pswitch_6
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->fastBackward()V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 65
    :pswitch_7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->fastForward()V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 68
    :pswitch_8
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->previous()V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 71
    :pswitch_9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->next()V

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 74
    :pswitch_a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->stop()V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 77
    :pswitch_b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->play()V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 80
    :pswitch_c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->isSourceActivated()Z

    move-result v0

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    .line 84
    :pswitch_d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    invoke-interface {v14, v0, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->updatePlayState(II)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 91
    :pswitch_e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/linkmanager/ITryConnectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/linkmanager/ITryConnectCallback;

    move-result-object v1

    .line 98
    invoke-interface {v14, v0, v2, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->tryConnect(IILcom/geely/lib/oneosapi/linkmanager/ITryConnectCallback;)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 100
    :pswitch_f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/linkmanager/ILinkListener;

    move-result-object v0

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-interface {v14, v0, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->unregisterListener(Lcom/geely/lib/oneosapi/linkmanager/ILinkListener;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 107
    :pswitch_10
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/linkmanager/ILinkListener;

    move-result-object v0

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-interface {v14, v0, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->registerListener(Lcom/geely/lib/oneosapi/linkmanager/ILinkListener;Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 114
    :pswitch_11
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->getConnectedSessionType()I

    move-result v0

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    .line 118
    :pswitch_12
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->getConnectedSessionBrand()I

    move-result v0

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    .line 122
    :pswitch_13
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-interface/range {p0 .. p0}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->isSessionConnected()Z

    move-result v0

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v16

    .line 126
    :pswitch_14
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    invoke-interface {v14, v0, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->sessionDisconnected(II)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 133
    :pswitch_15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    invoke-interface {v14, v0, v1}, Lcom/geely/lib/oneosapi/linkmanager/ILinkManager;->sessionConnected(II)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v16

    .line 140
    :cond_2
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
