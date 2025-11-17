.class public Lcom/geely/os/ota/GlyOtaConstants;
.super Ljava/lang/Object;
.source "GlyOtaConstants.java"


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

.field public static final OTA_TYPE_IHU:I = 0x1

.field public static final OTA_TYPE_IHU_DVR:I = 0x22

.field public static final OTA_TYPE_IHU_VP:I = 0x12

.field public static final OTA_TYPE_TBOX:I = 0x21

.field public static final OTA_TYPE_VP:I = 0x11

.field public static final OTA_TYPE_WHOLE_CAR:I = 0x2

.field public static final OTA_UPDATE_INPROGRESS_STATE_IDLE:I = 0x1

.field public static final OTA_UPDATE_INPROGRESS_STATE_IMMEDIATE:I = 0x3

.field public static final OTA_UPDATE_INPROGRESS_STATE_UPGRADE:I = 0x2

.field public static final REGRET_TERMINATE:I = 0x2

.field public static final REGRET_TIMEOUT:I = 0x1

.field public static final UPDATE_FAILED_REASON_DEFAULT:I = 0x0

.field public static final UPDATE_FAILED_REASON_INSUFFICIENT_STORAGE:I = 0x2

.field public static final UPDATE_FAILED_REASON_INVALID_PACKAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
