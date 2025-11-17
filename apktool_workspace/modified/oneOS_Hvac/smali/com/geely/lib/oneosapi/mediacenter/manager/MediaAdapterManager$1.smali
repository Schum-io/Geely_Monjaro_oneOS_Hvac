.class public synthetic Lcom/geely/lib/oneosapi/mediacenter/manager/MediaAdapterManager$1;
.super Ljava/lang/Object;
.source "MediaAdapterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/manager/MediaAdapterManager;
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

    sput-object v0, Lcom/geely/lib/oneosapi/mediacenter/manager/MediaAdapterManager$1;->$SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource:[I

    :try_start_0
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/manager/MediaAdapterManager$1;->$SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource:[I

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
