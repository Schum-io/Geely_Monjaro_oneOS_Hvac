.class public final synthetic Lcom/geely/os/car/-$$Lambda$GlyCarImpl$FwtkNWRlYIgDqjX1E68KkOcFpEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/car/-$$Lambda$GlyCarImpl$FwtkNWRlYIgDqjX1E68KkOcFpEs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/car/-$$Lambda$GlyCarImpl$FwtkNWRlYIgDqjX1E68KkOcFpEs;

    invoke-direct {v0}, Lcom/geely/os/car/-$$Lambda$GlyCarImpl$FwtkNWRlYIgDqjX1E68KkOcFpEs;-><init>()V

    sput-object v0, Lcom/geely/os/car/-$$Lambda$GlyCarImpl$FwtkNWRlYIgDqjX1E68KkOcFpEs;->INSTANCE:Lcom/geely/os/car/-$$Lambda$GlyCarImpl$FwtkNWRlYIgDqjX1E68KkOcFpEs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/geely/os/car/GlyCarImpl;->lambda$covertIntsToIntegers$0(I)[Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
