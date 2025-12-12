.class public abstract Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;
.super Landroid/os/Binder;
.source "IMemberCenter.java"

# interfaces
.implements Lcom/geely/lib/cloud/membercenter/IMemberCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/membercenter/IMemberCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.membercenter.IMemberCenter"

.field static final TRANSACTION_getLoginInfo:I = 0x3

.field static final TRANSACTION_getLoginQrCode:I = 0x1

.field static final TRANSACTION_getLoginQrCodeStatus:I = 0x2

.field static final TRANSACTION_logout:I = 0x5

.field static final TRANSACTION_refreshToken:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.membercenter.IMemberCenter"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/membercenter/IMemberCenter;
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
    const-string v0, "com.geely.lib.cloud.membercenter.IMemberCenter"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/membercenter/IMemberCenter;
    .locals 1

    .line 242
    sget-object v0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/membercenter/IMemberCenter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 236
    sput-object p0, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 233
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

    const-string v1, "com.geely.lib.cloud.membercenter.IMemberCenter"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 106
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 113
    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->logout(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 94
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 101
    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->refreshToken(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 86
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getLoginInfo(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 78
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getLoginQrCodeStatus(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 70
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->getLoginQrCode(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0
.end method
