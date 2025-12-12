.class Lcom/geely/livewallpager/lotties/LottieTask$LottieFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/livewallpager/lotties/LottieTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LottieFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/geely/livewallpager/lotties/LottieResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieTask;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieTask$LottieFutureTask;->this$0:Lcom/geely/livewallpager/lotties/LottieTask;

    .line 164
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieTask$LottieFutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieTask$LottieFutureTask;->this$0:Lcom/geely/livewallpager/lotties/LottieTask;

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieTask$LottieFutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/livewallpager/lotties/LottieResult;

    invoke-static {v0, v1}, Lcom/geely/livewallpager/lotties/LottieTask;->access$300(Lcom/geely/livewallpager/lotties/LottieTask;Lcom/geely/livewallpager/lotties/LottieResult;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieTask$LottieFutureTask;->this$0:Lcom/geely/livewallpager/lotties/LottieTask;

    new-instance v2, Lcom/geely/livewallpager/lotties/LottieResult;

    invoke-direct {v2, v0}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/geely/livewallpager/lotties/LottieTask;->access$300(Lcom/geely/livewallpager/lotties/LottieTask;Lcom/geely/livewallpager/lotties/LottieResult;)V

    :goto_1
    return-void
.end method
