.class public Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;
.super Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation;
.source "ColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getIntValue()I
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->getCurrentKeyframe()Lcom/geely/livewallpager/lotties/value/Keyframe;

    move-result-object v0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->getIntValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)I

    move-result v0

    return v0
.end method

.method public getIntValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)I
    .locals 11
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
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 24
    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 28
    iget-object v1, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->valueCallback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    if-eqz v2, :cond_0

    .line 32
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->valueCallback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    iget v4, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startFrame:F

    iget-object p1, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v9

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->getProgress()F

    move-result v10

    move v8, p2

    .line 32
    invoke-virtual/range {v3 .. v10}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    invoke-static {p2, p1, v2}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    invoke-static {p1, v0, v1}, Lcom/geely/livewallpager/lotties/utils/GammaEvaluator;->evaluate(FII)I

    move-result p1

    return p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Ljava/lang/Integer;
    .locals 0
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
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->getIntValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
