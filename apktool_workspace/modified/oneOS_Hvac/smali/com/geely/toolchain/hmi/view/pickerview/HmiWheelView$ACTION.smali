.class public final enum Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;
.super Ljava/lang/Enum;
.source "HmiWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

.field public static final enum CLICK:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

.field public static final enum DAGGLE:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

.field public static final enum FLING:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->CLICK:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    new-instance v1, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    const-string v3, "FLING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->FLING:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    new-instance v3, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    const-string v5, "DAGGLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->DAGGLE:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 34
    sput-object v5, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->$VALUES:[Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 34
    const-class v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    return-object p0
.end method

.method public static values()[Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;
    .locals 1

    .line 34
    sget-object v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->$VALUES:[Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    invoke-virtual {v0}, [Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    return-object v0
.end method
