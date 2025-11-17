.class public final enum Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;
.super Ljava/lang/Enum;
.source "MediaCenterConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

.field public static final enum PLAY_MODE_QUEUE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

.field public static final enum PLAY_MODE_RANDOM:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

.field public static final enum PLAY_MODE_REPEAT:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

.field public static final enum PLAY_MODE_UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    const-string v1, "PLAY_MODE_QUEUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->PLAY_MODE_QUEUE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    .line 2
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    const-string v3, "PLAY_MODE_REPEAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->PLAY_MODE_REPEAT:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    .line 3
    new-instance v3, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    const-string v5, "PLAY_MODE_RANDOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->PLAY_MODE_RANDOM:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    .line 4
    new-instance v5, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    const-string v7, "PLAY_MODE_UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->PLAY_MODE_UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->$VALUES:[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;
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
    const-class v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    return-object p0
.end method

.method public static values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->$VALUES:[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    invoke-virtual {v0}, [Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    return-object v0
.end method
