.class public abstract Lcom/geely/lib/oneosapi/smart/ISmartCallback$Stub;
.super Landroid/os/Binder;
.source "ISmartCallback.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/smart/ISmartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/smart/ISmartCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/ISmartCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.smart.ISmartCallback"

.field public static final TRANSACTION_onAirConditionerInfoChanged:I = 0x1

.field public static final TRANSACTION_onAirPurificationInfoChanged:I = 0x2

.field public static final TRANSACTION_onElectricSocketInfoChanged:I = 0x3

.field public static final TRANSACTION_onGoHomeModeChanged:I = 0x6

.field public static final TRANSACTION_onLeaveHomeModeChanged:I = 0x7

.field public static final TRANSACTION_onLightInfoChanged:I = 0x4

.field public static final TRANSACTION_onSweepingRobotInfoChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.smart.ISmartCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISmartCallback;
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
    const-string v0, "com.geely.lib.oneosapi.smart.ISmartCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/smart/ISmartCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/smart/ISmartCallback;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/smart/ISmartCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/smart/ISmartCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/smart/ISmartCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/smart/ISmartCallback$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/smart/ISmartCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/smart/ISmartCallback;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/smart/ISmartCallback$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/smart/ISmartCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/smart/ISmartCallback$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/smart/ISmartCallback;

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

    const-string v1, "com.geely.lib.oneosapi.smart.ISmartCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

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

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/ISceneInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISceneInfo;

    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartCallback;->onLeaveHomeModeChanged(Lcom/geely/lib/oneosapi/smart/ISceneInfo;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 7
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/ISceneInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISceneInfo;

    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartCallback;->onGoHomeModeChanged(Lcom/geely/lib/oneosapi/smart/ISceneInfo;)V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 12
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/ISweepingRobotInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISweepingRobotInfo;

    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartCallback;->onSweepingRobotInfoChanged(Lcom/geely/lib/oneosapi/smart/ISweepingRobotInfo;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 17
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/ILightInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ILightInfo;

    move-result-object p1

    .line 20
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartCallback;->onLightInfoChanged(Lcom/geely/lib/oneosapi/smart/ILightInfo;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 22
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/IElectricSocketInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/IElectricSocketInfo;

    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartCallback;->onElectricSocketInfoChanged(Lcom/geely/lib/oneosapi/smart/IElectricSocketInfo;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 27
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/IAirPurificationInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/IAirPurificationInfo;

    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartCallback;->onAirPurificationInfoChanged(Lcom/geely/lib/oneosapi/smart/IAirPurificationInfo;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 32
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/IAirConditionerInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/IAirConditionerInfo;

    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartCallback;->onAirConditionerInfoChanged(Lcom/geely/lib/oneosapi/smart/IAirConditionerInfo;)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 37
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
