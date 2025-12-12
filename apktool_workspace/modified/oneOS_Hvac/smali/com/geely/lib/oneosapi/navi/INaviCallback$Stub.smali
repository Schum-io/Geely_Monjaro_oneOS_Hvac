.class public abstract Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub;
.super Landroid/os/Binder;
.source "INaviCallback.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/INaviCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/navi/INaviCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.navi.INaviCallback"

.field public static final TRANSACTION_onAdAreaChanged:I = 0x8

.field public static final TRANSACTION_onArrivedLastMile:I = 0x7

.field public static final TRANSACTION_onCommutePush:I = 0xb

.field public static final TRANSACTION_onDestinationParkingUpdate:I = 0xc

.field public static final TRANSACTION_onFavoriteChanged:I = 0x2

.field public static final TRANSACTION_onGuideInfoChanged:I = 0x4

.field public static final TRANSACTION_onHighwayExitInfoUpdate:I = 0x5

.field public static final TRANSACTION_onHistoryPoisUpdateCallback:I = 0xe

.field public static final TRANSACTION_onLanesInfoChanged:I = 0xa

.field public static final TRANSACTION_onMapStatusChanged:I = 0x1

.field public static final TRANSACTION_onRouteInfoChanged:I = 0x3

.field public static final TRANSACTION_onSendPOIToCar:I = 0x6

.field public static final TRANSACTION_onTrafficConditionsChanged:I = 0x9

.field public static final TRANSACTION_onTripReporterUpdate:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.navi.INaviCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/INaviCallback;
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
    const-string v0, "com.geely.lib.oneosapi.navi.INaviCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/navi/INaviCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/navi/INaviCallback;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/navi/INaviCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/navi/INaviCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/navi/INaviCallback;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/navi/INaviCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/navi/INaviCallback;

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

    const-string v1, "com.geely.lib.oneosapi.navi.INaviCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1a

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/IHistoryPoisBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/IHistoryPoisBean;

    .line 10
    :cond_0
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onHistoryPoisUpdateCallback(Lcom/geely/lib/oneosapi/navi/ipc/IHistoryPoisBean;)V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/IHistoryPoisBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 18
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/ITripReporterBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/ITripReporterBean;

    .line 26
    :cond_2
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onTripReporterUpdate(Lcom/geely/lib/oneosapi/navi/ipc/ITripReporterBean;)V

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3

    .line 29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/ITripReporterBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 33
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 34
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 37
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/IParkingPoisBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/IParkingPoisBean;

    .line 42
    :cond_4
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onDestinationParkingUpdate(Lcom/geely/lib/oneosapi/navi/ipc/IParkingPoisBean;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_5

    .line 45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/IParkingPoisBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 49
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 50
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 53
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/ICommuteInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/ICommuteInfoBean;

    .line 58
    :cond_6
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onCommutePush(Lcom/geely/lib/oneosapi/navi/ipc/ICommuteInfoBean;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_7

    .line 61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/ICommuteInfoBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 65
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v0

    .line 66
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 69
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/ILanesInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/ILanesInfoBean;

    .line 74
    :cond_8
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onLanesInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/ILanesInfoBean;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9

    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/ILanesInfoBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 81
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v0

    .line 82
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 85
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/ITrafficConditionInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/ITrafficConditionInfoBean;

    .line 90
    :cond_a
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onTrafficConditionsChanged(Lcom/geely/lib/oneosapi/navi/ipc/ITrafficConditionInfoBean;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_b

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/ITrafficConditionInfoBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 97
    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v0

    .line 98
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 101
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/ILocationInfoModelBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/ILocationInfoModelBean;

    .line 106
    :cond_c
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onAdAreaChanged(Lcom/geely/lib/oneosapi/navi/ipc/ILocationInfoModelBean;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/ILocationInfoModelBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 113
    :cond_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v0

    .line 114
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 117
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;

    .line 122
    :cond_e
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onArrivedLastMile(Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_f

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 129
    :cond_f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v0

    .line 130
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 133
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;

    .line 138
    :cond_10
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onSendPOIToCar(Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_11

    .line 141
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 145
    :cond_11
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v0

    .line 146
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    .line 149
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/IHighwayExitInfoModelBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/IHighwayExitInfoModelBean;

    .line 154
    :cond_12
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onHighwayExitInfoUpdate(Lcom/geely/lib/oneosapi/navi/ipc/IHighwayExitInfoModelBean;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_13

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/IHighwayExitInfoModelBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 161
    :cond_13
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v0

    .line 162
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14

    .line 165
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/IGuidingInfoModelBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/IGuidingInfoModelBean;

    .line 170
    :cond_14
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onGuideInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/IGuidingInfoModelBean;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_15

    .line 173
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/IGuidingInfoModelBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 177
    :cond_15
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v0

    .line 178
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_16

    .line 181
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanInfoBean;

    .line 186
    :cond_16
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onRouteInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanInfoBean;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_17

    .line 189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanInfoBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 193
    :cond_17
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v0

    .line 194
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    .line 197
    sget-object p1, Lcom/geely/lib/oneosapi/navi/ipc/IFavoritesInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/oneosapi/navi/ipc/IFavoritesInfoBean;

    .line 202
    :cond_18
    invoke-interface {p0, v3}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onFavoriteChanged(Lcom/geely/lib/oneosapi/navi/ipc/IFavoritesInfoBean;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_19

    .line 205
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v3, p3, v0}, Lcom/geely/lib/oneosapi/navi/ipc/IFavoritesInfoBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 209
    :cond_19
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v0

    .line 210
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 213
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/navi/INaviCallback;->onMapStatusChanged(I)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 215
    :cond_1a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
