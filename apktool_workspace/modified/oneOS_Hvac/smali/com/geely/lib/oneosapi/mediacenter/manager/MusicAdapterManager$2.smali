.class public synthetic Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$2;
.super Ljava/lang/Object;
.source "MusicAdapterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    const/4 v0, 0x7

    new-array v0, v0, [I

    sput-object v0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$2;->$SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource:[I

    :try_start_0
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$2;->$SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource:[I

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_USB:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$2;->$SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource:[I

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$2;->$SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource:[I

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_YUNTING:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$2;->$SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource:[I

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_BT:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$2;->$SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource:[I

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
