.class public final enum Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;
.super Ljava/lang/Enum;
.source "MediaCenterConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

.field public static final enum MUSIC_STATE_PAUSE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

.field public static final enum MUSIC_STATE_PLAY:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

.field public static final enum MUSIC_STATE_STOP:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    const-string v1, "MUSIC_STATE_PLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;->MUSIC_STATE_PLAY:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    .line 2
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    const-string v3, "MUSIC_STATE_PAUSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;->MUSIC_STATE_PAUSE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    .line 3
    new-instance v3, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    const-string v5, "MUSIC_STATE_STOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;->MUSIC_STATE_STOP:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;->$VALUES:[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;
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
    const-class v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    return-object p0
.end method

.method public static values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;->$VALUES:[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    invoke-virtual {v0}, [Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    return-object v0
.end method
