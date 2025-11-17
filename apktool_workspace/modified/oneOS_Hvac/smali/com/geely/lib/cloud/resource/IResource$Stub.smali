.class public abstract Lcom/geely/lib/cloud/resource/IResource$Stub;
.super Landroid/os/Binder;
.source "IResource.java"

# interfaces
.implements Lcom/geely/lib/cloud/resource/IResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/resource/IResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/resource/IResource$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.resource.IResource"

.field static final TRANSACTION_getCarModel:I = 0x6

.field static final TRANSACTION_getCloudAlbumFlag:I = 0x3

.field static final TRANSACTION_getFragranceUrl:I = 0x2

.field static final TRANSACTION_getInstructionBookUrl:I = 0x1

.field static final TRANSACTION_getSmartDriveImageList:I = 0x4

.field static final TRANSACTION_getTboxUploadLog:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.resource.IResource"

    .line 42
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/resource/IResource$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/resource/IResource;
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
    const-string v0, "com.geely.lib.cloud.resource.IResource"

    .line 53
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    instance-of v1, v0, Lcom/geely/lib/cloud/resource/IResource;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Lcom/geely/lib/cloud/resource/IResource;

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/resource/IResource$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/resource/IResource$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/resource/IResource;
    .locals 1

    .line 283
    sget-object v0, Lcom/geely/lib/cloud/resource/IResource$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/resource/IResource;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/resource/IResource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/geely/lib/cloud/resource/IResource$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/resource/IResource;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 277
    sput-object p0, Lcom/geely/lib/cloud/resource/IResource$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/resource/IResource;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 274
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

    const-string v2, "com.geely.lib.cloud.resource.IResource"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 124
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 131
    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/lib/cloud/resource/IResource$Stub;->getCarModel(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 109
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    sget-object p1, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 118
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/resource/IResource$Stub;->getTboxUploadLog(Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 99
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/resource/IResource$Stub;->getSmartDriveImageList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 91
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/resource/IResource$Stub;->getCloudAlbumFlag(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 83
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/resource/IResource$Stub;->getFragranceUrl(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 75
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/resource/IResource$Stub;->getInstructionBookUrl(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 70
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
