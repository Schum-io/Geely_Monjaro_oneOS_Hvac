.class public interface abstract Lcom/geely/lib/oneosapi/schedule/api/CPCallbackInterface;
.super Ljava/lang/Object;
.source "CPCallbackInterface.java"


# virtual methods
.method public abstract callbackCalendarEventInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract callbackCalendarImportInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/schedule/bean/CPHolidayInfo;",
            ">;)V"
        }
    .end annotation
.end method
