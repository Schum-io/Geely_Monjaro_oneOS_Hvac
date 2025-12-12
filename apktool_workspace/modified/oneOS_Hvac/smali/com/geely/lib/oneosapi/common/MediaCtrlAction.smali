.class public final enum Lcom/geely/lib/oneosapi/common/MediaCtrlAction;
.super Ljava/lang/Enum;
.source "MediaCtrlAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/lib/oneosapi/common/MediaCtrlAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

.field public static final enum EXIT:Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

.field public static final enum MOVE_BACK:Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

.field public static final enum OPEN:Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

.field public static final enum PLAY_BACK:Lcom/geely/lib/oneosapi/common/MediaCtrlAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;->OPEN:Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    .line 2
    new-instance v1, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    const-string v3, "MOVE_BACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;->MOVE_BACK:Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    .line 3
    new-instance v3, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    const-string v5, "PLAY_BACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;->PLAY_BACK:Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    .line 4
    new-instance v5, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    const-string v7, "EXIT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;->EXIT:Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;->$VALUES:[Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/lib/oneosapi/common/MediaCtrlAction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    return-object p0
.end method

.method public static values()[Lcom/geely/lib/oneosapi/common/MediaCtrlAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/common/MediaCtrlAction;->$VALUES:[Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    invoke-virtual {v0}, [Lcom/geely/lib/oneosapi/common/MediaCtrlAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/lib/oneosapi/common/MediaCtrlAction;

    return-object v0
.end method
