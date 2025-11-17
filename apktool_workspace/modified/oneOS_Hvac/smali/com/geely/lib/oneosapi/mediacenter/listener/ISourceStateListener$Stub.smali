.class public abstract Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub;
.super Landroid/os/Binder;
.source "ISourceStateListener.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener"

.field public static final TRANSACTION_onPsdBtStateChanged:I = 0x2

.field public static final TRANSACTION_onSourceChanged:I = 0x1

.field public static final TRANSACTION_onWeCarFlowTabChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;
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
    const-string v0, "com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;)Z
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
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;

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

    const-string v1, "com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 27
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 32
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;->onWeCarFlowTabChanged(II)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 34
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;->onPsdBtStateChanged(Z)V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 39
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 44
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;->onSourceChanged(II)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
