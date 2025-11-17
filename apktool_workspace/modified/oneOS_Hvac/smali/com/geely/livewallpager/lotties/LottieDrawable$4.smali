.class Lcom/geely/livewallpager/lotties/LottieDrawable$4;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field final synthetic val$minFrame:I


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$minFrame"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$4;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iput p2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$4;->val$minFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 468
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$4;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iget v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$4;->val$minFrame:I

    invoke-virtual {p1, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinFrame(I)V

    return-void
.end method
