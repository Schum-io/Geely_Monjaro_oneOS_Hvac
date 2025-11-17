.class public Lcom/geely/livewallpager/lotties/value/LottieRelativeFloatValueCallback;
.super Lcom/geely/livewallpager/lotties/value/LottieValueCallback;
.source "LottieRelativeFloatValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/value/LottieValueCallback<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "staticValue"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Float;
    .locals 1
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
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativeFloatValueCallback;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativeFloatValueCallback;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    return-object p1

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Float;
    .locals 3
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
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 25
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 26
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v2

    .line 23
    invoke-static {v0, v1, v2}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    .line 28
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/value/LottieRelativeFloatValueCallback;->getOffset(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr v0, p1

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "frameInfo"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/value/LottieRelativeFloatValueCallback;->getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
