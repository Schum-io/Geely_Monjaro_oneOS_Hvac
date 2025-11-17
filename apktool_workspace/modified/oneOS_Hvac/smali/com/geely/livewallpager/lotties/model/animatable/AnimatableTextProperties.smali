.class public Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# instance fields
.field public final color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

.field public final stroke:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

.field public final strokeWidth:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

.field public final tracking:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "stroke",
            "strokeWidth",
            "tracking"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->color:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    .line 16
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->stroke:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    .line 17
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    .line 18
    iput-object p4, p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextProperties;->tracking:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    return-void
.end method
