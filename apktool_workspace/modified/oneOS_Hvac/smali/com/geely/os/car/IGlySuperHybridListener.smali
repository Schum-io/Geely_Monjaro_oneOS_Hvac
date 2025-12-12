.class public interface abstract Lcom/geely/os/car/IGlySuperHybridListener;
.super Ljava/lang/Object;
.source "IGlySuperHybridListener.java"


# virtual methods
.method public abstract onBookChargingChanged(Ljava/util/Calendar;Ljava/util/Calendar;III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startTime",
            "stopTime",
            "switchStatus",
            "startPriority",
            "stopPriority"
        }
    .end annotation
.end method

.method public abstract onBookChargingChangedError()V
.end method

.method public abstract onSetBookChargingResult(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public abstract onSetBookChargingResultError()V
.end method
