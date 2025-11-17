.class final enum Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;
.super Ljava/lang/Enum;
.source "HmiSquareToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrawablePositions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

.field public static final enum BOTTOM:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

.field public static final enum NONE:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

.field public static final enum TOP:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

.field public static final enum TOP_AND_BOTTOM:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->NONE:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    .line 45
    new-instance v1, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    const-string v3, "TOP_AND_BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->TOP_AND_BOTTOM:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    .line 46
    new-instance v3, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    const-string v5, "TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->TOP:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    .line 47
    new-instance v5, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->BOTTOM:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 40
    sput-object v7, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->$VALUES:[Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 40
    const-class v0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    return-object p0
.end method

.method public static values()[Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;
    .locals 1

    .line 40
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->$VALUES:[Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    invoke-virtual {v0}, [Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    return-object v0
.end method
