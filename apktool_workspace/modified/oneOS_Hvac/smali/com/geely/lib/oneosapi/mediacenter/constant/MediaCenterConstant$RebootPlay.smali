.class public final enum Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;
.super Ljava/lang/Enum;
.source "MediaCenterConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RebootPlay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

.field public static final enum OFF:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

.field public static final enum ON:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->ON:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    .line 2
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    const-string v4, "OFF"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->OFF:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    new-array v4, v5, [Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->$VALUES:[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

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
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;
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
    const-class v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    return-object p0
.end method

.method public static values()[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->$VALUES:[Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    invoke-virtual {v0}, [Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->value:I

    return v0
.end method
