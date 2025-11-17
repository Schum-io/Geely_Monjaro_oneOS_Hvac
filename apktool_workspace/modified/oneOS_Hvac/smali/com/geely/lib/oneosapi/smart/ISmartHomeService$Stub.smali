.class public abstract Lcom/geely/lib/oneosapi/smart/ISmartHomeService$Stub;
.super Landroid/os/Binder;
.source "ISmartHomeService.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/smart/ISmartHomeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/smart/ISmartHomeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/ISmartHomeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.smart.ISmartHomeService"

.field public static final TRANSACTION_getAirConditionInfo:I = 0x3

.field public static final TRANSACTION_getAirPurificationInfo:I = 0x4

.field public static final TRANSACTION_getElectricSocketInfo:I = 0x5

.field public static final TRANSACTION_getLightInfo:I = 0x6

.field public static final TRANSACTION_getSmartApi:I = 0x8

.field public static final TRANSACTION_getSweepingRobotInfo:I = 0x7

.field public static final TRANSACTION_registerSmartHomeListener:I = 0x1

.field public static final TRANSACTION_unregisterSmartHomeListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.smart.ISmartHomeService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISmartHomeService;
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
    const-string v0, "com.geely.lib.oneosapi.smart.ISmartHomeService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/smart/ISmartHomeService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/smart/ISmartHomeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/smart/ISmartHomeService;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/smart/ISmartHomeService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/smart/ISmartHomeService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/smart/ISmartHomeService;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/smart/ISmartHomeService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/smart/ISmartHomeService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/smart/ISmartHomeService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/smart/ISmartHomeService;

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

    const-string v1, "com.geely.lib.oneosapi.smart.ISmartHomeService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;->getSmartApi()Lcom/geely/lib/oneosapi/smart/ISmartApi;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 6
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;->getSweepingRobotInfo()Lcom/geely/lib/oneosapi/smart/ISweepingRobotInfo;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 10
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;->getLightInfo()Lcom/geely/lib/oneosapi/smart/ILightInfo;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 14
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;->getElectricSocketInfo()Lcom/geely/lib/oneosapi/smart/IElectricSocketInfo;

    move-result-object p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 17
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 18
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;->getAirPurificationInfo()Lcom/geely/lib/oneosapi/smart/IAirPurificationInfo;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 21
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 22
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;->getAirConditionInfo()Lcom/geely/lib/oneosapi/smart/IAirConditionerInfo;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 25
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 26
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/ISmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISmartCallback;

    move-result-object p1

    .line 29
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;->unregisterSmartHomeListener(Lcom/geely/lib/oneosapi/smart/ISmartCallback;)Z

    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 32
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/ISmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISmartCallback;

    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartHomeService;->registerSmartHomeListener(Lcom/geely/lib/oneosapi/smart/ISmartCallback;)Z

    move-result p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 38
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
