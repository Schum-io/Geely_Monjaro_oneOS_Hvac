.class public Lcom/geely/livewallpager/lotties/model/layer/TextLayer;
.super Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private final codePointCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lcom/geely/livewallpager/lotties/LottieComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/geely/livewallpager/lotties/model/FontCharacter;",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private strokeColorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private strokeWidthCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final textAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/TextKeyframeAnimation;

.field private textSizeAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private textSizeCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trackingAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trackingCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/Layer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lottieDrawable",
            "layerModel"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/Layer;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer$1;-><init>(Lcom/geely/livewallpager/lotties/model/layer/TextLayer;I)V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer$2;

    invoke-direct {v0, p0, v1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer$2;-><init>(Lcom/geely/livewallpager/lotties/model/layer/TextLayer;I)V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 48
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 75
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    .line 76
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/layer/Layer;->getComposition()Lcom/geely/livewallpager/lotties/LottieComposition;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    .line 78
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/layer/Layer;->getText()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/TextKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/TextKeyframeAnimation;

    .line 79
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/TextKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    .line 82
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/layer/Layer;->getTextProperties()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p2, p1, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    if-eqz p2, :cond_0

    .line 84
    iget-object p2, p1, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 85
    invoke-virtual {p2, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 86
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 89
    iget-object p2, p1, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->stroke:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    if-eqz p2, :cond_1

    .line 90
    iget-object p2, p1, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->stroke:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeColorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 91
    invoke-virtual {p2, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 92
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeColorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 95
    iget-object p2, p1, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_2

    .line 96
    iget-object p2, p1, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeWidthAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 97
    invoke-virtual {p2, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 98
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeWidthAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 101
    iget-object p2, p1, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->tracking:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_3

    .line 102
    iget-object p1, p1, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->tracking:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 103
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 104
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    return-void
.end method

.method private applyJustification(Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "justification",
            "canvas",
            "textLineWidth"
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer$3;->$SwitchMap$com$geely$livewallpager$lotties$model$DocumentData$Justification:[I

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 337
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    neg-float p1, p3

    .line 334
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method private codePointToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "startIndex"
        }
    .end annotation

    .line 412
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 413
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 416
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 417
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 418
    invoke-direct {p0, v2}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->isModifier(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 421
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_0

    .line 426
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2
    if-ge p2, v1, :cond_3

    .line 432
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 433
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    .line 436
    :cond_3
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v3, v4, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p1
.end method

.method private drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "character",
            "paint",
            "canvas"
        }
    .end annotation

    .line 387
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/geely/livewallpager/lotties/model/FontCharacter;Landroid/graphics/Matrix;FLcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "character",
            "parentMatrix",
            "fontScale",
            "documentData",
            "canvas"
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->getContentsForCharacter(Lcom/geely/livewallpager/lotties/model/FontCharacter;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 349
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 350
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v2

    .line 351
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 352
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 353
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    iget v5, p4, Lcom/geely/livewallpager/lotties/model/DocumentData;->baselineShift:F

    neg-float v5, v5

    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 354
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 355
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 356
    iget-boolean v3, p4, Lcom/geely/livewallpager/lotties/model/DocumentData;->strokeOverFill:Z

    if-eqz v3, :cond_0

    .line 357
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 358
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 361
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "character",
            "documentData",
            "canvas"
        }
    .end annotation

    .line 377
    iget-boolean p2, p2, Lcom/geely/livewallpager/lotties/model/DocumentData;->strokeOverFill:Z

    if-eqz p2, :cond_0

    .line 378
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 379
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 381
    :cond_0
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 382
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawFontTextLine(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Canvas;F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "documentData",
            "canvas",
            "parentScale"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 296
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 297
    invoke-direct {p0, p1, v1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->codePointToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 299
    invoke-direct {p0, v2, p2, p3}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawCharacterFromFont(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 300
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    .line 302
    iget v3, p2, Lcom/geely/livewallpager/lotties/model/DocumentData;->tracking:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 303
    iget-object v4, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_0

    .line 304
    invoke-virtual {v4}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_1
    add-float/2addr v3, v4

    goto :goto_2

    .line 305
    :cond_0
    iget-object v4, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_1

    .line 306
    invoke-virtual {v4}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_1

    :cond_1
    :goto_2
    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    .line 309
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "paint",
            "canvas"
        }
    .end annotation

    .line 367
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 373
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawGlyphTextLine(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Matrix;Lcom/geely/livewallpager/lotties/model/Font;Landroid/graphics/Canvas;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "documentData",
            "parentMatrix",
            "font",
            "canvas",
            "parentScale",
            "fontScale"
        }
    .end annotation

    const/4 v0, 0x0

    .line 213
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 215
    invoke-virtual {p4}, Lcom/geely/livewallpager/lotties/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/geely/livewallpager/lotties/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/geely/livewallpager/lotties/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 216
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/livewallpager/lotties/model/FontCharacter;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v2, p0

    move-object v3, v1

    move-object v4, p3

    move v5, p7

    move-object v6, p2

    move-object v7, p5

    .line 221
    invoke-direct/range {v2 .. v7}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/geely/livewallpager/lotties/model/FontCharacter;Landroid/graphics/Matrix;FLcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 222
    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/model/FontCharacter;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p7

    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p6

    .line 224
    iget v2, p2, Lcom/geely/livewallpager/lotties/model/DocumentData;->tracking:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 225
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {v3}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    add-float/2addr v2, v3

    goto :goto_2

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_2

    .line 228
    invoke-virtual {v3}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_2
    :goto_2
    mul-float/2addr v2, p6

    add-float/2addr v1, v2

    const/4 v2, 0x0

    .line 231
    invoke-virtual {p5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private drawTextGlyphs(Lcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Matrix;Lcom/geely/livewallpager/lotties/model/Font;Landroid/graphics/Canvas;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "documentData",
            "parentMatrix",
            "font",
            "canvas"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    .line 170
    iget-object v0, v8, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, v8, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textSizeAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 175
    :cond_1
    iget v0, v9, Lcom/geely/livewallpager/lotties/model/DocumentData;->size:F

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    .line 178
    invoke-static/range {p2 .. p2}, Lcom/geely/livewallpager/lotties/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v12

    .line 180
    iget-object v0, v9, Lcom/geely/livewallpager/lotties/model/DocumentData;->text:Ljava/lang/String;

    .line 183
    iget v1, v9, Lcom/geely/livewallpager/lotties/model/DocumentData;->lineHeight:F

    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v2

    mul-float v13, v1, v2

    .line 186
    invoke-direct {v8, v0}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 187
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v15, :cond_2

    .line 190
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object/from16 v6, p3

    .line 191
    invoke-direct {v8, v1, v6, v11, v12}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/Font;FF)F

    move-result v0

    .line 193
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 196
    iget-object v2, v9, Lcom/geely/livewallpager/lotties/model/DocumentData;->justification:Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    invoke-direct {v8, v2, v10, v0}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->applyJustification(Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v15, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v2, v7

    mul-float/2addr v2, v13

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    .line 201
    invoke-virtual {v10, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move/from16 v16, v7

    move v7, v11

    .line 204
    invoke-direct/range {v0 .. v7}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawGlyphTextLine(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Matrix;Lcom/geely/livewallpager/lotties/model/Font;Landroid/graphics/Canvas;FF)V

    .line 207
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private drawTextWithFont(Lcom/geely/livewallpager/lotties/model/DocumentData;Lcom/geely/livewallpager/lotties/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "documentData",
            "font",
            "parentMatrix",
            "canvas"
        }
    .end annotation

    .line 237
    invoke-static {p3}, Lcom/geely/livewallpager/lotties/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/Font;->getStyle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v1, p1, Lcom/geely/livewallpager/lotties/model/DocumentData;->text:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getTextDelegate()Lcom/geely/livewallpager/lotties/TextDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v2, v1}, Lcom/geely/livewallpager/lotties/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 249
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p2, :cond_2

    .line 250
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 251
    :cond_2
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textSizeAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p2, :cond_3

    .line 252
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 254
    :cond_3
    iget p2, p1, Lcom/geely/livewallpager/lotties/model/DocumentData;->size:F

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr p2, v3

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 258
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    iget p2, p1, Lcom/geely/livewallpager/lotties/model/DocumentData;->lineHeight:F

    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr p2, v2

    .line 264
    invoke-direct {p0, v1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 265
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    .line 268
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 269
    iget-object v5, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 272
    iget-object v6, p1, Lcom/geely/livewallpager/lotties/model/DocumentData;->justification:Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    invoke-direct {p0, v6, p4, v5}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->applyJustification(Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, p2

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    .line 277
    invoke-virtual {p4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    invoke-direct {p0, v4, p1, p4, v0}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawFontTextLine(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Canvas;F)V

    .line 283
    invoke-virtual {p4, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getContentsForCharacter(Lcom/geely/livewallpager/lotties/model/FontCharacter;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "character"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/model/FontCharacter;",
            ")",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 400
    :cond_0
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 404
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/geely/livewallpager/lotties/model/content/ShapeGroup;

    .line 405
    new-instance v5, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;

    iget-object v6, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-direct {v5, v6, p0, v4}, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/ShapeGroup;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/Font;FF)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textLine",
            "font",
            "fontScale",
            "parentScale"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 316
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 317
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 318
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/geely/livewallpager/lotties/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 319
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v3}, Lcom/geely/livewallpager/lotties/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/livewallpager/lotties/model/FontCharacter;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v3, v0

    .line 323
    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/model/FontCharacter;->getWidth()D

    move-result-wide v5

    float-to-double v7, p3

    mul-double/2addr v5, v7

    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v5, v7

    float-to-double v7, p4

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getTextLines(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\r\n"

    const-string v1, "\r"

    .line 289
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 290
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private isModifier(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codePoint"
        }
    .end annotation

    .line 442
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 443
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    .line 444
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 445
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    .line 446
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V
    .locals 2
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

    .line 452
    invoke-super {p0, p1, p2}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    .line 453
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->COLOR:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 454
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->colorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->removeAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    if-nez p2, :cond_1

    .line 459
    iput-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->colorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 461
    :cond_1
    new-instance p1, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->colorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 462
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 463
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->colorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_0

    .line 465
    :cond_2
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    .line 466
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_3

    .line 467
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->removeAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    if-nez p2, :cond_4

    .line 471
    iput-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_0

    .line 473
    :cond_4
    new-instance p1, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 474
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 475
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0

    .line 477
    :cond_5
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    .line 478
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_6

    .line 479
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->removeAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_6
    if-nez p2, :cond_7

    .line 483
    iput-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 485
    :cond_7
    new-instance p1, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 486
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 487
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0

    .line 489
    :cond_8
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    .line 490
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_9

    .line 491
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->removeAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_9
    if-nez p2, :cond_a

    .line 495
    iput-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 497
    :cond_a
    new-instance p1, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 498
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 499
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0

    .line 501
    :cond_b
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    .line 502
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_c

    .line 503
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->removeAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_c
    if-nez p2, :cond_d

    .line 507
    iput-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 509
    :cond_d
    new-instance p1, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 510
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 511
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_e
    :goto_0
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5
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

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    iget-object p3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/LottieDrawable;->useTextGlyphs()Z

    move-result p3

    if-nez p3, :cond_0

    .line 119
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 121
    :cond_0
    iget-object p3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->textAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/animation/keyframe/TextKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/geely/livewallpager/lotties/model/DocumentData;

    .line 122
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getFonts()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p3, Lcom/geely/livewallpager/lotties/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/livewallpager/lotties/model/Font;

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->colorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_2

    .line 130
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->colorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_3

    .line 132
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v2, p3, Lcom/geely/livewallpager/lotties/model/DocumentData;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_4

    .line 138
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeColorAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_5

    .line 140
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 142
    :cond_5
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v2, p3, Lcom/geely/livewallpager/lotties/model/DocumentData;->strokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    :goto_1
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->transform:Lcom/geely/livewallpager/lotties/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    const/16 v2, 0x64

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->transform:Lcom/geely/livewallpager/lotties/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    mul-int/lit16 v1, v1, 0xff

    .line 145
    div-int/2addr v1, v2

    .line 146
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_7

    .line 150
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 151
    :cond_7
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokeWidthAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_8

    .line 152
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 154
    :cond_8
    invoke-static {p2}, Lcom/geely/livewallpager/lotties/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    .line 155
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v3, p3, Lcom/geely/livewallpager/lotties/model/DocumentData;->strokeWidth:F

    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    :goto_3
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->useTextGlyphs()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 159
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawTextGlyphs(Lcom/geely/livewallpager/lotties/model/DocumentData;Landroid/graphics/Matrix;Lcom/geely/livewallpager/lotties/model/Font;Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 161
    :cond_9
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->drawTextWithFont(Lcom/geely/livewallpager/lotties/model/DocumentData;Lcom/geely/livewallpager/lotties/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 164
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1
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

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 112
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {p3}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
