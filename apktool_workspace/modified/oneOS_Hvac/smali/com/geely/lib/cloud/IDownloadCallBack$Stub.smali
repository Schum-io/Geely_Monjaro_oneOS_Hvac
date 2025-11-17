.class public abstract Lcom/geely/lib/cloud/IDownloadCallBack$Stub;
.super Landroid/os/Binder;
.source "IDownloadCallBack.java"

# interfaces
.implements Lcom/geely/lib/cloud/IDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/IDownloadCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.IDownloadCallBack"

.field static final TRANSACTION_completed:I = 0x5

.field static final TRANSACTION_connected:I = 0x3

.field static final TRANSACTION_error:I = 0x7

.field static final TRANSACTION_paused:I = 0x6

.field static final TRANSACTION_pending:I = 0x1

.field static final TRANSACTION_progress:I = 0x4

.field static final TRANSACTION_started:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.IDownloadCallBack"

    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/IDownloadCallBack;
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
    const-string v0, "com.geely.lib.cloud.IDownloadCallBack"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    instance-of v1, v0, Lcom/geely/lib/cloud/IDownloadCallBack;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/geely/lib/cloud/IDownloadCallBack;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/IDownloadCallBack;
    .locals 1

    .line 365
    sget-object v0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/IDownloadCallBack;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/IDownloadCallBack;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/IDownloadCallBack;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 359
    sput-object p0, Lcom/geely/lib/cloud/IDownloadCallBack$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/IDownloadCallBack;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 356
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

    const-string v2, "com.geely.lib.cloud.IDownloadCallBack"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 156
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    sget-object p1, Lcom/geely/lib/cloud/download/bean/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/download/bean/TaskEntity;

    .line 164
    :cond_0
    invoke-virtual {p0, v0}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->error(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V

    return v1

    .line 143
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    sget-object p1, Lcom/geely/lib/cloud/download/bean/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/download/bean/TaskEntity;

    .line 151
    :cond_1
    invoke-virtual {p0, v0}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->paused(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V

    return v1

    .line 130
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    sget-object p1, Lcom/geely/lib/cloud/download/bean/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/download/bean/TaskEntity;

    .line 138
    :cond_2
    invoke-virtual {p0, v0}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->completed(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V

    return v1

    .line 117
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 120
    sget-object p1, Lcom/geely/lib/cloud/download/bean/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/download/bean/TaskEntity;

    .line 125
    :cond_3
    invoke-virtual {p0, v0}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->progress(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V

    return v1

    .line 104
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 107
    sget-object p1, Lcom/geely/lib/cloud/download/bean/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/download/bean/TaskEntity;

    .line 112
    :cond_4
    invoke-virtual {p0, v0}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->connected(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V

    return v1

    .line 91
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 94
    sget-object p1, Lcom/geely/lib/cloud/download/bean/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/download/bean/TaskEntity;

    .line 99
    :cond_5
    invoke-virtual {p0, v0}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->started(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V

    return v1

    .line 78
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 81
    sget-object p1, Lcom/geely/lib/cloud/download/bean/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/download/bean/TaskEntity;

    .line 86
    :cond_6
    invoke-virtual {p0, v0}, Lcom/geely/lib/cloud/IDownloadCallBack$Stub;->pending(Lcom/geely/lib/cloud/download/bean/TaskEntity;)V

    return v1

    .line 73
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

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
