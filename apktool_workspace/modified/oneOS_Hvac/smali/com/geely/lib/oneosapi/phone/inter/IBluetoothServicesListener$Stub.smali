.class public abstract Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;
.super Landroid/os/Binder;
.source "IBluetoothServicesListener.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener"

.field public static final TRANSACTION_onCallAdded:I = 0x1

.field public static final TRANSACTION_onCallAddedOther:I = 0x3

.field public static final TRANSACTION_onCallViewStateChange:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;
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
    const-string v0, "com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;

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
    .locals 5
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener"

    if-eq p1, v2, :cond_7

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 37
    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 40
    sget-object p1, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 46
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 47
    sget-object p4, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;

    .line 52
    :cond_3
    invoke-interface {p0, p1, v1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;->onCallAddedOther(Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, p3, v2}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz v1, :cond_5

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v1, p3, v2}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 66
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v2

    .line 67
    :cond_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 70
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;->onCallViewStateChange(I)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 72
    :cond_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 75
    sget-object p1, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;

    .line 80
    :cond_8
    invoke-interface {p0, v1}, Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;->onCallAdded(Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_9

    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v1, p3, v2}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 87
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v2
.end method
