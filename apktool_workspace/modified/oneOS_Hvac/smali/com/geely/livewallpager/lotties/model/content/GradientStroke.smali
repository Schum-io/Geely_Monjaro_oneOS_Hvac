.class public Lcom/geely/livewallpager/lotties/model/content/GradientStroke;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/model/content/ContentModel;


# instance fields
.field private final capType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;

.field private final dashOffset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final endPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

.field private final gradientColor:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/geely/livewallpager/lotties/model/content/GradientType;

.field private final hidden:Z

.field private final joinType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation
.end field

.field private final miterLimit:F

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

.field private final width:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/content/GradientType;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Z)V
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "gradientType",
            "gradientColor",
            "opacity",
            "startPoint",
            "endPoint",
            "width",
            "capType",
            "joinType",
            "miterLimit",
            "lineDashPattern",
            "dashOffset",
            "hidden"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/geely/livewallpager/lotties/model/content/GradientType;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;",
            "Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->gradientType:Lcom/geely/livewallpager/lotties/model/content/GradientType;

    .line 41
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->gradientColor:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;

    .line 42
    iput-object p4, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    .line 43
    iput-object p5, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->startPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    .line 44
    iput-object p6, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->endPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    .line 45
    iput-object p7, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->width:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 46
    iput-object p8, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->capType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;

    .line 47
    iput-object p9, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->joinType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;

    .line 48
    iput p10, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->miterLimit:F

    .line 49
    iput-object p11, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    .line 50
    iput-object p12, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->dashOffset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 51
    iput-boolean p13, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCapType()Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->capType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public getDashOffset()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->dashOffset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getEndPoint()Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->endPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public getGradientColor()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->gradientColor:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;

    return-object v0
.end method

.method public getGradientType()Lcom/geely/livewallpager/lotties/model/content/GradientType;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->gradientType:Lcom/geely/livewallpager/lotties/model/content/GradientType;

    return-object v0
.end method

.method public getJoinType()Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->joinType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public getLineDashPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method public getMiterLimit()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->miterLimit:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public getStartPoint()Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->startPoint:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public getWidth()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->width:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/GradientStroke;->hidden:Z

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

    .line 107
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/content/GradientStrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/geely/livewallpager/lotties/animation/content/GradientStrokeContent;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/GradientStroke;)V

    return-object v0
.end method
