.class public Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;
.super Lcom/geely/livewallpager/lotties/model/animatable/BaseAnimatableValue;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/model/animatable/BaseAnimatableValue<",
        "Lcom/geely/livewallpager/lotties/model/content/GradientColor;",
        "Lcom/geely/livewallpager/lotties/model/content/GradientColor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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

    .line 14
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/geely/livewallpager/lotties/model/content/GradientColor;",
            "Lcom/geely/livewallpager/lotties/model/content/GradientColor;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/keyframe/GradientColorKeyframeAnimation;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/GradientColorKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/geely/livewallpager/lotties/model/animatable/BaseAnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isStatic()Z
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/geely/livewallpager/lotties/model/animatable/BaseAnimatableValue;->isStatic()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/geely/livewallpager/lotties/model/animatable/BaseAnimatableValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
