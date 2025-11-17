.class public interface abstract Lcom/geely/os/ota/IGlyOtaSession;
.super Ljava/lang/Object;
.source "IGlyOtaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/os/ota/IGlyOtaSession$OTADownloadreason;,
        Lcom/geely/os/ota/IGlyOtaSession$OTADownloadStatus;,
        Lcom/geely/os/ota/IGlyOtaSession$InstallRegretState;,
        Lcom/geely/os/ota/IGlyOtaSession$OtaUpdateInProgressState;,
        Lcom/geely/os/ota/IGlyOtaSession$OtaMode;,
        Lcom/geely/os/ota/IGlyOtaSession$OtaPriority;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_FAILED:I = 0x4

.field public static final DOWNLOAD_SUCCESS:I = 0x9

.field public static final DOWNLOAD_URL_INVALID:I = 0x5

.field public static final FILE_VERIFICATION_FAILED:I = 0x6

.field public static final NONE:I = 0xb

.field public static final OCSP_FAILED:I = 0x7

.field public static final OCSP_SUCCESS:I = 0xa

.field public static final OCSP_VERIFICATION_FAILED:I = 0x8

.field public static final OTA_MODE_DOWNLOAD_INSTALL:I = 0x2

.field public static final OTA_MODE_INSTALL_DIRECTLY:I = 0x1

.field public static final OTA_MODE_SELF_DOWNLOAD_INSTALL:I = 0x3

.field public static final OTA_PRIORITY_HIGH:I = 0x2

.field public static final OTA_PRIORITY_LOW:I = 0x0

.field public static final OTA_PRIORITY_NORMAL:I = 0x1

.field public static final OTA_PRIORITY_SET_TIME:I = 0x3

.field public static final OTA_PRIORITY_UNKNOWN:I = 0x0

.field public static final OTA_UPDATE_INPROGRESS_STATE_IDLE:I = 0x1

.field public static final OTA_UPDATE_INPROGRESS_STATE_IMMEDIATE:I = 0x3

.field public static final OTA_UPDATE_INPROGRESS_STATE_UPGRADE:I = 0x2

.field public static final REGRET_TERMINATE:I = 0x2

.field public static final REGRET_TIMEOUT:I = 0x1


# virtual methods
.method public abstract cancel()Z
.end method

.method public abstract cancelOtaUpgradeTime()Z
.end method

.method public abstract changeSlot()V
.end method

.method public abstract checkConnectivityStatus()V
.end method

.method public abstract checkSceneModeAlive()Z
.end method

.method public abstract checkUpdate()Z
.end method

.method public abstract couldBeginInstallRightNow()Z
.end method

.method public abstract download()Z
.end method

.method public abstract download(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation
.end method

.method public abstract getCurrentCarVersionName()Ljava/lang/String;
.end method

.method public abstract getDownloadUrls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEstimatedInstallationTime()I
.end method

.method public abstract getFileNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstallationtimes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOtaAutoDownload()Z
.end method

.method public abstract getOtaAutoInstallation()Z
.end method

.method public abstract getOtaAutoSync()Z
.end method

.method public abstract getOtaBaseSysVersionCode()I
.end method

.method public abstract getOtaBaseSysVersionName()Ljava/lang/String;
.end method

.method public abstract getOtaMode()I
.end method

.method public abstract getOtaPriority()I
.end method

.method public abstract getOtaProgress()I
.end method

.method public abstract getOtaSetting()Z
.end method

.method public abstract getOtaType()I
.end method

.method public abstract getOtaUpdateInProgressState()I
.end method

.method public abstract getOtaUpdateTime()Ljava/util/Calendar;
.end method

.method public abstract getSignatureCertificate()Ljava/lang/String;
.end method

.method public abstract getSoftwareSignature()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSysBssId()Ljava/lang/String;
.end method

.method public abstract getSysVersionCode()I
.end method

.method public abstract getSysVersionName()Ljava/lang/String;
.end method

.method public abstract getTotalSize()I
.end method

.method public abstract getUUID()Ljava/lang/String;
.end method

.method public abstract getUpgradeInfo()Ljava/lang/String;
.end method

.method public abstract ifSystemWillRebootAfterOta()Z
.end method

.method public abstract isInstallationStarted()Z
.end method

.method public abstract isPopupEnable()Z
.end method

.method public abstract isRecoveryOta()Z
.end method

.method public abstract reportDownloadFailedName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation
.end method

.method public abstract requestOtaUpdateTime()V
.end method

.method public abstract sendBSSIDDisplayedVersionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bssid",
            "displayedVersion"
        }
    .end annotation
.end method

.method public abstract sendUserDownloadCancel()V
.end method

.method public abstract sendUserDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "key_auth",
            "url"
        }
    .end annotation
.end method

.method public abstract sendUserDownloadResume()V
.end method

.method public abstract sendUserDownloadSuspend()V
.end method

.method public abstract sendVbfDecryptionKey(Ljava/util/List;)V
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
            "Lcom/geely/os/ota/DecryptionKeyType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInstallRegretState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setOTADownloadSize(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation
.end method

.method public abstract setOTADownloadStatus(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "reason"
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

.method public abstract setOtaUserSettings(ZZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "otaSetting",
            "autoSync",
            "autoDownload",
            "autoInstall"
        }
    .end annotation
.end method

.method public abstract setPowerState(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method
