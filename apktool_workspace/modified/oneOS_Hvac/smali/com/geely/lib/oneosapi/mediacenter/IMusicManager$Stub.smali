.class public abstract Lcom/geely/lib/oneosapi/mediacenter/IMusicManager$Stub;
.super Landroid/os/Binder;
.source "IMusicManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/IMusicManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.mediacenter.IMusicManager"

.field public static final TRANSACTION_addDeviceStateListener:I = 0x2

.field public static final TRANSACTION_addFavor:I = 0xc

.field public static final TRANSACTION_addMediaStateListener:I = 0x34

.field public static final TRANSACTION_addMusicStateListener:I = 0x1

.field public static final TRANSACTION_addPsdMediaStateListener:I = 0x35

.field public static final TRANSACTION_addPsdMusicStateListener:I = 0x2c

.field public static final TRANSACTION_cancelFavor:I = 0xd

.field public static final TRANSACTION_connectBtDevice:I = 0x18

.field public static final TRANSACTION_fastForward:I = 0x9

.field public static final TRANSACTION_fastRewind:I = 0xa

.field public static final TRANSACTION_getBtState:I = 0x1e

.field public static final TRANSACTION_getConnectedDevice:I = 0x1d

.field public static final TRANSACTION_getContent:I = 0x23

.field public static final TRANSACTION_getCurrentMediaBundle:I = 0x33

.field public static final TRANSACTION_getCurrentMediaData:I = 0x11

.field public static final TRANSACTION_getCurrentPathFiles:I = 0x17

.field public static final TRANSACTION_getCurrentPlayState:I = 0xf

.field public static final TRANSACTION_getCurrentPosition:I = 0x10

.field public static final TRANSACTION_getDevicesInfo:I = 0x12

.field public static final TRANSACTION_getFavorList:I = 0xe

.field public static final TRANSACTION_getOnlineUserInfoAsync:I = 0x1a

.field public static final TRANSACTION_getPlayList:I = 0xb

.field public static final TRANSACTION_getPlayListAsync:I = 0x2b

.field public static final TRANSACTION_getPlayMode:I = 0x15

.field public static final TRANSACTION_getRecentlyAppSource:I = 0x22

.field public static final TRANSACTION_isAgreedUserProtocol:I = 0x37

.field public static final TRANSACTION_isMusicQualitySwitch:I = 0x38

.field public static final TRANSACTION_isSupportChangeMode:I = 0x36

.field public static final TRANSACTION_next:I = 0x7

.field public static final TRANSACTION_notifyVrStatusNotifierStatus:I = 0x39

.field public static final TRANSACTION_onUIWordingTriggered:I = 0x32

.field public static final TRANSACTION_openFavor:I = 0x20

.field public static final TRANSACTION_openHistory:I = 0x21

.field public static final TRANSACTION_openLoginPage:I = 0x2d

.field public static final TRANSACTION_openLrcPage:I = 0x2f

.field public static final TRANSACTION_openPlayList:I = 0x26

.field public static final TRANSACTION_pause:I = 0x5

.field public static final TRANSACTION_play:I = 0x4

.field public static final TRANSACTION_playContent:I = 0x24

.field public static final TRANSACTION_playFavor:I = 0x27

.field public static final TRANSACTION_playItem:I = 0x3

.field public static final TRANSACTION_playSearchSongByNameItem:I = 0x1c

.field public static final TRANSACTION_prev:I = 0x6

.field public static final TRANSACTION_replay:I = 0x2e

.field public static final TRANSACTION_searchMediaForVR:I = 0x25

.field public static final TRANSACTION_searchSongByName:I = 0x1b

.field public static final TRANSACTION_searchSongByNameAsync:I = 0x1f

.field public static final TRANSACTION_seekTo:I = 0x8

.field public static final TRANSACTION_semanticSearch:I = 0x29

.field public static final TRANSACTION_semanticSearchAndPlay:I = 0x30

.field public static final TRANSACTION_semanticSearchAsync:I = 0x2a

.field public static final TRANSACTION_sendCommand:I = 0x31

.field public static final TRANSACTION_setActiveBtDevice:I = 0x19

.field public static final TRANSACTION_setPlayMode:I = 0x14

.field public static final TRANSACTION_startApp:I = 0x13

.field public static final TRANSACTION_startAppTab:I = 0x28

