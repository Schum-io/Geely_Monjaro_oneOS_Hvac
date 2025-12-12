.class public Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;,
        Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final capType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;

.field private final color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

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

.field private final offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

.field private final width:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;FZ)V
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
            "offset",
            "lineDashPattern",
            "color",
            "opacity",
            "width",
            "capType",
            "joinType",
            "miterLimit",
            "hidden"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;",
            "Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;",
            "FZ)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->name:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 70
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    .line 71
    iput-object p4, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    .line 72
    iput-object p5, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    .line 73
    iput-object p6, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->width:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 74
    iput-object p7, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->capType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;

    .line 75
    iput-object p8, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->joinType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;

    .line 76
    iput p9, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->miterLimit:F

    .line 77
    iput-boolean p10, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCapType()Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->capType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public getColor()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    return-object v0
.end method

.method public getDashOffset()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getJoinType()Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->joinType:Lcom/geely/livewallpager/lotties/model/content/ShapeStroke$LineJoinType;

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

    .line 101
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method public getMiterLimit()F
    .locals 1

    .line 117
    iget v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->miterLimit:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public getWidth()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->width:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;->hidden:Z

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

    .line 81
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/geely/livewallpager/lotties/animation/content/StrokeContent;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/ShapeStroke;)V

    return-object v0
.end method
