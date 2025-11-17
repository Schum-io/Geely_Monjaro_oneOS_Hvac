.class public final enum Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;
.super Ljava/lang/Enum;
.source "FunctionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

.field public static final enum active:Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

.field public static final enum error:Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

.field public static final enum notactive:Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

.field public static final enum notavailable:Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    const-string v1, "active"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;->active:Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    .line 2
    new-instance v1, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    const-string v3, "notactive"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;->notactive:Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    .line 3
    new-instance v3, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    const-string v5, "notavailable"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;->notavailable:Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    .line 4
    new-instance v5, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    const-string v7, "error"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;->error:Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;->$VALUES:[Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;
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
    const-class v0, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    return-object p0
.end method

.method public static values()[Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;->$VALUES:[Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    invoke-virtual {v0}, [Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/lib/oneosapi/navi/base/FunctionStatus;

    return-object v0
.end method
