.class Lcom/geely/livewallpager/lotties/LottieAnimationView$3;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/livewallpager/lotties/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/geely/livewallpager/lotties/LottieListener<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;->this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 84
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;->this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->access$000(Lcom/geely/livewallpager/lotties/LottieAnimationView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;->this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->access$000(Lcom/geely/livewallpager/lotties/LottieAnimationView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setImageResource(I)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;->this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->access$100(Lcom/geely/livewallpager/lotties/LottieAnimationView;)Lcom/geely/livewallpager/lotties/LottieListener;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->access$200()Lcom/geely/livewallpager/lotties/LottieListener;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;->this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->access$100(Lcom/geely/livewallpager/lotties/LottieAnimationView;)Lcom/geely/livewallpager/lotties/LottieListener;

    move-result-object v0

    .line 91
    :goto_0
    invoke-interface {v0, p1}, Lcom/geely/livewallpager/lotties/LottieListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method
