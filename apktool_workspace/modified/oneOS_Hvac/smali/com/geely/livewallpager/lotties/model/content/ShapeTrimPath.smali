.class public Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;
    }
.end annotation


# instance fields
.field private final end:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final start:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final type:Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Z)V
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
            "type",
            "start",
            "end",
            "offset",
            "hidden"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->type:Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;

    .line 38
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->start:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 39
    iput-object p4, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->end:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 40
    iput-object p5, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 41
    iput-boolean p6, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->hidden:Z

    return-void
.end method


# virtual methods
.method public getEnd()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->end:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getStart()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->start:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getType()Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->type:Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;)Lcom/geely/livewallpager/lotties/animation/content/Content;
    .locals 0
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

    .line 69
    new-instance p1, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;

    invoke-direct {p1, p2, p0}, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;-><init>(Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->start:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->end:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
