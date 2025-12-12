.class Lcom/geely/livewallpager/lotties/LottieAnimationView$4;
.super Lcom/geely/livewallpager/lotties/value/LottieValueCallback;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieAnimationView;->addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/value/LottieValueCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

.field final synthetic val$callback:Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .line 865
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$4;->this$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$4;->val$callback:Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;

    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/value/LottieFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$4;->val$callback:Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;

    invoke-interface {v0, p1}, Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;->getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
