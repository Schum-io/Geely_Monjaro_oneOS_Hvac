.class public Lcom/geely/livewallpager/lotties/animation/content/FillContent;
.super Ljava/lang/Object;
.source "FillContent.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/animation/content/DrawingContent;
.implements Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/geely/livewallpager/lotties/animation/content/KeyPathElementContent;


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

.field private final lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/ShapeFill;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "lottieDrawable",
            "layer",
            "fill"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 32
    new-instance v1, Lcom/geely/livewallpager/lotties/animation/LPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/geely/livewallpager/lotties/animation/LPaint;-><init>(I)V

    iput-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paths:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->layer:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;

    .line 44
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->name:Ljava/lang/String;

    .line 45
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->isHidden()Z

    move-result v1

    iput-boolean v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->hidden:Z

    .line 46
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    .line 47
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->getColor()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->getOpacity()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 55
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->getColor()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 56
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 57
    invoke-virtual {p2, p1}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    .line 58
    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->getOpacity()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->opacityAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 60
    invoke-virtual {p2, p1}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 49
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->opacityAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

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

    .line 126
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    goto :goto_0

    .line 128
    :cond_0
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->opacityAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    goto :goto_0

    .line 130
    :cond_1
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    .line 131
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_2

    .line 132
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->layer:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->removeAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 138
    :cond_3
    new-instance p1, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 140
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 141
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->layer:Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;

    iget-object p2, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4
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

    .line 81
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    .line 84
    invoke-static {v0}, Lcom/geely/livewallpager/lotties/L;->beginSection(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    check-cast v2, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    .line 86
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->opacityAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 87
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->clamp(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget-object p3, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->colorFilterAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_1

    .line 90
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    :cond_1
    iget-object p3, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 94
    :goto_0
    iget-object p3, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_2

    .line 95
    iget-object p3, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/livewallpager/lotties/animation/content/PathContent;

    invoke-interface {v1}, Lcom/geely/livewallpager/lotties/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    invoke-static {v0}, Lcom/geely/livewallpager/lotties/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outBounds",
            "parentMatrix",
            "applyParents"
        }
    .end annotation

    .line 104
    iget-object p3, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/livewallpager/lotties/animation/content/PathContent;

    invoke-interface {v2}, Lcom/geely/livewallpager/lotties/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 110
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public resolveKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;ILjava/util/List;Lcom/geely/livewallpager/lotties/model/KeyPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyPath",
            "depth",
            "accumulator",
            "currentPartialKeyPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            ">;",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-static {p1, p2, p3, p4, p0}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->resolveKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;ILjava/util/List;Lcom/geely/livewallpager/lotties/model/KeyPath;Lcom/geely/livewallpager/lotties/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentsBefore",
            "contentsAfter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 69
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/livewallpager/lotties/animation/content/Content;

    .line 70
    instance-of v1, v0, Lcom/geely/livewallpager/lotties/animation/content/PathContent;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;->paths:Ljava/util/List;

    check-cast v0, Lcom/geely/livewallpager/lotties/animation/content/PathContent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
