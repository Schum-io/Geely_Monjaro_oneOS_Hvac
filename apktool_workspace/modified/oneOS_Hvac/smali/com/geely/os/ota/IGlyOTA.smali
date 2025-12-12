.class public interface abstract Lcom/geely/os/ota/IGlyOTA;
.super Ljava/lang/Object;
.source "IGlyOTA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/os/ota/IGlyOTA$OtaType;
    }
.end annotation


# static fields
.field public static final OTA_TYPE_IHU:I = 0x1

.field public static final OTA_TYPE_IHU_DVR:I = 0x22

.field public static final OTA_TYPE_IHU_VP:I = 0x12

.field public static final OTA_TYPE_TBOX:I = 0x21

.field public static final OTA_TYPE_VP:I = 0x11

.field public static final OTA_TYPE_WHOLE_CAR:I = 0x2

.field public static final UPDATE_FAILED_REASON_DEFAULT:I = 0x0

.field public static final UPDATE_FAILED_REASON_INSUFFICIENT_STORAGE:I = 0x2

.field public static final UPDATE_FAILED_REASON_INVALID_PACKAGE:I = 0x1


# virtual methods
.method public abstract getOtaBaseSysVersionCode()I
.end method

.method public abstract getOtaBaseSysVersionName()Ljava/lang/String;
.end method

.method public abstract getOtaPkgRootPath()Ljava/lang/String;
.end method

.method public abstract getSysVersionCode()I
.end method

.method public abstract getSysVersionName()Ljava/lang/String;
.end method

.method public abstract installPackage(Lcom/geely/os/ota/IGlyOtaSession;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "otaSession",
            "otaPackagePath"
        }
    .end annotation
.end method

.method public abstract isOtaTypeSupported(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract releaseOtaCallback(Lcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract requestOta(ILcom/geely/os/ota/IGlyOtaSessionCallback;)Lcom/geely/os/ota/IGlyOtaSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "callback"
        }
    .end annotation
.end method

.method public abstract requestOta(IZLcom/geely/os/ota/IGlyOtaSessionCallback;)Lcom/geely/os/ota/IGlyOtaSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "priority",
            "preferRecoveryOta",
            "callback"
        }
    .end annotation
.end method

.method public abstract requestOta(ZLcom/geely/os/ota/IGlyOtaSessionCallback;)Lcom/geely/os/ota/IGlyOtaSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preferRecoveryOta",
            "callback"
        }
    .end annotation
.end method

.method public abstract setOtaUpdateTime(Ljava/util/Calendar;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendar"
        }
    .end annotation
.end method

.method public abstract supportNoRecoveryOta()Z
.end method
