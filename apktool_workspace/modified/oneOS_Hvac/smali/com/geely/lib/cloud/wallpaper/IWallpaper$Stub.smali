.class public abstract Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;
.super Landroid/os/Binder;
.source "IWallpaper.java"

# interfaces
.implements Lcom/geely/lib/cloud/wallpaper/IWallpaper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/wallpaper/IWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.wallpaper.IWallpaper"

.field static final TRANSACTION_getQueryList:I = 0x1

.field static final TRANSACTION_getQueryOne:I = 0x2

.field static final TRANSACTION_getStsAccess:I = 0x6

.field static final TRANSACTION_postStsSave:I = 0x7

.field static final TRANSACTION_userFaceAdd:I = 0x4

.field static final TRANSACTION_userFaceRemove:I = 0x5

.field static final TRANSACTION_userFaceShow:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.wallpaper.IWallpaper"

    .line 43
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/wallpaper/IWallpaper;
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
    const-string v0, "com.geely.lib.cloud.wallpaper.IWallpaper"

    .line 54
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    instance-of v1, v0, Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/wallpaper/IWallpaper;
    .locals 1

    .line 354
    sget-object v0, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/wallpaper/IWallpaper;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 348
    sput-object p0, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 345
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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.geely.lib.cloud.wallpaper.IWallpaper"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 153
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    sget-object p1, Lcom/geely/lib/cloud/wallpaper/bean/StsSaveParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/wallpaper/bean/StsSaveParam;

    .line 162
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->postStsSave(Lcom/geely/lib/cloud/wallpaper/bean/StsSaveParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 143
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->getStsAccess(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 131
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 138
    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->userFaceRemove(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 116
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    sget-object p1, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->userFaceAdd(Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 106
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->userFaceShow(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 91
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    sget-object p1, Lcom/geely/lib/cloud/wallpaper/bean/QueryOneParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/wallpaper/bean/QueryOneParam;

    .line 100
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->getQueryOne(Lcom/geely/lib/cloud/wallpaper/bean/QueryOneParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 76
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    sget-object p1, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;

    .line 85
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->getQueryList(Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 71
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
