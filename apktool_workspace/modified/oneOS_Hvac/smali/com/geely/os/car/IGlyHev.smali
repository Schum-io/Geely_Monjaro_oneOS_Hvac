.class public interface abstract Lcom/geely/os/car/IGlyHev;
.super Ljava/lang/Object;
.source "IGlyHev.java"


# static fields
.field public static final AVG_ELE_MAX:F = 80.0f

.field public static final AVG_ELE_MIN:F = -20.0f

.field public static final AVG_FUEL_MAX:F = 20.0f

.field public static final AVG_FUEL_MIN:F


# virtual methods
.method public abstract addSuperHybridListener(Lcom/geely/os/car/IGlySuperHybridListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superHybridListener"
        }
    .end annotation
.end method

.method public abstract getAirConditionPercent(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation
.end method

.method public abstract getAverageConsumptionEn100km()[F
.end method

.method public abstract getAverageConsumptionEn50km()[F
.end method

.method public abstract getAverageConsumptionOil100km()[F
.end method

.method public abstract getAverageConsumptionOil50km()[F
.end method

.method public abstract getBatteryClimatePercent(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation
.end method

.method public abstract getHistoricalDischargeCapacityTime()[Ljava/util/Calendar;
.end method

.method public abstract getHistoricalDischargeCapacityValue()[Ljava/lang/Float;
.end method

.method public abstract getLastedUpdateItemFlag()I
.end method

.method public abstract getPreChargingTime()[Ljava/util/Calendar;
.end method

.method public abstract getPropulsionPercent(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation
.end method

.method public abstract getTPTFReportInfo()Lcom/geely/os/car/IGlyTPTFReport;
.end method

.method public abstract getTripDistance(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation
.end method

.method public abstract getTripDuration(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation
.end method

.method public abstract getTripEleConsumption(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation
.end method

.method public abstract getTripFuelConsumption(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation
.end method

.method public abstract isTripDataSupported(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/geely/os/car/IGlyChargingListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerTPTFReportListener(Lcom/geely/os/car/IGlyTPTFReportListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerTripListener(Lcom/geely/os/car/IGlyHevCallBack;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iGlyHevCallBack"
        }
    .end annotation
.end method

.method public abstract removeSuperHybridListener(Lcom/geely/os/car/IGlySuperHybridListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superHybridListener"
        }
    .end annotation
.end method

.method public abstract requestRemoteBookChargingTime()V
.end method

.method public abstract setBookChargingTime(Ljava/util/Calendar;Ljava/util/Calendar;III)Z
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

.method public abstract setPreChargingTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation
.end method

.method public abstract unRegisterTripListener()V
.end method

.method public abstract unregisterListener(Lcom/geely/os/car/IGlyChargingListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterTPTFReportListener(Lcom/geely/os/car/IGlyTPTFReportListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
