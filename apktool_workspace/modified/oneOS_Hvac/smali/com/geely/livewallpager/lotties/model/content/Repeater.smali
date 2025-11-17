.class public Lcom/geely/livewallpager/lotties/model/content/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/model/content/ContentModel;


# instance fields
.field private final copies:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field private final transform:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTransform;Z)V
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
            "copies",
            "offset",
            "transform",
            "hidden"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->copies:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 23
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 24
    iput-object p4, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->transform:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTransform;

    .line 25
    iput-boolean p5, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCopies()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->copies:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->offset:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getTransform()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTransform;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->transform:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTransform;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/Repeater;->hidden:Z

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

    .line 49
    new-instance v0, Lcom/geely/livewallpager/lotties/animation/content/RepeaterContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/geely/livewallpager/lotties/animation/content/RepeaterContent;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/BaseLayer;Lcom/geely/livewallpager/lotties/model/content/Repeater;)V

    return-object v0
.end method
