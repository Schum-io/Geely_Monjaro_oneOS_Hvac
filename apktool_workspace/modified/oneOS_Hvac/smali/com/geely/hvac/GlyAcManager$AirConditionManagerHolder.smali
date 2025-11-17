.class Lcom/geely/hvac/GlyAcManager$AirConditionManagerHolder;
.super Ljava/lang/Object;
.source "GlyAcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/GlyAcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AirConditionManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/geely/hvac/GlyAcManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/geely/hvac/GlyAcManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geely/hvac/GlyAcManager;-><init>(Lcom/geely/hvac/GlyAcManager$1;)V

    sput-object v0, Lcom/geely/hvac/GlyAcManager$AirConditionManagerHolder;->instance:Lcom/geely/hvac/GlyAcManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/geely/hvac/GlyAcManager;
    .locals 1

    .line 43
    sget-object v0, Lcom/geely/hvac/GlyAcManager$AirConditionManagerHolder;->instance:Lcom/geely/hvac/GlyAcManager;

    return-object v0
.end method
