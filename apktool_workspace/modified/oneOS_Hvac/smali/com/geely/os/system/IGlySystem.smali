.class public interface abstract Lcom/geely/os/system/IGlySystem;
.super Ljava/lang/Object;
.source "IGlySystem.java"


# virtual methods
.method public abstract areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation
.end method

.method public abstract checkAppOp(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permission",
            "packageName"
        }
    .end annotation
.end method

.method public abstract getAppInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/system/GlyAppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCarVehicleType()I
.end method

.method public abstract getCurrentLocale()Ljava/util/Locale;
.end method

.method public abstract getDrivingEntertainmentRestriction()I
.end method

.method public abstract getFontBold()F
.end method

.method public abstract getFontSize()F
.end method

.method public abstract getIconSize()F
.end method

.method public abstract getIhuId()Ljava/lang/String;
.end method

.method public abstract getMpuSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getOperatorCode()I
.end method

.method public abstract getOperatorName()Ljava/lang/String;
.end method

.method public abstract getSerialNo()Ljava/lang/String;
.end method

.method public abstract getTimeZone()Ljava/util/TimeZone;
.end method

.method public abstract getUidPolicy(Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "isWlan"
        }
    .end annotation
.end method

.method public abstract getVehicleName()Ljava/lang/String;
.end method

.method public abstract getVehicleType()Ljava/lang/String;
.end method

.method public abstract getVehicleTypeConfig()Ljava/lang/String;
.end method

.method public abstract getVin()Ljava/lang/String;
.end method

.method public abstract grantAppOp(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "permission",
            "packageName",
            "mode"
        }
    .end annotation
.end method

.method public abstract isAutoTimeZone()Z
.end method

.method public abstract isDateTimeAuto()Z
.end method

.method public abstract loadStorageStats()Lcom/geely/os/system/GlyStorageStatsResult;
.end method

.method public abstract restoreFactorySettings()V
.end method

.method public abstract setAutoDateTime(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnabled"
        }
    .end annotation
.end method

.method public abstract setAutoTimeZone(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnabled"
        }
    .end annotation
.end method

.method public abstract setCurrentLocale(Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation
.end method

.method public abstract setDrivingEntertainmentRestriction(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restriction"
        }
    .end annotation
.end method

.method public abstract setFontBold(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation
.end method

.method public abstract setFontSize(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation
.end method

.method public abstract setIconSize(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation
.end method

.method public abstract setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "enable"
        }
    .end annotation
.end method

.method public abstract setSystemDate(III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "year",
            "month",
            "day"
        }
    .end annotation
.end method

.method public abstract setSystemTime(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hour",
            "minute"
        }
    .end annotation
.end method

.method public abstract setTimeZone(Ljava/util/TimeZone;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeZone"
        }
    .end annotation
.end method

.method public abstract setUidPolicy(Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "mode",
            "isWlan"
        }
    .end annotation
.end method
