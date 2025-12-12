.class public interface abstract Lcom/geely/lib/oneosapi/schedule/api/ICalendarInfoAPI;
.super Ljava/lang/Object;
.source "ICalendarInfoAPI.java"


# virtual methods
.method public abstract getAllCalendarEvent()I
.end method

.method public abstract getCalendarEventByTime(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract getCalendarEventNextTime()Lcom/geely/lib/oneosapi/schedule/bean/CPQueryScheduleBean;
.end method

.method public abstract getCalendarEventTime(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;)Lcom/geely/lib/oneosapi/schedule/bean/CPQueryScheduleBean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract getCalendarEvents(Lcom/geely/lib/oneosapi/schedule/api/CPCallbackInterface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract getCalendarImportEvents(Lcom/geely/lib/oneosapi/schedule/api/CPCallbackInterface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract launchAddImportSchedule()V
.end method

.method public abstract launchAddImportScheduleParameter(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventID"
        }
    .end annotation
.end method

.method public abstract launchAddSchedule(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation
.end method

.method public abstract launchAddScheduleParameter(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventID"
        }
    .end annotation
.end method

.method public abstract launchScheduleHome()V
.end method

.method public abstract setAddCalendarEvent(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method
