.class public final enum Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;
.super Ljava/lang/Enum;
.source "HmiActionImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiActionImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

.field public static final enum BACK:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

.field public static final enum CLOSE:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

.field public static final enum EXPANDE:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

.field public static final enum PACK_UP:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 100
    new-instance v0, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->BACK:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    new-instance v1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    const-string v3, "PACK_UP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->PACK_UP:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    new-instance v3, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    const-string v5, "CLOSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->CLOSE:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    new-instance v5, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    const-string v7, "EXPANDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->EXPANDE:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 96
    sput-object v7, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->$VALUES:[Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->code:I

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->code:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 96
    const-class v0, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    return-object p0
.end method

.method public static values()[Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;
    .locals 1

    .line 96
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->$VALUES:[Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {v0}, [Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->code:I

    return v0
.end method
