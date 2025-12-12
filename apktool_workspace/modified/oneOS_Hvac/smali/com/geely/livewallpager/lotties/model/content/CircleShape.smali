.class public Lcom/geely/livewallpager/lotties/model/content/CircleShape;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/model/content/ContentModel;


# instance fields
.field private final hidden:Z

.field private final isReversed:Z

.field private final name:Ljava/lang/String;

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

.field private final size:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "position",
            "size",
            "isReversed",
            "hidden"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;",
            "ZZ)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->position:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;

    .line 23
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->size:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    .line 24
    iput-boolean p4, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->isReversed:Z

    .line 25
    iput-boolean p5, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->hidden:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->name:Ljava/lang/String;

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

    .line 37
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->position:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;

    return-object v0
.end method

.method public getSize()Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->size:Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->hidden:Z

    return v0
.end method

.method public isReversed()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;->isReversed:Z

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

    .line 29
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/content/EllipseContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/geely/livewallpager/lotties/animation/content/EllipseContent;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/CircleShape;)V

    return-object v0
.end method
