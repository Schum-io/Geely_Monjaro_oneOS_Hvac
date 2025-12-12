.class Lcom/geely/livewallpager/lotties/model/layer/BaseLayer$1;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->setupInOutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer$1;->this$0:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer$1;->this$0:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->access$000(Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;)Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->access$100(Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Z)V

    return-void
.end method
