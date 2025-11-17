.class public Lcom/geely/livewallpager/lotties/model/content/ShapeFill;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/model/content/ContentModel;


# instance fields
.field private final color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "fillEnabled",
            "fillType",
            "color",
            "opacity",
            "hidden"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->name:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->fillEnabled:Z

    .line 25
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    .line 26
    iput-object p4, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    .line 27
    iput-object p5, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    .line 28
    iput-boolean p6, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->hidden:Z

    return-void
.end method


# virtual methods
.method public getColor()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->hidden:Z

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

    .line 52
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/content/FillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/geely/livewallpager/lotties/animation/content/FillContent;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/ShapeFill;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeFill;->fillEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
