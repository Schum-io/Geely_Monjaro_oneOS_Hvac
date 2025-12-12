.class public Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;
.super Lcom/geely/livewallpager/lotties/value/LottieValueCallback;
.source "LottieRelativePointValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/value/LottieValueCallback<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "staticValue"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 14
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Landroid/graphics/PointF;
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
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;->value:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    return-object p1

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Landroid/graphics/PointF;
    .locals 5
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
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    .line 27
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 28
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 29
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v3

    .line 26
    invoke-static {v1, v2, v3}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 32
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 33
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v4

    .line 30
    invoke-static {v2, v3, v4}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;->getOffset(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Landroid/graphics/PointF;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 38
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

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

    .line 12
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/value/LottieRelativePointValueCallback;->getValue(Lcom/geely/livewallpager/lotties/value/LottieFrameInfo;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
