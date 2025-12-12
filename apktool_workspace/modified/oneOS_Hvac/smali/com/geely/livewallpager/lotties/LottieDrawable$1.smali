.class Lcom/geely/livewallpager/lotties/LottieDrawable$1;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/livewallpager/lotties/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$1;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$1;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-static {p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->access$000(Lcom/geely/livewallpager/lotties/LottieDrawable;)Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$1;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-static {p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->access$000(Lcom/geely/livewallpager/lotties/LottieDrawable;)Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$1;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->access$100(Lcom/geely/livewallpager/lotties/LottieDrawable;)Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;->setProgress(F)V

    :cond_0
    return-void
.end method
