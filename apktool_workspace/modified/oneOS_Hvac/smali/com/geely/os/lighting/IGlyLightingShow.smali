.class public interface abstract Lcom/geely/os/lighting/IGlyLightingShow;
.super Ljava/lang/Object;
.source "IGlyLightingShow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/os/lighting/IGlyLightingShow$DownloadResult;,
        Lcom/geely/os/lighting/IGlyLightingShow$ReqStateResult;,
        Lcom/geely/os/lighting/IGlyLightingShow$ReqState;,
        Lcom/geely/os/lighting/IGlyLightingShow$VehicleIpType;,
        Lcom/geely/os/lighting/IGlyLightingShow$ErrorCode;,
        Lcom/geely/os/lighting/IGlyLightingShow$ShowState;,
        Lcom/geely/os/lighting/IGlyLightingShow$ShowMode;,
        Lcom/geely/os/lighting/IGlyLightingShow$ShowType;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_ACC_NOT_CONVENIENCE:I = 0x1

.field public static final ERROR_CODE_BATTERY_LOW:I = 0x4

.field public static final ERROR_CODE_BRAKE_PRESSED:I = 0x6

.field public static final ERROR_CODE_DOOR_NOT_CLOSED:I = 0x2

.field public static final ERROR_CODE_HWL_ON:I = 0x7

.field public static final ERROR_CODE_LAMP_FAULT:I = 0x5

.field public static final ERROR_CODE_NO_ERROR:I = 0x0

.field public static final ERROR_CODE_UNKNOWN:I = 0xff

.field public static final ERROR_CODE_WINDOW_NOT_DOWN:I = 0x3

.field public static final SHOW_MODE_MULTIPLE:I = 0x2

.field public static final SHOW_MODE_SINGLE:I = 0x1

.field public static final SHOW_STATE_END:I = 0x4

.field public static final SHOW_STATE_ERROR:I = 0x5

.field public static final SHOW_STATE_IDLE:I = 0xff

.field public static final SHOW_STATE_PREPARE:I = 0x6

.field public static final SHOW_STATE_SHOWING:I = 0x2

.field public static final SHOW_STATE_START:I = 0x1

.field public static final SHOW_STATE_STOP:I = 0x3

.field public static final SHOW_STATE_UNKNOWN:I = 0x0

.field public static final SHOW_TYPE_EXTERIOR:I = 0x1

.field public static final SHOW_TYPE_INTERIOR:I = 0x2

.field public static final SHOW_TYPE_WELCOME:I = 0x3

.field public static final VEHICLE_IP_INTERNET_MASTER:I = 0x1

.field public static final VEHICLE_IP_LOCAL_MASTER:I = 0x2

.field public static final VEHICLE_IP_LOCAL_SLAVE:I = 0x3


# virtual methods
.method public abstract getLightShowFileDownloadReq()I
.end method

.method public abstract getLightingShowError()[I
.end method

.method public abstract getLightingShowInfo(I)[Lcom/geely/os/lighting/IGlyLightingShowInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract getLightingShowMode()I
.end method

.method public abstract getLightingShowState()I
.end method

.method public abstract getLightingShowType()I
.end method

.method public abstract getVehicleIpTable(I)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vehicleIpType"
        }
    .end annotation
.end method

.method public abstract isLightingShowEnabled()I
.end method

.method public abstract isLightingShowFileDownload()I
.end method

.method public abstract isWelcomeLightFileDownload()I
.end method

.method public abstract registerLightingShowWatcher(Lcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation
.end method

.method public abstract sendIpMessage(ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ip",
            "cmdMsg"
        }
    .end annotation
.end method

.method public abstract sendLightingShowSource([B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation
.end method

.method public abstract sendLightingShowSourceEnd()Z
.end method

.method public abstract sendLightingShowSourceStart()Z
.end method

.method public abstract setLightShowFileDownloadResult(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public abstract setLightShowFileRequestResult(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setLightingShowMode(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setLightingShowType(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract startLightingShow()V
.end method

.method public abstract stopLightingShow()V
.end method

.method public abstract unregisterLightingShowWatcher(Lcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation
.end method
