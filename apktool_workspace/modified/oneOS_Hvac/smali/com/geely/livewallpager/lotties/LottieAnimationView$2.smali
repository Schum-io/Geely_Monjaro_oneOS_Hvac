.class Lcom/geely/livewallpager/lotties/LottieAnimationView$2;
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
        "Lcom/geely/livewallpager/lotties/LottieComposition;",
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

    .line 78
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$2;->this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$2;->this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setComposition(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "composition"
        }
    .end annotation

    .line 78
    check-cast p1, Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView$2;->onResult(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    return-void
.end method
