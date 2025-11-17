.class public abstract Lcom/geely/lib/cloud/apputil/IAppUtil$Stub;
.super Landroid/os/Binder;
.source "IAppUtil.java"

# interfaces
.implements Lcom/geely/lib/cloud/apputil/IAppUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/apputil/IAppUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/apputil/IAppUtil$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.apputil.IAppUtil"

.field static final TRANSACTION_getAllData:I = 0x2

.field static final TRANSACTION_getIhuCode:I = 0x4

.field static final TRANSACTION_getMessageByPackage:I = 0x1

.field static final TRANSACTION_getNewAllData:I = 0x5

.field static final TRANSACTION_getVinCode:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.apputil.IAppUtil"

    .line 41
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/apputil/IAppUtil;
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
    const-string v0, "com.geely.lib.cloud.apputil.IAppUtil"

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Lcom/geely/lib/cloud/apputil/IAppUtil;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/geely/lib/cloud/apputil/IAppUtil;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/apputil/IAppUtil;
    .locals 1

    .line 273
    sget-object v0, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/apputil/IAppUtil;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/apputil/IAppUtil;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/apputil/IAppUtil;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 267
    sput-object p0, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/apputil/IAppUtil;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 264
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.geely.lib.cloud.apputil.IAppUtil"

    if-eq p1, v1, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 69
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 115
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 118
    sget-object p1, Lcom/geely/lib/cloud/apputil/bean/AllDataParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/apputil/bean/AllDataParam;

    .line 124
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub;->getNewAllData(Lcom/geely/lib/cloud/apputil/bean/AllDataParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 107
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub;->getIhuCode()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 99
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub;->getVinCode()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 89
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub;->getAllData(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 74
    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 77
    sget-object p1, Lcom/geely/lib/cloud/apputil/bean/MessageParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/apputil/bean/MessageParam;

    .line 83
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub;->getMessageByPackage(Lcom/geely/lib/cloud/apputil/bean/MessageParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1
.end method
