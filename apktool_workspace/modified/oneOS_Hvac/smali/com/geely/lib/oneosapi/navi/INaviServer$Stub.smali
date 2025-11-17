.class public abstract Lcom/geely/lib/oneosapi/navi/INaviServer$Stub;
.super Landroid/os/Binder;
.source "INaviServer.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/INaviServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/navi/INaviServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/navi/INaviServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.navi.INaviServer"

.field public static final TRANSACTION_addNaviEventNotify:I = 0x42

.field public static final TRANSACTION_addSurface:I = 0x2e

.field public static final TRANSACTION_addSurfaceWithRoadView:I = 0x2f

.field public static final TRANSACTION_addSurfaceWithRoadViewAndOffset:I = 0x36

.field public static final TRANSACTION_alongTheWaySearch:I = 0x20

.field public static final TRANSACTION_backToMap:I = 0x10

.field public static final TRANSACTION_cancelNavi:I = 0x6

.field public static final TRANSACTION_commonRequest:I = 0x5

.field public static final TRANSACTION_dispatchTouchEvent:I = 0x31

.field public static final TRANSACTION_downloadOfflineMap:I = 0x1c

.field public static final TRANSACTION_editFavoritePois:I = 0x26

.field public static final TRANSACTION_exitMap:I = 0x11

.field public static final TRANSACTION_getArrivedFrontPoiInfo:I = 0x2b

.field public static final TRANSACTION_getFavoritePois:I = 0x27

.field public static final TRANSACTION_getFrequentPois:I = 0x29

.field public static final TRANSACTION_getFrontTraffic:I = 0x8

.field public static final TRANSACTION_getGuideInfo:I = 0x9

.field public static final TRANSACTION_getHighwayExitInfo:I = 0xa

.field public static final TRANSACTION_getHistoryPois:I = 0x28

.field public static final TRANSACTION_getLocationRoadInfo:I = 0x3f

.field public static final TRANSACTION_getMapSupportedFeatures:I = 0x23

.field public static final TRANSACTION_getPackageName:I = 0x2d

.field public static final TRANSACTION_getRemainNopInfo:I = 0x35

.field public static final TRANSACTION_getRoutePlanInfo:I = 0xb

.field public static final TRANSACTION_getRunningMapFeatures:I = 0x24

.field public static final TRANSACTION_getSpeedLimitInfo:I = 0x2a

.field public static final TRANSACTION_getTrafficSummaryInfo:I = 0x19

.field public static final TRANSACTION_goCompany:I = 0x3a

.field public static final TRANSACTION_goFavorite:I = 0x1a

.field public static final TRANSACTION_goHome:I = 0x39

.field public static final TRANSACTION_goOfflineMapDownload:I = 0x1d

.field public static final TRANSACTION_invokeNaviAPI:I = 0x40

.field public static final TRANSACTION_invokeNaviAPIAsync:I = 0x41

.field public static final TRANSACTION_launchMap:I = 0xf

.field public static final TRANSACTION_mapIsLaunched:I = 0x12

.field public static final TRANSACTION_mapZoomInOut:I = 0x14

.field public static final TRANSACTION_modifyNaviVia:I = 0xe

.field public static final TRANSACTION_muteNaviAudio:I = 0x37

.field public static final TRANSACTION_naviFullView:I = 0x16

.field public static final TRANSACTION_naviTo:I = 0x3d

.field public static final TRANSACTION_naviToByNaviInfo:I = 0x3e

.field public static final TRANSACTION_openDestinationSearch:I = 0x13

.field public static final TRANSACTION_register:I = 0x3

.field public static final TRANSACTION_registerNaviObserver:I = 0x1

.field public static final TRANSACTION_removeNaviEventNotify:I = 0x43

.field public static final TRANSACTION_removedSurface:I = 0x30

.field public static final TRANSACTION_requestGeoDecoder:I = 0x21

