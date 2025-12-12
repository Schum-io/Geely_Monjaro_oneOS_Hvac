.class public abstract Lcom/geely/lib/oneosapi/launcher/ILauncherService$Stub;
.super Landroid/os/Binder;
.source "ILauncherService.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/launcher/ILauncherService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/launcher/ILauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/launcher/ILauncherService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.launcher.ILauncherService"

.field public static final TRANSACTION_closeApplets:I = 0x12

.field public static final TRANSACTION_hvacMassageDisplay:I = 0x13

.field public static final TRANSACTION_isWidgetsShowing:I = 0x14

.field public static final TRANSACTION_mediaSourceListDisplay:I = 0x3

.field public static final TRANSACTION_openApplets:I = 0x11

.field public static final TRANSACTION_registerEnterOrExitHomePageChangeListener:I = 0x8

.field public static final TRANSACTION_registerLauncherPageSwitchListener:I = 0xe

.field public static final TRANSACTION_registerMapWidgetListener:I = 0x4

.field public static final TRANSACTION_registerWeatherWidgetListener:I = 0x6

.field public static final TRANSACTION_registerWidgetListDisplayChangeListener:I = 0xc

.field public static final TRANSACTION_selectWidgetMap:I = 0x2

.field public static final TRANSACTION_showPsdMediaControlWidget:I = 0xa

.field public static final TRANSACTION_startGlobalSearch:I = 0x10

.field public static final TRANSACTION_togglePsdWidget:I = 0xb

.field public static final TRANSACTION_toggleWidget:I = 0x1

.field public static final TRANSACTION_unRegisterEnterOrExitHomePageChangeListener:I = 0x9

.field public static final TRANSACTION_unRegisterLauncherPageSwitchListener:I = 0xf

.field public static final TRANSACTION_unRegisterMapWidgetListener:I = 0x5

.field public static final TRANSACTION_unRegisterWeatherWidgetListener:I = 0x7

.field public static final TRANSACTION_unRegisterWidgetListDisplayChangeListener:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.launcher.ILauncherService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/ILauncherService;
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
    const-string v0, "com.geely.lib.oneosapi.launcher.ILauncherService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/launcher/ILauncherService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/launcher/ILauncherService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/launcher/ILauncherService;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/launcher/ILauncherService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/launcher/ILauncherService;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/launcher/ILauncherService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/launcher/ILauncherService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

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

    const-string v1, "com.geely.lib.oneosapi.launcher.ILauncherService"

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

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v2, v0

    .line 5
    :cond_0
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->isWidgetsShowing(Z)Z

    move-result p1

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 8
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    .line 12
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v2, v0

    .line 13
    :cond_2
    invoke-interface {p0, p1, v2}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->hvacMassageDisplay(ZZ)V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 15
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->closeApplets(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 20
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->openApplets(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 25
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->startGlobalSearch(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 30
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener;

    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterLauncherPageSwitchListener(Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener;)V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 35
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener;

    move-result-object p1

    .line 38
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerLauncherPageSwitchListener(Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 40
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener;

    move-result-object p1

    .line 43
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterWidgetListDisplayChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener;)V

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 45
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener;

    move-result-object p1

    .line 48
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerWidgetListDisplayChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener;)V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 50
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->togglePsdWidget()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 53
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    .line 56
    :cond_3
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->showPsdMediaControlWidget(Z)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 58
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener;

    move-result-object p1

    .line 61
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterEnterOrExitHomePageChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 63
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener;

    move-result-object p1

    .line 66
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerEnterOrExitHomePageChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 68
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener;

    move-result-object p1

    .line 71
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterWeatherWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 73
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener;

    move-result-object p1

    .line 76
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerWeatherWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 78
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener;

    move-result-object p1

    .line 81
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterMapWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 83
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener;

    move-result-object p1

    .line 86
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerMapWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 88
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    move p1, v2

    .line 92
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v2, v0

    .line 93
    :cond_5
    invoke-interface {p0, p1, v2}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->mediaSourceListDisplay(ZZ)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 95
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->selectWidgetMap(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 100
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->toggleWidget()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 103
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
