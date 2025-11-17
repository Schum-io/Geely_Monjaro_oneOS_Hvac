.class public abstract Lcom/geely/lib/oneosapi/recommendation/IPsdManager$Stub;
.super Landroid/os/Binder;
.source "IPsdManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/recommendation/IPsdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/recommendation/IPsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/recommendation/IPsdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.recommendation.IPsdManager"

.field public static final TRANSACTION_getPsdPullInfos:I = 0x7

.field public static final TRANSACTION_getPsdRecInfos:I = 0x1

.field public static final TRANSACTION_getWidgetInfos:I = 0x4

.field public static final TRANSACTION_getWidgetPullInfos:I = 0x8

.field public static final TRANSACTION_subscribePsdRecCallback:I = 0x2

.field public static final TRANSACTION_subscribeWidgetCallback:I = 0x5

.field public static final TRANSACTION_unSubscribePsdRecCallback:I = 0x3

.field public static final TRANSACTION_unSubscribeWidgetCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.recommendation.IPsdManager"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/recommendation/IPsdManager;
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
    const-string v0, "com.geely.lib.oneosapi.recommendation.IPsdManager"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/recommendation/IPsdManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/recommendation/IPsdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/recommendation/IPsdManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/recommendation/IPsdManager$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/recommendation/IPsdManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/recommendation/IPsdManager;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/recommendation/IPsdManager$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/recommendation/IPsdManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/recommendation/IPsdManager$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/recommendation/IPsdManager;

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

    const-string v1, "com.geely.lib.oneosapi.recommendation.IPsdManager"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

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
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;->getWidgetPullInfos(Z)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 7
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    .line 10
    :cond_1
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;->getPsdPullInfos(Z)V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 12
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/recommendation/callback/IWidgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/recommendation/callback/IWidgetCallback;

    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;->unSubscribeWidgetCallback(Lcom/geely/lib/oneosapi/recommendation/callback/IWidgetCallback;)Z

    move-result p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 18
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/recommendation/callback/IWidgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/recommendation/callback/IWidgetCallback;

    move-result-object p1

    .line 21
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;->subscribeWidgetCallback(Lcom/geely/lib/oneosapi/recommendation/callback/IWidgetCallback;)Z

    move-result p1

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 24
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;->getWidgetInfos()V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 27
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/recommendation/callback/IPsdRecCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/recommendation/callback/IPsdRecCallback;

    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;->unSubscribePsdRecCallback(Lcom/geely/lib/oneosapi/recommendation/callback/IPsdRecCallback;)Z

    move-result p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 33
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/recommendation/callback/IPsdRecCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/recommendation/callback/IPsdRecCallback;

    move-result-object p1

    .line 36
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;->subscribePsdRecCallback(Lcom/geely/lib/oneosapi/recommendation/callback/IPsdRecCallback;)Z

    move-result p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 39
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/recommendation/IPsdManager;->getPsdRecInfos()V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 42
    :cond_2
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
