.class public final synthetic Lcom/geely/os/bt/-$$Lambda$CecQ-wF36Fz3ACOOl-a7d6sOUwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/bt/-$$Lambda$CecQ-wF36Fz3ACOOl-a7d6sOUwA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/bt/-$$Lambda$CecQ-wF36Fz3ACOOl-a7d6sOUwA;

    invoke-direct {v0}, Lcom/geely/os/bt/-$$Lambda$CecQ-wF36Fz3ACOOl-a7d6sOUwA;-><init>()V

    sput-object v0, Lcom/geely/os/bt/-$$Lambda$CecQ-wF36Fz3ACOOl-a7d6sOUwA;->INSTANCE:Lcom/geely/os/bt/-$$Lambda$CecQ-wF36Fz3ACOOl-a7d6sOUwA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;

    invoke-interface {p1}, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;->onBTNameChanged()V

    return-void
.end method
