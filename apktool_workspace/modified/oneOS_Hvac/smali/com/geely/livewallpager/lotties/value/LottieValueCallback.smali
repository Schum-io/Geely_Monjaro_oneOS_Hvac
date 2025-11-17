.class public Lcom/geely/livewallpager/lotties/value/LottieValueCallback;
.super Ljava/lang/Object;
.source "LottieValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private animation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "**>;"
        }
    .end annotation
.end field

.field private final frameInfo:Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/value/LottieFrameInfo<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->frameInfo:Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "staticValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->frameInfo:Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->value:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/value/LottieFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public final getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startFrame",
            "endFrame",
            "startValue",
            "endValue",
            "linearKeyframeProgress",
            "interpolatedKeyframeProgress",
            "overallProgress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->frameInfo:Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 59
    invoke-virtual/range {v0 .. v7}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAnimation(Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->animation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->value:Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;->animation:Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    :cond_0
    return-void
.end method
