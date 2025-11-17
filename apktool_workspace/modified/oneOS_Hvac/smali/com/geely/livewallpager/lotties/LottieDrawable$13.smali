.class Lcom/geely/livewallpager/lotties/LottieDrawable$13;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxProgress(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field final synthetic val$maxProgress:F

.field final synthetic val$minProgress:F


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$minProgress",
            "val$maxProgress"
        }
    .end annotation

    .line 662
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$13;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iput p2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$13;->val$minProgress:F

    iput p3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$13;->val$maxProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 665
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$13;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iget v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$13;->val$minProgress:F

    iget v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$13;->val$maxProgress:F

    invoke-virtual {p1, v0, v1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxProgress(FF)V

    return-void
.end method
