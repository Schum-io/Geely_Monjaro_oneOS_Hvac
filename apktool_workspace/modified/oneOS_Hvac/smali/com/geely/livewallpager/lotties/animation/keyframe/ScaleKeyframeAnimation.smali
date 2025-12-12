.class public Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;
.super Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation<",
        "Lcom/geely/livewallpager/lotties/value/ScaleXY;",
        ">;"
    }
.end annotation


# instance fields
.field private final scaleXY:Lcom/geely/livewallpager/lotties/value/ScaleXY;


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
            "Lcom/geely/livewallpager/lotties/value/ScaleXY;",
            ">;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 11
    new-instance p1, Lcom/geely/livewallpager/lotties/value/ScaleXY;

    invoke-direct {p1}, Lcom/geely/livewallpager/lotties/value/ScaleXY;-><init>()V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/geely/livewallpager/lotties/value/ScaleXY;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Lcom/geely/livewallpager/lotties/value/ScaleXY;
    .locals 10
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
            "Lcom/geely/livewallpager/lotties/value/ScaleXY;",
            ">;F)",
            "Lcom/geely/livewallpager/lotties/value/ScaleXY;"
        }
    .end annotation

    .line 18
    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/geely/livewallpager/lotties/value/ScaleXY;

    .line 22
    iget-object v1, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/geely/livewallpager/lotties/value/ScaleXY;

    .line 24
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;->valueCallback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;->valueCallback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    iget v2, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startFrame:F

    iget-object p1, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 28
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v7

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;->getProgress()F

    move-result v8

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/livewallpager/lotties/value/ScaleXY;

    if-eqz p1, :cond_0

    return-object p1

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/geely/livewallpager/lotties/value/ScaleXY;

    .line 35
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/value/ScaleXY;->getScaleX()F

    move-result v1

    invoke-virtual {v9}, Lcom/geely/livewallpager/lotties/value/ScaleXY;->getScaleX()F

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result v1

    .line 36
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/value/ScaleXY;->getScaleY()F

    move-result v0

    invoke-virtual {v9}, Lcom/geely/livewallpager/lotties/value/ScaleXY;->getScaleY()F

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result p2

    .line 34
    invoke-virtual {p1, v1, p2}, Lcom/geely/livewallpager/lotties/value/ScaleXY;->set(FF)V

    .line 38
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/geely/livewallpager/lotties/value/ScaleXY;

    return-object p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;->getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Lcom/geely/livewallpager/lotties/value/ScaleXY;

    move-result-object p1

    return-object p1
.end method
