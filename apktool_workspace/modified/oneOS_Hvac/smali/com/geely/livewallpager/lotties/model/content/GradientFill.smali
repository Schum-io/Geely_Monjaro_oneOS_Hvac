.class public Lcom/geely/livewallpager/lotties/model/content/GradientFill;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/model/content/ContentModel;


# instance fields
.field private final endPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final gradientColor:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/geely/livewallpager/lotties/model/content/GradientType;

.field private final hidden:Z

.field private final highlightAngle:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final highlightLength:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "gradientType",
            "fillType",
            "gradientColor",
            "opacity",
            "startPoint",
            "endPoint",
            "highlightLength",
            "highlightAngle",
            "hidden"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->gradientType:Lcom/geely/livewallpager/lotties/model/content/GradientType;

    .line 34
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    .line 35
    iput-object p4, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->gradientColor:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;

    .line 36
    iput-object p5, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    .line 37
    iput-object p6, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->startPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    .line 38
    iput-object p7, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->endPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    .line 39
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->name:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->highlightLength:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 41
    iput-object p9, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->highlightAngle:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 42
    iput-boolean p10, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->hidden:Z

    return-void
.end method


# virtual methods
.method public getEndPoint()Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->endPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public getGradientColor()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->gradientColor:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;

    return-object v0
.end method

.method public getGradientType()Lcom/geely/livewallpager/lotties/model/content/GradientType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->gradientType:Lcom/geely/livewallpager/lotties/model/content/GradientType;

    return-object v0
.end method

.method getHighlightAngle()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->highlightAngle:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method getHighlightLength()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->highlightLength:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public getStartPoint()Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->startPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientFill;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;)Lcom/geely/livewallpager/lotties/animation/content/Content;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "layer"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/content/GradientFillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/geely/livewallpager/lotties/animation/content/GradientFillContent;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/GradientFill;)V

    return-object v0
.end method