.field public static final TRANSACTION_requestRoutePlanOrNavi:I = 0xd

.field public static final TRANSACTION_requestRoutePlanOrNaviViaRoad:I = 0x34

.field public static final TRANSACTION_rerouting:I = 0x2c

.field public static final TRANSACTION_searchAround:I = 0x1f

.field public static final TRANSACTION_searchByKeyword:I = 0x1e

.field public static final TRANSACTION_searchNearby:I = 0x3b

.field public static final TRANSACTION_searchPoiNearbyBurnout:I = 0x33

.field public static final TRANSACTION_selectRoute:I = 0x7

.field public static final TRANSACTION_setMapFeaturesRunningState:I = 0x25

.field public static final TRANSACTION_setMapViewMode:I = 0x15

.field public static final TRANSACTION_setReportNaviType:I = 0x32

.field public static final TRANSACTION_setRoutePlanStrategy:I = 0x22

.field public static final TRANSACTION_showMyLocation:I = 0x18

.field public static final TRANSACTION_specialPoiNavi:I = 0xc

.field public static final TRANSACTION_stopNavi:I = 0x3c

.field public static final TRANSACTION_switchARNavigation:I = 0x1b

.field public static final TRANSACTION_switchTraffic:I = 0x17

.field public static final TRANSACTION_unmuteNaviAudio:I = 0x38

.field public static final TRANSACTION_unrRegister:I = 0x4

