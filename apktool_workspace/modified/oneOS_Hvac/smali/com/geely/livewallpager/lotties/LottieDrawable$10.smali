.class Lcom/geely/livewallpager/lotties/LottieDrawable$10;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field final synthetic val$markerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$markerName"
        }
    .end annotation

    .line 587
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$10;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$10;->val$markerName:Ljava/lang/String;

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

    .line 590
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$10;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$10;->val$markerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    return-void
.end method
