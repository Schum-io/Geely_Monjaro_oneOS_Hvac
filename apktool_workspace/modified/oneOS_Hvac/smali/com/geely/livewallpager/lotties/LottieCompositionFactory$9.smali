.class Lcom/geely/livewallpager/lotties/LottieCompositionFactory$9;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/geely/livewallpager/lotties/LottieResult<",
        "Lcom/geely/livewallpager/lotties/LottieComposition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cachedComposition:Lcom/geely/livewallpager/lotties/LottieComposition;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$cachedComposition"
        }
    .end annotation

    .line 481
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$9;->val$cachedComposition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieResult;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$9;->val$cachedComposition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-direct {v0, v1}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$9;->call()Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object v0

    return-object v0
.end method
