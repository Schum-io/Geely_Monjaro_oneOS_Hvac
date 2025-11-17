.class public Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;
.super Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation;
.source "FloatKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation<",
        "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFloatValue()F
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->getCurrentKeyframe()Lcom/geely/livewallpager/lotties/value/Keyframe;

    move-result-object v0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->getFloatValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)F

    move-result v0

    return v0
.end method

.method getFloatValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)F
    .locals 9
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
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .line 22
    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->valueCallback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->valueCallback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    iget v2, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startFrame:F

    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startValue:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Float;

    .line 30
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v7

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->getProgress()F

    move-result v8

    move v6, p2

    .line 28
    invoke-virtual/range {v1 .. v8}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/Keyframe;->getStartValueFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/Keyframe;->getEndValueFloat()F

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    return p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Ljava/lang/Float;
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
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->getFloatValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/FloatKeyframeAnimation;->getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
