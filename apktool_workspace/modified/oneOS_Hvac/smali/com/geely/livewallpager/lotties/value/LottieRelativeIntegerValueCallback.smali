.class public Lcom/geely/livewallpager/lotties/value/LottieRelativeIntegerValueCallback;
.super Lcom/geely/livewallpager/lotties/value/LottieValueCallback;
.source "LottieRelativeIntegerValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/value/LottieValueCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Integer;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 26
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Integer;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(IIF)I

    move-result v0

    .line 18
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/value/LottieRelativeIntegerValueCallback;->getOffset(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 9
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/value/LottieRelativeIntegerValueCallback;->getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
