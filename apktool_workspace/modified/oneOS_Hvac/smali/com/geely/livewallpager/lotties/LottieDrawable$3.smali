.class Lcom/geely/livewallpager/lotties/LottieDrawable$3;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieDrawable;->resumeAnimation()V
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

    .line 442
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$3;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 445
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$3;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->resumeAnimation()V

    return-void
.end method
