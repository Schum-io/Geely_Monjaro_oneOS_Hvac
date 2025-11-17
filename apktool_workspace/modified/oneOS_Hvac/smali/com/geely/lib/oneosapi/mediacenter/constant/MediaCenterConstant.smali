.class public Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;
.super Ljava/lang/Object;
.source "MediaCenterConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;,
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$MediaType;,
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;,
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;,
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;,
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$DeviceState;,
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;,
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$CommandArgsKey;,
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$MediaBoundKey;,
        Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$Command;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCenterConstant"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v0

    if-ltz p0, :cond_0

    const/16 v1, 0x11

    if-ge p0, v1, :cond_0

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    return-object p0
.end method

.method public static getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    if-ltz p0, :cond_0

    const/4 v1, 0x7

    if-ge p0, v1, :cond_0

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    return-object p0
.end method

.method public static getDeviceStateEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$DeviceState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$DeviceState;->values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$DeviceState;

    move-result-object v0

    if-ltz p0, :cond_0

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$DeviceState;->DEVICE_STATE_UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$DeviceState;

    return-object p0
.end method

.method public static getMediaType(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$MediaType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$MediaType;->values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$MediaType;

    move-result-object v0

    if-ltz p0, :cond_0

    const/4 v1, 0x7

    if-ge p0, v1, :cond_0

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$MediaType;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$MediaType;

    return-object p0
.end method

.method public static getPlayModeEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    move-result-object v0

    if-ltz p0, :cond_0

    const/4 v1, 0x4

    if-ge p0, v1, :cond_0

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->PLAY_MODE_UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    return-object p0
.end method

.method public static getPlayStateEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;->values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    move-result-object v0

    if-ltz p0, :cond_0

    const/4 v1, 0x3

    if-ge p0, v1, :cond_0

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;->MUSIC_STATE_STOP:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    return-object p0
.end method

.method public static getRebootPlay(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    move-result-object v0

    if-lez p0, :cond_0

    const/4 v1, 0x2

    if-gt p0, v1, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->OFF:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    return-object p0
.end method
