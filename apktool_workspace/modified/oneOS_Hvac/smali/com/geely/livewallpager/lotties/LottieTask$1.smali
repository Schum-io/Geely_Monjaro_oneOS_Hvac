.class Lcom/geely/livewallpager/lotties/LottieTask$1;
.super Ljava/lang/Object;
.source "LottieTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieTask;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieTask;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieTask$1;->this$0:Lcom/geely/livewallpager/lotties/LottieTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieTask$1;->this$0:Lcom/geely/livewallpager/lotties/LottieTask;

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/LottieTask;->access$000(Lcom/geely/livewallpager/lotties/LottieTask;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieTask$1;->this$0:Lcom/geely/livewallpager/lotties/LottieTask;

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/LottieTask;->access$000(Lcom/geely/livewallpager/lotties/LottieTask;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieTask$1;->this$0:Lcom/geely/livewallpager/lotties/LottieTask;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/livewallpager/lotties/LottieTask;->access$100(Lcom/geely/livewallpager/lotties/LottieTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieTask$1;->this$0:Lcom/geely/livewallpager/lotties/LottieTask;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/livewallpager/lotties/LottieTask;->access$200(Lcom/geely/livewallpager/lotties/LottieTask;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
