.class public Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;
.super Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
.source "ValueCallbackKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final frameInfo:Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/value/LottieFrameInfo<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final valueCallbackValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/value/LottieValueCallback<",
            "TA;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "valueCallback",
            "valueCallbackValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/value/LottieValueCallback<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 11
    new-instance v0, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->frameInfo:Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;

    .line 21
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->setValueCallback(Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    .line 22
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getEndProgress()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    iget-object v4, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v5

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v6

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    invoke-virtual/range {v0 .. v7}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lcom/geely/livewallpager/lotties/value/Keyframe;F)Ljava/lang/Object;
    .locals 0
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
            "TK;>;F)TA;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public notifyListeners()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    if-eqz v0, :cond_0

    .line 39
    invoke-super {p0}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 26
    iput p1, p0, Lcom/geely/livewallpager/lotties/animation/keyframe/ValueCallbackKeyframeAnimation;->progress:F

    return-void
.end method