.field public static final TRANSACTION_startScanPath:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.mediacenter.IMusicManager"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;
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
    const-string v0, "com.geely.lib.oneosapi.mediacenter.IMusicManager"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

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
    .locals 13
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

    move-object v9, p0

    move v0, p1

    move-object v1, p2

    move-object/from16 v10, p3

    const/4 v11, 0x1

    const-string v2, "com.geely.lib.oneosapi.mediacenter.IMusicManager"

    const v3, 0x5f4e5446

    if-eq v0, v3, :cond_d

    const/4 v6, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 7
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->notifyVrStatusNotifierStatus(II)I

    move-result v0

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 10
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->isMusicQualitySwitch(II)Z

    move-result v0

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 18
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->isAgreedUserProtocol(I)Z

    move-result v0

    .line 22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 24
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 29
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->isSupportChangeMode(II)I

    move-result v0

    .line 30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 32
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener;

    move-result-object v1

    .line 37
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addPsdMediaStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener;)V

    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 39
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener;

    move-result-object v1

    .line 44
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addMediaStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener;)V

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 46
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v3

    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    move-object v0, p0

    move v1, v2

    move v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    .line 67
    invoke-interface/range {v0 .. v5}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentMediaBundle(IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object v0

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v11

    .line 75
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->onUIWordingTriggered(ILjava/lang/String;)I

    move-result v0

    .line 81
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 83
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v3

    .line 98
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    move-object v7, v0

    goto :goto_4

    :cond_4
    move-object v7, v3

    :goto_4
    move-object v0, p0

    move v1, v2

    move v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    .line 104
    invoke-interface/range {v0 .. v5}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->sendCommand(IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 106
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v7, v11

    goto :goto_5

    :cond_5
    move v7, v6

    .line 118
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v6, v11

    .line 120
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback;

    move-result-object v12

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    move-object v7, v8

    move-object v8, v12

    .line 123
    invoke-interface/range {v0 .. v8}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->semanticSearchAndPlay(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback;)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 125
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openLrcPage(I)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 130
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->replay(I)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 135
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openLoginPage(I)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 140
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IMusicStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/IMusicStateListener;

    move-result-object v1

    .line 145
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addPsdMusicStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IMusicStateListener;)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 147
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicListCallback;

    move-result-object v1

    .line 152
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getPlayListAsync(ILcom/geely/lib/oneosapi/mediacenter/callback/IMusicListCallback;)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 154
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback;

    move-result-object v1

    .line 161
    invoke-interface {p0, v0, v2, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->semanticSearchAsync(ILjava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 163
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 174
    invoke-interface/range {v0 .. v5}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->semanticSearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 176
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->startAppTab(ILjava/lang/String;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 183
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->playFavor(I)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 188
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 191
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openPlayList(I)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 193
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->searchMediaForVR(ILjava/lang/String;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 200
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v6, v11

    :cond_7
    move-object v0, p0

    move v1, v2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 211
    invoke-interface/range {v0 .. v5}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->playContent(IILjava/lang/String;IZ)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 213
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/callback/IContentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/callback/IContentCallback;

    move-result-object v1

    .line 220
    invoke-interface {p0, v0, v2, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getContent(ILjava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/IContentCallback;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 222
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 225
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getRecentlyAppSource(I)Ljava/util/List;

    move-result-object v0

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    .line 228
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openHistory(I)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 233
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openFavor(I)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 238
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/callback/ISearchSongCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/callback/ISearchSongCallback;

    move-result-object v1

    .line 245
    invoke-interface {p0, v0, v2, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->searchSongByNameAsync(ILjava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/ISearchSongCallback;)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 247
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 250
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getBtState(I)Z

    move-result v0

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 253
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    .line 259
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    invoke-virtual {v0, v10, v11}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 263
    :cond_8
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v11

    .line 264
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 271
    invoke-interface {p0, v0, v2, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->playSearchSongByNameItem(ILjava/lang/String;I)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 273
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->searchSongByName(ILjava/lang/String;)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 280
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/callback/IUserInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/callback/IUserInfoCallback;

    move-result-object v1

    .line 287
    invoke-interface {p0, v0, v2, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getOnlineUserInfoAsync(IILcom/geely/lib/oneosapi/mediacenter/callback/IUserInfoCallback;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 289
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->setActiveBtDevice(ILjava/lang/String;)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 296
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->connectBtDevice(ILjava/lang/String;)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 303
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentPathFiles(I)Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    .line 309
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->startScanPath(ILjava/lang/String;)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 316
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getPlayMode(I)I

    move-result v0

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 322
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->setPlayMode(II)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 329
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->startApp(I)V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 334
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getDevicesInfo(I)Ljava/util/List;

    move-result-object v0

    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    .line 340
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentMediaData(I)Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v0

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    .line 346
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {v0, v10, v11}, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 350
    :cond_9
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v11

    .line 351
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 354
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentPosition(I)J

    move-result-wide v0

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    .line 357
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 360
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentPlayState(I)I

    move-result v0

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 363
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 366
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getFavorList(I)Ljava/util/List;

    move-result-object v0

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    .line 369
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 374
    sget-object v2, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    .line 379
    :cond_a
    invoke-interface {p0, v0, v3}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->cancelFavor(ILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 381
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 386
    sget-object v2, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    .line 391
    :cond_b
    invoke-interface {p0, v0, v3}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addFavor(ILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 393
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 396
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getPlayList(I)Ljava/util/List;

    move-result-object v0

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    .line 399
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 404
    invoke-interface {p0, v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->fastRewind(IJ)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 406
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 411
    invoke-interface {p0, v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->fastForward(IJ)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 413
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 418
    invoke-interface {p0, v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->seekTo(IJ)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 420
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 423
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->next(I)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 425
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 428
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->prev(I)V

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 430
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 433
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->pause(I)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 435
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 438
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->play(I)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 440
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 445
    sget-object v2, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    .line 450
    :cond_c
    invoke-interface {p0, v0, v3}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->playItem(ILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 452
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;

    move-result-object v1

    .line 457
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addDeviceStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 459
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IMusicStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/IMusicStateListener;

    move-result-object v1

    .line 464
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addMusicStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IMusicStateListener;)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 466
    :cond_d
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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
