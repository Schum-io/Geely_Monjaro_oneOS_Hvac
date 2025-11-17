.class public Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;
.super Lcom/geely/livewallpager/lotties/animation/content/BaseStrokeContent;
.source "StrokeContent.java"


# instance fields
.field private final colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final layer:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "lottieDrawable",
            "layer",
            "stroke"
        }
    .end annotation

    .line 28
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->getCapType()Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 29
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->getJoinType()Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->getMiterLimit()F

    move-result v6

    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->getOpacity()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    .line 30
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->getWidth()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    move-result-object v8

    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->getDashOffset()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 28
    invoke-direct/range {v1 .. v10}, Lcom/geely/livewallpager/lotties/animation/content/BaseStrokeContent;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;)V

    .line 31
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->layer:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;

    .line 32
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->isHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->hidden:Z

    .line 34
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->getColor()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 35
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    invoke-virtual {p2, p1}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/geely/livewallpager/lotties/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2}, Lcom/geely/livewallpager/lotties/animation/content/BaseStrokeContent;->addValueCallback(Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    .line 58
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 59
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 61
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->layer:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->removeAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 68
    :cond_2
    new-instance p1, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 70
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 71
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->layer:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;

    iget-object p2, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "parentMatrix",
            "parentAlpha"
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    check-cast v1, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 47
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;->name:Ljava/lang/String;

    return-object v0
.end method
