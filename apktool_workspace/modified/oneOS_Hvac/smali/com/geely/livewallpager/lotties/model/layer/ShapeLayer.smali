.class public Lcom/geely/livewallpager/lotties/model/layer/ShapeLayer;
.super Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;
.source "ShapeLayer.java"


# instance fields
.field private final contentGroup:Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/Layer;)V
    .locals 3
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

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/Layer;)V

    .line 24
    new-instance v0, Lcom/geely/livewallpager/lotties/model/content/ShapeGroup;

    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/layer/Layer;->getShapes()Ljava/util/List;

    move-result-object p2

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/geely/livewallpager/lotties/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 25
    new-instance p2, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;

    invoke-direct {p2, p1, p0, v0}, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/ShapeGroup;)V

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/ShapeLayer;->contentGroup:Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
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

    .line 30
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/ShapeLayer;->contentGroup:Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

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

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 35
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/model/layer/ShapeLayer;->contentGroup:Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/ShapeLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method protected resolveChildKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;ILjava/util/List;Lcom/geely/livewallpager/lotties/model/KeyPath;)V
    .locals 1
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

    .line 41
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/layer/ShapeLayer;->contentGroup:Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/geely/livewallpager/lotties/animation/content/ContentGroup;->resolveKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;ILjava/util/List;Lcom/geely/livewallpager/lotties/model/KeyPath;)V

    return-void
.end method
