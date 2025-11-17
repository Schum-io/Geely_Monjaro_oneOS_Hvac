.class public interface abstract Lcom/geely/os/car/IGlyCarInfo;
.super Ljava/lang/Object;
.source "IGlyCarInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/os/car/IGlyCarInfo$ConfigValue;,
        Lcom/geely/os/car/IGlyCarInfo$ConfigInfo;
    }
.end annotation


# static fields
.field public static final CONFIG_INFO_360CAM:I = 0x800500

.field public static final CONFIG_INFO_DVR:I = 0x800300

.field public static final CONFIG_INFO_DVR_INNERCAM:I = 0x800400

.field public static final CONFIG_INFO_EN_START_BUTTON:I = 0x800e00

.field public static final CONFIG_INFO_FACE_CAM:I = 0x800d00

.field public static final CONFIG_INFO_FINGERPRINT:I = 0x800200

.field public static final CONFIG_INFO_KING_MODE_AVAILABLE:I = 0x800f20

.field public static final CONFIG_INFO_MIRROR_SAVE_RESET:I = 0x800f10

.field public static final CONFIG_INFO_NAVI_AR_AVAILABLE:I = 0x800f00

.field public static final CONFIG_INFO_RADAR:I = 0x800b00

.field public static final CONFIG_INFO_REARVIEW_CAM:I = 0x800c00

.field public static final CONFIG_INFO_REAR_CAM:I = 0x800600

.field public static final CONFIG_INFO_STEERING_SLIDE_AVAILABLE:I = -0x1

.field public static final CONFIG_INFO_SUNROOF:I = 0x800900

.field public static final CONFIG_INFO_TCAM:I = 0x800a00

.field public static final CONFIG_INFO_TEM:I = 0x800100

.field public static final CONFIG_INFO_VALUE_CONFIG:I = 0x800002

.field public static final CONFIG_INFO_VALUE_FAULT:I = 0x8000fe

.field public static final CONFIG_INFO_VALUE_NOT_CONFIG:I = 0x800001

.field public static final CONFIG_INFO_VALUE_PRELOAD:I = 0x800003

.field public static final CONFIG_INFO_VALUE_UNKNOWN:I = 0x8000ff

.field public static final CONFIG_INFO_WIFI:I = 0x800700

.field public static final CONFIG_INFO_WPC:I = 0x800800


# virtual methods
.method public abstract getCarInfoConfig(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configId"
        }
    .end annotation
.end method

.method public abstract getIntelligentEnergyManagement()I
.end method

.method public abstract getPresentationDisplay(I)Landroid/view/Display;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "display"
        }
    .end annotation
.end method

.method public abstract hasMultiAmbience()Z
.end method
