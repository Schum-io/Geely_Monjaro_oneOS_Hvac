.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$_QJGihotwE58J2qaQDvFexNiRHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$_QJGihotwE58J2qaQDvFexNiRHo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$_QJGihotwE58J2qaQDvFexNiRHo;

    invoke-direct {v0}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$_QJGihotwE58J2qaQDvFexNiRHo;-><init>()V

    sput-object v0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$_QJGihotwE58J2qaQDvFexNiRHo;->INSTANCE:Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$_QJGihotwE58J2qaQDvFexNiRHo;

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

    check-cast p1, Lcom/geely/os/bt/IGlyA2dpCallback;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl$3;->lambda$onA2dpServiceReady$0(Lcom/geely/os/bt/IGlyA2dpCallback;)V

    return-void
.end method
