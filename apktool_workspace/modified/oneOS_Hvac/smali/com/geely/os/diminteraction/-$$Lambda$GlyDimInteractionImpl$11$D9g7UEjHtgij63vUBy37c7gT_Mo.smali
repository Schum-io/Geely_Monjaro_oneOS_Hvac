.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$D9g7UEjHtgij63vUBy37c7gT_Mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$D9g7UEjHtgij63vUBy37c7gT_Mo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$D9g7UEjHtgij63vUBy37c7gT_Mo;

    invoke-direct {v0}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$D9g7UEjHtgij63vUBy37c7gT_Mo;-><init>()V

    sput-object v0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$D9g7UEjHtgij63vUBy37c7gT_Mo;->INSTANCE:Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$D9g7UEjHtgij63vUBy37c7gT_Mo;

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

    check-cast p1, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->lambda$onCallInfoUpdateRequired$4(Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V

    return-void
.end method
