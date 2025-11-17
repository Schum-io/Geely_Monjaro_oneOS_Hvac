.class public Lcom/geely/livewallpager/lotties/model/content/PolystarShape;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/livewallpager/lotties/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final innerRadius:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final innerRoundedness:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final outerRadius:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final outerRoundedness:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final points:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final position:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final type:Lcom/geely/livewallpager/lotties/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/content/PolystarShape$Type;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Z)V
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
            "type",
            "points",
            "position",
            "rotation",
            "innerRadius",
            "outerRadius",
            "innerRoundedness",
            "outerRoundedness",
            "hidden"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/geely/livewallpager/lotties/model/content/PolystarShape$Type;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->name:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->type:Lcom/geely/livewallpager/lotties/model/content/PolystarShape$Type;

    .line 51
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->points:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 52
    iput-object p4, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->position:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;

    .line 53
    iput-object p5, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->rotation:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 54
    iput-object p6, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->innerRadius:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 55
    iput-object p7, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->outerRadius:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 56
    iput-object p8, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->innerRoundedness:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 57
    iput-object p9, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->outerRoundedness:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 58
    iput-boolean p10, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->hidden:Z

    return-void
.end method


# virtual methods
.method public getInnerRadius()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->innerRadius:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getInnerRoundedness()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->innerRoundedness:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOuterRadius()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->outerRadius:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getOuterRoundedness()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->outerRoundedness:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getPoints()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->points:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getPosition()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->position:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;

    return-object v0
.end method

.method public getRotation()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->rotation:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getType()Lcom/geely/livewallpager/lotties/model/content/PolystarShape$Type;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->type:Lcom/geely/livewallpager/lotties/model/content/PolystarShape$Type;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/PolystarShape;->hidden:Z

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

    .line 102
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/content/PolystarContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/geely/livewallpager/lotties/animation/content/PolystarContent;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/PolystarShape;)V

    return-object v0
.end method
