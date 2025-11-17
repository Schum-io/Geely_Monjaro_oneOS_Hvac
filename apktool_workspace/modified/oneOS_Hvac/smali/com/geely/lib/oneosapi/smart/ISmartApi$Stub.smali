.class public abstract Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub;
.super Landroid/os/Binder;
.source "ISmartApi.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/smart/ISmartApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/smart/ISmartApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.smart.ISmartApi"

.field public static final TRANSACTION_controlACTemp:I = 0x4

.field public static final TRANSACTION_controlDeviceMode:I = 0x2

.field public static final TRANSACTION_controlDeviceSpeed:I = 0x3

.field public static final TRANSACTION_controlDeviceSpeedNew:I = 0x9

.field public static final TRANSACTION_controlDeviceSwitch:I = 0x1

.field public static final TRANSACTION_controlSceneMode:I = 0x5

.field public static final TRANSACTION_getAllSceneList:I = 0x6

.field public static final TRANSACTION_registerSceneChangeListener:I = 0x7

.field public static final TRANSACTION_unregisterSceneChangeListener:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.smart.ISmartApi"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISmartApi;
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
    const-string v0, "com.geely.lib.oneosapi.smart.ISmartApi"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/smart/ISmartApi;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/smart/ISmartApi;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/smart/ISmartApi;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/smart/ISmartApi;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/smart/ISmartApi;

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
    .locals 10
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

    const-string v1, "com.geely.lib.oneosapi.smart.ISmartApi"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/IResultCallback;

    move-result-object v9

    move-object v3, p0

    .line 15
    invoke-interface/range {v3 .. v9}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlDeviceSpeedNew(Ljava/lang/String;ILjava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 17
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack;

    move-result-object p1

    .line 20
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->unregisterSceneChangeListener(Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 22
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack;

    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->registerSceneChangeListener(Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 27
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/scene/IGetSceneListCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/scene/IGetSceneListCallBack;

    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->getAllSceneList(Lcom/geely/lib/oneosapi/smart/scene/IGetSceneListCallBack;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 32
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v2, v0

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/smart/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/IResultCallback;

    move-result-object p2

    .line 39
    invoke-interface {p0, v2, p1, p2}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlSceneMode(ZLjava/lang/String;Lcom/geely/lib/oneosapi/smart/IResultCallback;)V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 41
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/IResultCallback;

    move-result-object v8

    move-object v3, p0

    .line 52
    invoke-interface/range {v3 .. v8}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlACTemp(Ljava/lang/String;Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 54
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/smart/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/IResultCallback;

    move-result-object p2

    .line 63
    invoke-interface {p0, p1, p4, v1, p2}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlDeviceSpeed(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 65
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/smart/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/IResultCallback;

    move-result-object p2

    .line 74
    invoke-interface {p0, p1, p4, v1, p2}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlDeviceMode(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 76
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v0

    .line 84
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/smart/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/IResultCallback;

    move-result-object p2

    .line 85
    invoke-interface {p0, p1, p4, v2, p2}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlDeviceSwitch(Ljava/lang/String;IZLcom/geely/lib/oneosapi/smart/IResultCallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 87
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