.field public static final TRANSACTION_unregisterNaviObserver:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.navi.INaviServer"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviServer;
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
    const-string v0, "com.geely.lib.oneosapi.navi.INaviServer"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/navi/INaviServer;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/navi/INaviServer;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/INaviServer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/navi/INaviServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/navi/INaviServer;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/navi/INaviServer$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/navi/INaviServer;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/navi/INaviServer;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/navi/INaviServer$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/navi/INaviServer;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/navi/INaviServer$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/navi/INaviServer;

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

    const-string v2, "com.geely.lib.oneosapi.navi.INaviServer"

    const v3, 0x5f4e5446

    if-eq v0, v3, :cond_25

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/INaviEventNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviEventNotify;

    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->removeNaviEventNotify(Lcom/geely/lib/oneosapi/navi/INaviEventNotify;)Z

    move-result v0

    .line 6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 8
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/INaviEventNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviEventNotify;

    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->addNaviEventNotify(Lcom/geely/lib/oneosapi/navi/INaviEventNotify;)Z

    move-result v0

    .line 12
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 14
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;

    .line 23
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/INaviObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviObserver;

    move-result-object v0

    .line 24
    invoke-interface {p0, v4, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->invokeNaviAPIAsync(Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;Lcom/geely/lib/oneosapi/navi/INaviObserver;)I

    move-result v0

    .line 25
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 27
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;

    .line 35
    :cond_1
    invoke-interface {p0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->invokeNaviAPI(Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;)Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;

    move-result-object v0

    .line 36
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    invoke-virtual {v0, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v11

    .line 43
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getLocationRoadInfo()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 47
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/INaviInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviInfo;

    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->naviToByNaviInfo(Lcom/geely/lib/oneosapi/navi/INaviInfo;)Z

    move-result v0

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 53
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->naviTo(Ljava/lang/String;)Z

    move-result v0

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 59
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->stopNavi()Z

    move-result v0

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 63
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    move-object v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    .line 70
    invoke-interface/range {v0 .. v5}, Lcom/geely/lib/oneosapi/navi/INaviServer;->searchNearby(Ljava/lang/String;DD)Z

    move-result v0

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 73
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->goCompany()Z

    move-result v0

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 77
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->goHome()Z

    move-result v0

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 81
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->unmuteNaviAudio()Z

    move-result v0

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 85
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->muteNaviAudio()Z

    move-result v0

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 89
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    move-object v4, v0

    .line 98
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v12

    .line 111
    invoke-interface/range {v0 .. v8}, Lcom/geely/lib/oneosapi/navi/INaviServer;->addSurfaceWithRoadViewAndOffset(Landroid/view/Surface;IIIIIII)Z

    move-result v0

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 114
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getRemainNopInfo()V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 117
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanRequestBean;

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 128
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    sget-object v2, Lcom/geely/lib/oneosapi/navi/ipc/IViaRoadRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/IViaRoadRequestBean;

    .line 134
    :cond_5
    invoke-interface {p0, v5, v6, v0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->requestRoutePlanOrNaviViaRoad(JLcom/geely/lib/oneosapi/navi/ipc/IRoutePlanRequestBean;Lcom/geely/lib/oneosapi/navi/ipc/IViaRoadRequestBean;)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v0, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 141
    :cond_6
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-eqz v4, :cond_7

    .line 144
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/IViaRoadRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 148
    :cond_7
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v11

    .line 149
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    sget-object v2, Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;

    .line 159
    :cond_8
    invoke-interface {p0, v0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->searchPoiNearbyBurnout(ILcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;)V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_9

    .line 162
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 166
    :cond_9
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v11

    .line 167
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->setReportNaviType(I)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 172
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 175
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/MotionEvent;

    .line 180
    :cond_a
    invoke-interface {p0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 182
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/Surface;

    .line 191
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    invoke-interface {p0, v4, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->removedSurface(Landroid/view/Surface;I)Z

    move-result v0

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 195
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 198
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    move-object v4, v0

    .line 204
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    .line 213
    invoke-interface/range {v0 .. v6}, Lcom/geely/lib/oneosapi/navi/INaviServer;->addSurfaceWithRoadView(Landroid/view/Surface;IIIII)Z

    move-result v0

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 216
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 219
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/Surface;

    .line 225
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    invoke-interface {p0, v4, v0, v2, v1}, Lcom/geely/lib/oneosapi/navi/INaviServer;->addSurface(Landroid/view/Surface;III)Z

    move-result v0

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 233
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 237
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->rerouting()V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 240
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getArrivedFrontPoiInfo(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 245
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getSpeedLimitInfo()V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 248
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getFrequentPois(I)V

    .line 252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 253
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getHistoryPois(I)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 258
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getFavoritePois(I)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 263
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 266
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/IEditFavoriteRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/IEditFavoriteRequestBean;

    .line 271
    :cond_e
    invoke-interface {p0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->editFavoritePois(Lcom/geely/lib/oneosapi/navi/ipc/IEditFavoriteRequestBean;)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_f

    .line 274
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/IEditFavoriteRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 278
    :cond_f
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v11

    .line 279
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 282
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/ISetMapFeaturesRunningStateBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/ISetMapFeaturesRunningStateBean;

    .line 287
    :cond_10
    invoke-interface {p0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->setMapFeaturesRunningState(Lcom/geely/lib/oneosapi/navi/ipc/ISetMapFeaturesRunningStateBean;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_11

    .line 290
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/ISetMapFeaturesRunningStateBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 294
    :cond_11
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v11

    .line 295
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getRunningMapFeatures()V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 298
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getMapSupportedFeatures()V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 301
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->setRoutePlanStrategy(I)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 306
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 309
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    .line 314
    :cond_12
    invoke-interface {p0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->requestGeoDecoder(Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_13

    .line 317
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 321
    :cond_13
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v11

    .line 322
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 327
    sget-object v2, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAlongWayRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAlongWayRequestBean;

    .line 332
    :cond_14
    invoke-interface {p0, v0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->alongTheWaySearch(ILcom/geely/lib/oneosapi/navi/ipc/ISearchAlongWayRequestBean;)V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_15

    .line 335
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAlongWayRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 339
    :cond_15
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v11

    .line 340
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 347
    sget-object v2, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;

    .line 352
    :cond_16
    invoke-interface {p0, v5, v6, v0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->searchAround(JILcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;)V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_17

    .line 355
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 359
    :cond_17
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v11

    .line 360
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    .line 367
    sget-object v2, Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;

    .line 372
    :cond_18
    invoke-interface {p0, v5, v6, v0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->searchByKeyword(JILcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_19

    .line 375
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 379
    :cond_19
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v11

    .line 380
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->goOfflineMapDownload()V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 383
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 386
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->downloadOfflineMap(Ljava/util/List;)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    .line 389
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v3, v11

    .line 392
    :cond_1a
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviServer;->switchARNavigation(Z)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 394
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->goFavorite(I)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 399
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getTrafficSummaryInfo(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 404
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    move v3, v11

    .line 407
    :cond_1b
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviServer;->showMyLocation(Z)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 409
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v3, v11

    .line 412
    :cond_1c
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviServer;->switchTraffic(Z)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 414
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->naviFullView()V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 417
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 420
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->setMapViewMode(I)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 422
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 425
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->mapZoomInOut(I)V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 427
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 430
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;

    .line 435
    :cond_1d
    invoke-interface {p0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->openDestinationSearch(Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1e

    .line 438
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/IKeywordSearchRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 442
    :cond_1e
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v11

    .line 443
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->mapIsLaunched()Z

    move-result v0

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 447
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->exitMap()V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 450
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->backToMap()V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 453
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->launchMap()V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 456
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 459
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/IModifyViaPoiRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/IModifyViaPoiRequestBean;

    .line 464
    :cond_1f
    invoke-interface {p0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->modifyNaviVia(Lcom/geely/lib/oneosapi/navi/ipc/IModifyViaPoiRequestBean;)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_20

    .line 467
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/IModifyViaPoiRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 471
    :cond_20
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v11

    .line 472
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 477
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanRequestBean;

    .line 482
    :cond_21
    invoke-interface {p0, v5, v6, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->requestRoutePlanOrNavi(JLcom/geely/lib/oneosapi/navi/ipc/IRoutePlanRequestBean;)V

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_22

    .line 485
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanRequestBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 489
    :cond_22
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v11

    .line 490
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    invoke-interface {p0, v0, v1}, Lcom/geely/lib/oneosapi/navi/INaviServer;->specialPoiNavi(II)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 497
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getRoutePlanInfo()V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 500
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 503
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getHighwayExitInfo(I)V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 505
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getGuideInfo()V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 508
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 511
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getFrontTraffic(I)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 513
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->selectRoute(I)V

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 518
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->cancelNavi()V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 521
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 524
    sget-object v0, Lcom/geely/lib/oneosapi/navi/ipc/IApiRequestBaseModelBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/geely/lib/oneosapi/navi/ipc/IApiRequestBaseModelBean;

    .line 529
    :cond_23
    invoke-interface {p0, v4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->commonRequest(Lcom/geely/lib/oneosapi/navi/ipc/IApiRequestBaseModelBean;)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_24

    .line 532
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    invoke-virtual {v4, v10, v11}, Lcom/geely/lib/oneosapi/navi/ipc/IApiRequestBaseModelBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 536
    :cond_24
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v11

    .line 537
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviCallback;

    move-result-object v0

    .line 540
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->unrRegister(Lcom/geely/lib/oneosapi/navi/INaviCallback;)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 542
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviCallback;

    move-result-object v0

    .line 545
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->register(Lcom/geely/lib/oneosapi/navi/INaviCallback;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 547
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/INaviObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviObserver;

    move-result-object v0

    .line 550
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->unregisterNaviObserver(Lcom/geely/lib/oneosapi/navi/INaviObserver;)Z

    move-result v0

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 553
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/INaviObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviObserver;

    move-result-object v0

    .line 556
    invoke-interface {p0, v0}, Lcom/geely/lib/oneosapi/navi/INaviServer;->registerNaviObserver(Lcom/geely/lib/oneosapi/navi/INaviObserver;)Z

    move-result v0

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 559
    :cond_25
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
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
