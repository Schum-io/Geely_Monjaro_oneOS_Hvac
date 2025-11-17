.class public final synthetic Lcom/geely/os/car/-$$Lambda$GlyCarImpl$ALaheIXHSs1u8UaAIu3dB6jis7g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/car/-$$Lambda$GlyCarImpl$ALaheIXHSs1u8UaAIu3dB6jis7g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/car/-$$Lambda$GlyCarImpl$ALaheIXHSs1u8UaAIu3dB6jis7g;

    invoke-direct {v0}, Lcom/geely/os/car/-$$Lambda$GlyCarImpl$ALaheIXHSs1u8UaAIu3dB6jis7g;-><init>()V

    sput-object v0, Lcom/geely/os/car/-$$Lambda$GlyCarImpl$ALaheIXHSs1u8UaAIu3dB6jis7g;->INSTANCE:Lcom/geely/os/car/-$$Lambda$GlyCarImpl$ALaheIXHSs1u8UaAIu3dB6jis7g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/geely/os/car/GlyCarImpl;->lambda$covertIntegersToInts$1(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
