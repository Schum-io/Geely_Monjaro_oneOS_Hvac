.class public Lcom/geely/livewallpager/lotties/model/animatable/AnimatableScaleValue;
.super Lcom/geely/livewallpager/lotties/model/animatable/BaseAnimatableValue;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/model/animatable/BaseAnimatableValue<",
        "Lcom/geely/livewallpager/lotties/value/ScaleXY;",
        "Lcom/geely/livewallpager/lotties/value/ScaleXY;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/geely/livewallpager/lotties/value/ScaleXY;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/geely/livewallpager/lotties/value/ScaleXY;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableScaleValue;-><init>(Lcom/geely/livewallpager/lotties/value/ScaleXY;)V

    return-void
.end method

.method public constructor <init>(Lcom/geely/livewallpager/lotties/value/ScaleXY;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/model/animatable/BaseAnimatableValue;-><init>(Ljava/lang/Object;)V

    return-void
.end method

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

    .line 21
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
            "Lcom/geely/livewallpager/lotties/value/ScaleXY;",
            "Lcom/geely/livewallpager/lotties/value/ScaleXY;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableScaleValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/ScaleKeyframeAnimation;-><init>(Ljava/util/List;)V

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
