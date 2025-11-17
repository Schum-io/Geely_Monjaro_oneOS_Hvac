.class public Lcom/geely/livewallpager/lotties/animation/keyframe/GradientColorKeyframeAnimation;
.super Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation<",
        "Lcom/geely/livewallpager/lotties/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/geely/livewallpager/lotties/model/content/GradientColor;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyframes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/value/Keyframe<",
            "Lcom/geely/livewallpager/lotties/model/content/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/livewallpager/lotties/value/Keyframe;

    iget-object p1, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p1, Lcom/geely/livewallpager/lotties/model/content/GradientColor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/content/GradientColor;->getSize()I

    move-result v0

    .line 15
    :goto_0
    new-instance p1, Lcom/geely/livewallpager/lotties/model/content/GradientColor;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lcom/geely/livewallpager/lotties/model/content/GradientColor;-><init>([F[I)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/geely/livewallpager/lotties/model/content/GradientColor;

    return-void
.end method


# virtual methods
.method getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Lcom/geely/livewallpager/lotties/model/content/GradientColor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyframe",
            "keyframeProgress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/value/Keyframe<",
            "Lcom/geely/livewallpager/lotties/model/content/GradientColor;",
            ">;F)",
            "Lcom/geely/livewallpager/lotties/model/content/GradientColor;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/geely/livewallpager/lotties/model/content/GradientColor;

    iget-object v1, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/geely/livewallpager/lotties/model/content/GradientColor;

    iget-object p1, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/geely/livewallpager/lotties/model/content/GradientColor;

    invoke-virtual {v0, v1, p1, p2}, Lcom/geely/livewallpager/lotties/model/content/GradientColor;->lerp(Lcom/geely/livewallpager/lotties/model/content/GradientColor;Lcom/geely/livewallpager/lotties/model/content/GradientColor;F)V

    .line 20
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/geely/livewallpager/lotties/model/content/GradientColor;

    return-object p1
.end method

.method bridge synthetic getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "keyframe",
            "keyframeProgress"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/GradientColorKeyframeAnimation;->getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Lcom/geely/livewallpager/lotties/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
