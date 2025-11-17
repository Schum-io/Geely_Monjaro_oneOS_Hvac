.class public final synthetic Lcom/geely/livewallpager/lotties/manager/-$$Lambda$ImageAssetManager$y-9yn79QvvwSIlmavu03nwOKUYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/livewallpager/lotties/manager/-$$Lambda$ImageAssetManager$y-9yn79QvvwSIlmavu03nwOKUYo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/livewallpager/lotties/manager/-$$Lambda$ImageAssetManager$y-9yn79QvvwSIlmavu03nwOKUYo;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/manager/-$$Lambda$ImageAssetManager$y-9yn79QvvwSIlmavu03nwOKUYo;-><init>()V

    sput-object v0, Lcom/geely/livewallpager/lotties/manager/-$$Lambda$ImageAssetManager$y-9yn79QvvwSIlmavu03nwOKUYo;->INSTANCE:Lcom/geely/livewallpager/lotties/manager/-$$Lambda$ImageAssetManager$y-9yn79QvvwSIlmavu03nwOKUYo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/geely/livewallpager/lotties/LottieImageAsset;

    invoke-static {p1, p2}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->lambda$clearImageAssetBitmap$0(Ljava/lang/String;Lcom/geely/livewallpager/lotties/LottieImageAsset;)V

    return-void
.end method
