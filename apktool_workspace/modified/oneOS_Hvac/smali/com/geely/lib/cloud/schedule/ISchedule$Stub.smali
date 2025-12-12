.class public abstract Lcom/geely/lib/cloud/schedule/ISchedule$Stub;
.super Landroid/os/Binder;
.source "ISchedule.java"

# interfaces
.implements Lcom/geely/lib/cloud/schedule/ISchedule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/schedule/ISchedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/schedule/ISchedule$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.schedule.ISchedule"

.field static final TRANSACTION_getMachineAskSchedule:I = 0x4

.field static final TRANSACTION_getMachineReportSchedule:I = 0x5

.field static final TRANSACTION_getReportSchedule:I = 0x3

.field static final TRANSACTION_getScheduleReportSwitchStatus:I = 0x2

.field static final TRANSACTION_getScheduleSwitchStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.schedule.ISchedule"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/schedule/ISchedule$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/schedule/ISchedule;
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
    const-string v0, "com.geely.lib.cloud.schedule.ISchedule"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/geely/lib/cloud/schedule/ISchedule;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/geely/lib/cloud/schedule/ISchedule;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/schedule/ISchedule$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/schedule/ISchedule$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/schedule/ISchedule;
    .locals 1

    .line 272
    sget-object v0, Lcom/geely/lib/cloud/schedule/ISchedule$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/schedule/ISchedule;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/schedule/ISchedule;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/geely/lib/cloud/schedule/ISchedule$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/schedule/ISchedule;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 266
    sput-object p0, Lcom/geely/lib/cloud/schedule/ISchedule$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/schedule/ISchedule;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 263
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

    const/4 v0, 0x1

    const-string v1, "com.geely.lib.cloud.schedule.ISchedule"

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 116
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    sget-object p1, Lcom/geely/lib/cloud/schedule/DailyListParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/cloud/schedule/DailyListParam;

    .line 125
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 126
    invoke-virtual {p0, v3, p1}, Lcom/geely/lib/cloud/schedule/ISchedule$Stub;->getMachineReportSchedule(Lcom/geely/lib/cloud/schedule/DailyListParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 108
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/schedule/ISchedule$Stub;->getMachineAskSchedule(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 93
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 96
    sget-object p1, Lcom/geely/lib/cloud/schedule/DailyListParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/cloud/schedule/DailyListParam;

    .line 102
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 103
    invoke-virtual {p0, v3, p1}, Lcom/geely/lib/cloud/schedule/ISchedule$Stub;->getReportSchedule(Lcom/geely/lib/cloud/schedule/DailyListParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 78
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 81
    sget-object p1, Lcom/geely/lib/cloud/schedule/DailyFlagParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/geely/lib/cloud/schedule/DailyFlagParam;

    .line 87
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 88
    invoke-virtual {p0, v3, p1}, Lcom/geely/lib/cloud/schedule/ISchedule$Stub;->getScheduleReportSwitchStatus(Lcom/geely/lib/cloud/schedule/DailyFlagParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 70
    :cond_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/schedule/ISchedule$Stub;->getScheduleSwitchStatus(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0
.end method
