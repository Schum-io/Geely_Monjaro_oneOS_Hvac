.class public Lcom/geely/lib/oneosapi/schedule/ScheduleManager;
.super Ljava/lang/Object;
.source "ScheduleManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/schedule/ScheduleManager$BaseCPCallbackInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScheduleManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAllCalendarEvent()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->getAllCalendarEvent()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "ScheduleManager"

    const-string v1, "getAllCalendarEvent: service is not alive"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getCalendarEventByTime(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->getCalendarEventByTime(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "ScheduleManager"

    const-string v0, "getCalendarEventByTime: service is not alive"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public getCalendarEventNextTime()Lcom/geely/lib/oneosapi/schedule/bean/CPQueryScheduleBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->getCalendarEventNextTime()Lcom/geely/lib/oneosapi/schedule/bean/CPQueryScheduleBean;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ScheduleManager"

    const-string v1, "getCalendarEventNextTime: service is not alive"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarEventTime(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;)Lcom/geely/lib/oneosapi/schedule/bean/CPQueryScheduleBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->getCalendarEventTime(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;)Lcom/geely/lib/oneosapi/schedule/bean/CPQueryScheduleBean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "ScheduleManager"

    const-string v0, "getCalendarEventTime: service is not alive"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCalendarEvents(Lcom/geely/lib/oneosapi/schedule/ScheduleManager$BaseCPCallbackInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->getCalendarEvents(Lcom/geely/lib/oneosapi/schedule/CPCallbackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ScheduleManager"

    const-string v0, "getScheduleInfo: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCalendarImportEvents(Lcom/geely/lib/oneosapi/schedule/ScheduleManager$BaseCPCallbackInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->getCalendarImportEvents(Lcom/geely/lib/oneosapi/schedule/CPCallbackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ScheduleManager"

    const-string v0, "getHolidayInfo: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public launchAddImportSchedule()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->launchAddImportSchedule()V

    goto :goto_0

    :cond_0
    const-string v0, "ScheduleManager"

    const-string v1, "launchAddImportSchedule: service is not alive"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public launchAddImportScheduleParameter(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->launchAddImportScheduleParameter(J)V

    goto :goto_0

    :cond_0
    const-string p1, "ScheduleManager"

    const-string p2, "launchAddImportSchedule: service is not alive"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public launchAddSchedule()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->launchAddSchedule()V

    goto :goto_0

    :cond_0
    const-string v0, "ScheduleManager"

    const-string v1, "launchScheduleHome: service is not alive"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public launchAddScheduleParameter(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->launchAddScheduleParameter(J)V

    goto :goto_0

    :cond_0
    const-string p1, "ScheduleManager"

    const-string p2, "launchScheduleHome: service is not alive"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public launchScheduleHome()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->launchScheduleHome()V

    goto :goto_0

    :cond_0
    const-string v0, "ScheduleManager"

    const-string v1, "launchScheduleHome: service is not alive"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAddCalendarEvent(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;->setAddCalendarEvent(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "ScheduleManager"

    const-string v0, "setAddCalendarEvent: service is not alive"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;->mService:Lcom/geely/lib/oneosapi/schedule/ICalendarInfoAPI;

    return-void
.end method
