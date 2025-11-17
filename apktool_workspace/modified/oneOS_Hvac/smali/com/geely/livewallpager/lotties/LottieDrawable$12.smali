.class Lcom/geely/livewallpager/lotties/LottieDrawable$12;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field final synthetic val$maxFrame:I

.field final synthetic val$minFrame:I


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$minFrame",
            "val$maxFrame"
        }
    .end annotation

    .line 642
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$12;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iput p2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$12;->val$minFrame:I

    iput p3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$12;->val$maxFrame:I

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

    .line 645
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$12;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iget v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$12;->val$minFrame:I

    iget v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$12;->val$maxFrame:I

    invoke-virtual {p1, v0, v1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method
