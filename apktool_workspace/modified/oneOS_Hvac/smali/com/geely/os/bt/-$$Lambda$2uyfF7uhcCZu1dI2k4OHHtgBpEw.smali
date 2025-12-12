.class public final synthetic Lcom/geely/os/bt/-$$Lambda$2uyfF7uhcCZu1dI2k4OHHtgBpEw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/bt/-$$Lambda$2uyfF7uhcCZu1dI2k4OHHtgBpEw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/bt/-$$Lambda$2uyfF7uhcCZu1dI2k4OHHtgBpEw;

    invoke-direct {v0}, Lcom/geely/os/bt/-$$Lambda$2uyfF7uhcCZu1dI2k4OHHtgBpEw;-><init>()V

    sput-object v0, Lcom/geely/os/bt/-$$Lambda$2uyfF7uhcCZu1dI2k4OHHtgBpEw;->INSTANCE:Lcom/geely/os/bt/-$$Lambda$2uyfF7uhcCZu1dI2k4OHHtgBpEw;

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

    invoke-interface {p1}, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;->onScanFinished()V

    return-void
.end method
