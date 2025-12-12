.class public Lcom/geely/lib/cloud/schedule/ScheduleManager;
.super Ljava/lang/Object;
.source "ScheduleManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScheduleManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/schedule/ISchedule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "binder"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ScheduleManager"

    const-string v1, "ScheduleManager create"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/ScheduleManager;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {p2}, Lcom/geely/lib/cloud/schedule/ISchedule$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/schedule/ISchedule;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/ScheduleManager;->mService:Lcom/geely/lib/cloud/schedule/ISchedule;

    return-void
.end method


# virtual methods
.method public getMachineAskSchedule(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ScheduleManager"

    const-string v1, "getMachineAskSchedule"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/geely/lib/cloud/schedule/ScheduleManager;->mService:Lcom/geely/lib/cloud/schedule/ISchedule;

    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Lcom/geely/lib/cloud/schedule/ScheduleManager$4;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/schedule/ScheduleManager$4;-><init>(Lcom/geely/lib/cloud/schedule/ScheduleManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/schedule/ISchedule;->getMachineAskSchedule(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 140
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getMachineReportSchedule(Lcom/geely/lib/cloud/schedule/DailyListParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dailyList",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ScheduleManager"

    const-string v1, "getMachineReportSchedule"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/geely/lib/cloud/schedule/ScheduleManager;->mService:Lcom/geely/lib/cloud/schedule/ISchedule;

    if-eqz v1, :cond_0

    .line 152
    new-instance v0, Lcom/geely/lib/cloud/schedule/ScheduleManager$5;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/schedule/ScheduleManager$5;-><init>(Lcom/geely/lib/cloud/schedule/ScheduleManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/schedule/ISchedule;->getMachineReportSchedule(Lcom/geely/lib/cloud/schedule/DailyListParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 168
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getReportSchedule(Lcom/geely/lib/cloud/schedule/DailyListParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dailyList",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ScheduleManager"

    const-string v1, "getReportSchedule"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/geely/lib/cloud/schedule/ScheduleManager;->mService:Lcom/geely/lib/cloud/schedule/ISchedule;

    if-eqz v1, :cond_0

    .line 96
    new-instance v0, Lcom/geely/lib/cloud/schedule/ScheduleManager$3;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/schedule/ScheduleManager$3;-><init>(Lcom/geely/lib/cloud/schedule/ScheduleManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/schedule/ISchedule;->getReportSchedule(Lcom/geely/lib/cloud/schedule/DailyListParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getScheduleReportSwitchStatus(Lcom/geely/lib/cloud/schedule/DailyFlagParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dailyFlag",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ScheduleManager"

    const-string v1, "getScheduleReportSwitchStatus"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/geely/lib/cloud/schedule/ScheduleManager;->mService:Lcom/geely/lib/cloud/schedule/ISchedule;

    if-eqz v1, :cond_0

    .line 68
    new-instance v0, Lcom/geely/lib/cloud/schedule/ScheduleManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/schedule/ScheduleManager$2;-><init>(Lcom/geely/lib/cloud/schedule/ScheduleManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/schedule/ISchedule;->getScheduleReportSwitchStatus(Lcom/geely/lib/cloud/schedule/DailyFlagParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getScheduleSwitchStatus(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ScheduleManager"

    const-string v1, "getScheduleSwitchStatus"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Lcom/geely/lib/cloud/schedule/ScheduleManager;->mService:Lcom/geely/lib/cloud/schedule/ISchedule;

    if-eqz v1, :cond_0

    .line 40
    new-instance v0, Lcom/geely/lib/cloud/schedule/ScheduleManager$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/schedule/ScheduleManager$1;-><init>(Lcom/geely/lib/cloud/schedule/ScheduleManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/schedule/ISchedule;->getScheduleSwitchStatus(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    const-string v0, "ScheduleManager"

    const-string v1, "ScheduleManager setService"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 28
    invoke-static {p1}, Lcom/geely/lib/cloud/schedule/ISchedule$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/schedule/ISchedule;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/ScheduleManager;->mService:Lcom/geely/lib/cloud/schedule/ISchedule;

    :cond_0
    return-void
.end method
