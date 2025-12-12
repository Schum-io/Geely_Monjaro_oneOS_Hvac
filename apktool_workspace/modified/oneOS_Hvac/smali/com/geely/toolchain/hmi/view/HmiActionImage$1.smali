.class synthetic Lcom/geely/toolchain/hmi/view/HmiActionImage$1;
.super Ljava/lang/Object;
.source "HmiActionImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiActionImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    invoke-static {}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->values()[Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/geely/toolchain/hmi/view/HmiActionImage$1;->$SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState:[I

    :try_start_0
    sget-object v1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->BACK:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiActionImage$1;->$SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState:[I

    sget-object v1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->PACK_UP:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiActionImage$1;->$SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState:[I

    sget-object v1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->EXPANDE:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
