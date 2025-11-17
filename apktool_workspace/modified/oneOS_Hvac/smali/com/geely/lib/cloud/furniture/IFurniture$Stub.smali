.class public abstract Lcom/geely/lib/cloud/furniture/IFurniture$Stub;
.super Landroid/os/Binder;
.source "IFurniture.java"

# interfaces
.implements Lcom/geely/lib/cloud/furniture/IFurniture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/furniture/IFurniture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.furniture.IFurniture"

.field static final TRANSACTION_getJDAuthInfo:I = 0x6

.field static final TRANSACTION_getJDLoginQrcode:I = 0x5

.field static final TRANSACTION_getJDUnboundAccount:I = 0x7

.field static final TRANSACTION_getSmartHomeCardList:I = 0x1

.field static final TRANSACTION_getSmartHomeDeviceControl:I = 0x4

.field static final TRANSACTION_getSmartHomeSceneAction:I = 0x3

.field static final TRANSACTION_getSmartHomeSceneList:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.furniture.IFurniture"

    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/furniture/IFurniture;
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
    const-string v0, "com.geely.lib.cloud.furniture.IFurniture"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    instance-of v1, v0, Lcom/geely/lib/cloud/furniture/IFurniture;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/geely/lib/cloud/furniture/IFurniture;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/furniture/IFurniture;
    .locals 1

    .line 356
    sget-object v0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/furniture/IFurniture;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/furniture/IFurniture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/furniture/IFurniture;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 350
    sput-object p0, Lcom/geely/lib/cloud/furniture/IFurniture$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/furniture/IFurniture;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 347
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

    const-string v2, "com.geely.lib.cloud.furniture.IFurniture"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 155
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    sget-object p1, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 165
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getJDUnboundAccount(Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 143
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 150
    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getJDAuthInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 128
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    sget-object p1, Lcom/geely/lib/cloud/furniture/bean/JDQrcodeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/furniture/bean/JDQrcodeParam;

    .line 137
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 138
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getJDLoginQrcode(Lcom/geely/lib/cloud/furniture/bean/JDQrcodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 113
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    sget-object p1, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;

    .line 122
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getSmartHomeDeviceControl(Lcom/geely/lib/cloud/furniture/bean/DeviceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 98
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 101
    sget-object p1, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;

    .line 107
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getSmartHomeSceneAction(Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 88
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getSmartHomeSceneList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 78
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->getSmartHomeCardList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 73
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
