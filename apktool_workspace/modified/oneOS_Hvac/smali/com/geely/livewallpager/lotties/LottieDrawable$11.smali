.class Lcom/geely/livewallpager/lotties/LottieDrawable$11;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field final synthetic val$endMarkerName:Ljava/lang/String;

.field final synthetic val$playEndMarkerStartFrame:Z

.field final synthetic val$startMarkerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$startMarkerName",
            "val$endMarkerName",
            "val$playEndMarkerStartFrame"
        }
    .end annotation

    .line 613
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$11;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$11;->val$startMarkerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$11;->val$endMarkerName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$11;->val$playEndMarkerStartFrame:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 616
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$11;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$11;->val$startMarkerName:Ljava/lang/String;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$11;->val$endMarkerName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$11;->val$playEndMarkerStartFrame:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
