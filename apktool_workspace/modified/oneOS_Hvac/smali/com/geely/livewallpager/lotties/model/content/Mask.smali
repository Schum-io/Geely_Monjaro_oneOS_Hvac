.class public Lcom/geely/livewallpager/lotties/model/content/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/livewallpager/lotties/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final inverted:Z

.field private final maskMode:Lcom/geely/livewallpager/lotties/model/content/Mask$MaskMode;

.field private final maskPath:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableShapeValue;

.field private final opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Lcom/geely/livewallpager/lotties/model/content/Mask$MaskMode;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableShapeValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maskMode",
            "maskPath",
            "opacity",
            "inverted"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/content/Mask;->maskMode:Lcom/geely/livewallpager/lotties/model/content/Mask$MaskMode;

    .line 21
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/model/content/Mask;->maskPath:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableShapeValue;

    .line 22
    iput-object p3, p0, Lcom/geely/livewallpager/lotties/model/content/Mask;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    .line 23
    iput-boolean p4, p0, Lcom/geely/livewallpager/lotties/model/content/Mask;->inverted:Z

    return-void
.end method


# virtual methods
.method public getMaskMode()Lcom/geely/livewallpager/lotties/model/content/Mask$MaskMode;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/Mask;->maskMode:Lcom/geely/livewallpager/lotties/model/content/Mask$MaskMode;

    return-object v0
.end method

.method public getMaskPath()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableShapeValue;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/Mask;->maskPath:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableShapeValue;

    return-object v0
.end method

.method public getOpacity()Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/model/content/Mask;->opacity:Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public isInverted()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/model/content/Mask;->inverted:Z

    return v0
.end method
