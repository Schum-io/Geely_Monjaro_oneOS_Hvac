.class final enum Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;
.super Ljava/lang/Enum;
.source "HmiIconButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiIconButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrawablePositions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

.field public static final enum LEFT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

.field public static final enum LEFT_AND_RIGHT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

.field public static final enum NONE:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

.field public static final enum RIGHT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 45
    new-instance v0, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->NONE:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    .line 46
    new-instance v1, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    const-string v3, "LEFT_AND_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    .line 47
    new-instance v3, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    const-string v5, "LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->LEFT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    .line 48
    new-instance v5, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->RIGHT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 41
    sput-object v7, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->$VALUES:[Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 41
    const-class v0, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    return-object p0
.end method

.method public static values()[Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;
    .locals 1

    .line 41
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->$VALUES:[Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    invoke-virtual {v0}, [Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    return-object v0
.end method
