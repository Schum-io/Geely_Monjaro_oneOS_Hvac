.class public interface abstract Lcom/geely/os/ota/IGlyOtaSessionCallback;
.super Ljava/lang/Object;
.source "IGlyOtaSessionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/os/ota/IGlyOtaSessionCallback$InstallationResponse;,
        Lcom/geely/os/ota/IGlyOtaSessionCallback$DownloadResponse;,
        Lcom/geely/os/ota/IGlyOtaSessionCallback$UpdateFailedReason;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_RESPONSE_DOWNLOADING_EXCEPTION:I = 0x65

.field public static final DOWNLOAD_RESPONSE_HASH_CHECK_FAILED:I = 0x66

.field public static final DOWNLOAD_RESPONSE_KEY_AUTH_FAILED:I = 0x62

.field public static final DOWNLOAD_RESPONSE_KEY_AUTH_SUCCEED:I = 0x61

.field public static final DOWNLOAD_RESPONSE_REQUEST_ACCEPT:I = 0x60

.field public static final DOWNLOAD_RESPONSE_REQUEST_VBF_DECRYPTION_KEY:I = 0x67

.field public static final DOWNLOAD_RESPONSE_RESTORE_KEY_FAILED:I = 0x68

.field public static final DOWNLOAD_RESPONSE_SSOC_FTP_TRANSMISSION_FAILED:I = 0x6a

.field public static final DOWNLOAD_RESPONSE_TCAM_NETWORK_ACCESS_FAILED:I = 0x63

.field public static final DOWNLOAD_RESPONSE_URL_INVALID:I = 0x34

.field public static final DOWNLOAD_RESPONSE_VBF_DECRYPTION_FAILED:I = 0x69

.field public static final DOWNLOAD_RESPONSE_VBF_EXTRACTION_FAILED:I = 0x6b

.field public static final INSTALLATION_RESPONSE_BLOCK_VERIFICATION_FAILED_MSOC:I = 0x6c

.field public static final INSTALLATION_RESPONSE_BLOCK_VERIFICATION_FAILED_SSOC:I = 0x6f

.field public static final INSTALLATION_RESPONSE_DIFF_REDUCE_FAILED_MSOC:I = 0x6d

.field public static final INSTALLATION_RESPONSE_DIFF_REDUCE_FAILED_SSOC:I = 0x70

.field public static final INSTALLATION_RESPONSE_FLASH_PARTITION_FAILED_MSOC:I = 0x6e

.field public static final INSTALLATION_RESPONSE_FLASH_PARTITION_FAILED_SSOC:I = 0x71

.field public static final UPDATE_FAILED_CHARGE_CONNECTED:I = 0xf

.field public static final UPDATE_FAILED_CONFIGURATION_MISMATCH:I = 0x26

.field public static final UPDATE_FAILED_CONFIG_ERROR:I = 0x6

.field public static final UPDATE_FAILED_CONNECTIVITY_NOK:I = 0x22

.field public static final UPDATE_FAILED_CRITICAL_CONFIGURATION_MISMATCH_OR_OTHER:I = 0xe

.field public static final UPDATE_FAILED_DOOR_LOCKING:I = 0x8

.field public static final UPDATE_FAILED_GEARS_NOK:I = 0x21

.field public static final UPDATE_FAILED_GEAR_POSITION:I = 0x16

.field public static final UPDATE_FAILED_HV_BATTERY_TEMP_HIGH:I = 0x28

.field public static final UPDATE_FAILED_HV_SYSTEM_FAILURE:I = 0x19

.field public static final UPDATE_FAILED_INSTALLATION_FINISHED:I = 0x27

.field public static final UPDATE_FAILED_LOW_BATTERY:I = 0x4

.field public static final UPDATE_FAILED_LOW_HV_SYSTEM_ENERGY_LEVEL:I = 0x18

.field public static final UPDATE_FAILED_MEMORY_ERROR:I = 0xa

.field public static final UPDATE_FAILED_NETWORK_ERROR:I = 0x3

.field public static final UPDATE_FAILED_POWER_ON_FAILED:I = 0x13

.field public static final UPDATE_FAILED_PROPULSION:I = 0x25

.field public static final UPDATE_FAILED_REASON_DEFAULT:I = 0x0

.field public static final UPDATE_FAILED_REASON_INSUFFICIENT_STORAGE:I = 0x2

.field public static final UPDATE_FAILED_REASON_INVALID_PACKAGE:I = 0x1

.field public static final UPDATE_FAILED_REGRET_WINDOW_TIMEOUT:I = 0x20

.field public static final UPDATE_FAILED_SCENE_MODE_NOK:I = 0x24

.field public static final UPDATE_FAILED_SERVICE_ERROR:I = 0x9

.field public static final UPDATE_FAILED_SPEED_NOK:I = 0x23

.field public static final UPDATE_FAILED_SYSTEM:I = 0x12

.field public static final UPDATE_FAILED_TEMPERATURE_LOW:I = 0x10

.field public static final UPDATE_FAILED_THEFT_DOOR:I = 0x17

.field public static final UPDATE_FAILED_THEFT_HOOD:I = 0x14

.field public static final UPDATE_FAILED_THEFT_TRUNK:I = 0x15

.field public static final UPDATE_FAILED_TIME_OUT:I = 0x5

.field public static final UPDATE_FAILED_UPDATING_ERROR:I = 0xb

.field public static final UPDATE_FAILED_VEHICLE_IN_USE:I = 0xc

.field public static final UPDATE_FAILED_VEHICLE_NOT_SECURED:I = 0xd

.field public static final UPDATE_FAILED_WINDOW:I = 0x11


# virtual methods
.method public abstract onDownloadProgressReport(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onDownloadResponse(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onFailed(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method

.method public abstract onInstallProgressReport(III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "total",
            "progress"
        }
    .end annotation
.end method

.method public abstract onInstallationResponse(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onNotificationCurrentCarVersionName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayedVersion"
        }
    .end annotation
.end method

.method public abstract onProgressUpdate(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public abstract onRebootingAfterOta()V
.end method

.method public abstract onSessionCanceled()V
.end method

.method public abstract onShouldBeginInstall()V
.end method

.method public abstract onSucceeded()V
.end method

.method public abstract onVGMStatusReport(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract requestBSSIDDisplayedVersionInfo()V
.end method
