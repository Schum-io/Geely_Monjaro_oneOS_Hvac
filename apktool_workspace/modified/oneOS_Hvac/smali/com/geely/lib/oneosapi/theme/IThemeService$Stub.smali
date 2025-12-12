.class public abstract Lcom/geely/lib/oneosapi/theme/IThemeService$Stub;
.super Landroid/os/Binder;
.source "IThemeService.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/theme/IThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/theme/IThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/theme/IThemeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.theme.IThemeService"

.field public static final TRANSACTION_applyDress:I = 0x4

.field public static final TRANSACTION_applyLiveWallpaper:I = 0x2

.field public static final TRANSACTION_applyStaticWallpaper:I = 0x1

.field public static final TRANSACTION_applyWallpaperByLauncher:I = 0x9

.field public static final TRANSACTION_controlDownloadByLauncher:I = 0xd

.field public static final TRANSACTION_delDressFile:I = 0x5

.field public static final TRANSACTION_downWallpaperByLauncher:I = 0xc

.field public static final TRANSACTION_downloadDress:I = 0x3

.field public static final TRANSACTION_dressStaticWallpaper:I = 0xa

.field public static final TRANSACTION_getCurrentWallpaperType:I = 0x6

.field public static final TRANSACTION_getOwnerStaticWallpaperData:I = 0x7

.field public static final TRANSACTION_getOwnerVideoWallpaperData:I = 0x8

.field public static final TRANSACTION_getSysWallpaperByLauncher:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.theme.IThemeService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/theme/IThemeService;
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
    const-string v0, "com.geely.lib.oneosapi.theme.IThemeService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/theme/IThemeService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/theme/IThemeService;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/theme/IThemeService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/theme/IThemeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/theme/IThemeService;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/theme/IThemeService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/theme/IThemeService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/theme/IThemeService;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/theme/IThemeService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/theme/IThemeService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/theme/IThemeService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/theme/IThemeService;

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

    const-string v1, "com.geely.lib.oneosapi.theme.IThemeService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

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

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/theme/IThemeService;->controlDownloadByLauncher(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 9
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/theme/IDressDlCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/theme/IDressDlCallback;

    move-result-object p2

    .line 14
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/theme/IThemeService;->downWallpaperByLauncher(Ljava/lang/String;Lcom/geely/lib/oneosapi/theme/IDressDlCallback;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 16
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/theme/IThemeService;->getSysWallpaperByLauncher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 22
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 25
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/theme/IThemeService;->dressStaticWallpaper(I)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 27
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    move p4, v1

    .line 33
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    .line 35
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/theme/IApplyByLauncherCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/theme/IApplyByLauncherCallback;

    move-result-object p2

    .line 36
    invoke-interface {p0, p1, p4, v1, p2}, Lcom/geely/lib/oneosapi/theme/IThemeService;->applyWallpaperByLauncher(Ljava/lang/String;ZZLcom/geely/lib/oneosapi/theme/IApplyByLauncherCallback;)V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 38
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/theme/IGetOwnerVideoWallpaperCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/theme/IGetOwnerVideoWallpaperCallback;

    move-result-object p1

    .line 41
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/theme/IThemeService;->getOwnerVideoWallpaperData(Lcom/geely/lib/oneosapi/theme/IGetOwnerVideoWallpaperCallback;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 43
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/theme/IGetOwnerStaticWallpaperCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/theme/IGetOwnerStaticWallpaperCallback;

    move-result-object p1

    .line 46
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/theme/IThemeService;->getOwnerStaticWallpaperData(Lcom/geely/lib/oneosapi/theme/IGetOwnerStaticWallpaperCallback;)V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 48
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/theme/IThemeService;->getCurrentWallpaperType()I

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/theme/IDressDelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/theme/IDressDelCallback;

    move-result-object p2

    .line 59
    invoke-interface {p0, p1, p3, p2}, Lcom/geely/lib/oneosapi/theme/IThemeService;->delDressFile(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/oneosapi/theme/IDressDelCallback;)V

    return v0

    .line 60
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/theme/IDressApplyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/theme/IDressApplyCallback;

    move-result-object p2

    .line 67
    invoke-interface {p0, p1, p3, p2}, Lcom/geely/lib/oneosapi/theme/IThemeService;->applyDress(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/oneosapi/theme/IDressApplyCallback;)V

    return v0

    .line 68
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/theme/IDressDlCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/theme/IDressDlCallback;

    move-result-object p2

    .line 75
    invoke-interface {p0, p1, p3, p2}, Lcom/geely/lib/oneosapi/theme/IThemeService;->downloadDress(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/oneosapi/theme/IDressDlCallback;)V

    return v0

    .line 76
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/theme/IThemeService;->applyLiveWallpaper()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 79
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/theme/IThemeService;->applyStaticWallpaper()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 82
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
