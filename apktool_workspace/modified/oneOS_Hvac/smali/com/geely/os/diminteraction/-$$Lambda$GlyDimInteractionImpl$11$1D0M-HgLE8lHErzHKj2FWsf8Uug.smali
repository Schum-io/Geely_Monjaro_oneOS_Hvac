.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$1D0M-HgLE8lHErzHKj2FWsf8Uug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$1D0M-HgLE8lHErzHKj2FWsf8Uug;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$1D0M-HgLE8lHErzHKj2FWsf8Uug;

    invoke-direct {v0}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$1D0M-HgLE8lHErzHKj2FWsf8Uug;-><init>()V

    sput-object v0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$1D0M-HgLE8lHErzHKj2FWsf8Uug;->INSTANCE:Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$1D0M-HgLE8lHErzHKj2FWsf8Uug;

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

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->lambda$onSwitchCall$6(Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V

    return-void
.end method
