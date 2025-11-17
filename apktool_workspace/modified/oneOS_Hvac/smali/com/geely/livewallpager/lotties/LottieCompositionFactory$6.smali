.class Lcom/geely/livewallpager/lotties/LottieCompositionFactory$6;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
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
.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$json",
            "val$cacheKey"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$6;->val$json:Ljava/lang/String;

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$6;->val$cacheKey:Ljava/lang/String;

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

    .line 335
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$6;->val$json:Ljava/lang/String;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$6;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$6;->call()Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object v0

    return-object v0
.end method
