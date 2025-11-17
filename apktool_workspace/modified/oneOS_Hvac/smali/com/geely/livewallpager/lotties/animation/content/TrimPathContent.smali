.class public Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/animation/content/Content;
.implements Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final endAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final offsetAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final startAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;


# direct methods
.method public constructor <init>(Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layer",
            "trimPath"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    .line 21
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->name:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->hidden:Z

    .line 23
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->getType()Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->type:Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;

    .line 24
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->getStart()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->startAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 25
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->getEnd()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->endAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath;->getOffset()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->offsetAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    invoke-virtual {p1, v0}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    .line 29
    invoke-virtual {p1, v1}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    .line 30
    invoke-virtual {p1, p2}, Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;->addAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V

    .line 32
    invoke-virtual {v0, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 33
    invoke-virtual {v1, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 34
    invoke-virtual {p2, p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method addListener(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEnd()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->endAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->offsetAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    return-object v0
.end method

.method public getStart()Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->startAnimation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    return-object v0
.end method

.method getType()Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->type:Lcom/geely/livewallpager/lotties/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->hidden:Z

    return v0
.end method

.method public onValueChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/animation/content/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentsBefore",
            "contentsAfter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
