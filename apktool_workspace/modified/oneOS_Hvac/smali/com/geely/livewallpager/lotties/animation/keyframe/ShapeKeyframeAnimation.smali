.class public Lcom/geely/livewallpager/lotties/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
        "Lcom/geely/livewallpager/lotties/model/content/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempPath:Landroid/graphics/Path;

.field private final tempShapeData:Lcom/geely/livewallpager/lotties/model/content/ShapeData;


# direct methods
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
            "Lcom/geely/livewallpager/lotties/model/content/ShapeData;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    new-instance p1, Lcom/geely/livewallpager/lotties/model/content/ShapeData;

    invoke-direct {p1}, Lcom/geely/livewallpager/lotties/model/content/ShapeData;-><init>()V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/geely/livewallpager/lotties/model/content/ShapeData;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyframe",
            "keyframeProgress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/value/Keyframe<",
            "Lcom/geely/livewallpager/lotties/model/content/ShapeData;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 20
    iget-object v0, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/geely/livewallpager/lotties/model/content/ShapeData;

    .line 21
    iget-object p1, p1, Lcom/geely/livewallpager/lotties/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/geely/livewallpager/lotties/model/content/ShapeData;

    .line 23
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/geely/livewallpager/lotties/model/content/ShapeData;

    invoke-virtual {v1, v0, p1, p2}, Lcom/geely/livewallpager/lotties/model/content/ShapeData;->interpolateBetween(Lcom/geely/livewallpager/lotties/model/content/ShapeData;Lcom/geely/livewallpager/lotties/model/content/ShapeData;F)V

    .line 24
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/geely/livewallpager/lotties/model/content/ShapeData;

    iget-object p2, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->getPathFromData(Lcom/geely/livewallpager/lotties/model/content/ShapeData;Landroid/graphics/Path;)V

    .line 25
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "keyframe",
            "keyframeProgress"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/animation/keyframe/ShapeKeyframeAnimation;->getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method
