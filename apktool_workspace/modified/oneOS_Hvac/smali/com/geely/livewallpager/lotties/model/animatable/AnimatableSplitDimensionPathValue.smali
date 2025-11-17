.class public Lcom/geely/livewallpager/lotties/model/animatable/AnimatableSplitDimensionPathValue;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final animatableXDimension:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final animatableYDimension:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animatableXDimension",
            "animatableYDimension"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 19
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 34
    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/geely/livewallpager/lotties/animation/keyframe/SplitDimensionPathKeyframeAnimation;-><init>(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isStatic()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
