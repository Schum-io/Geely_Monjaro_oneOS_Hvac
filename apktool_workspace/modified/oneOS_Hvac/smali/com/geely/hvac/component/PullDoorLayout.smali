.class public Lcom/geely/hvac/component/PullDoorLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PullDoorLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/PullDoorLayout$CloseListener;
    }
.end annotation


# instance fields
.field private final MOVE_DISTANCE:I

.field private final TAG:Ljava/lang/String;

.field private isCanResponse:Z

.field private mCloseFlag:Z

.field private mCloseListener:Lcom/geely/hvac/component/PullDoorLayout$CloseListener;

.field private final mContext:Landroid/content/Context;

.field private mLastDownY:I

.field private mScroller:Landroid/widget/Scroller;

.field paint:Landroid/graphics/Paint;

.field private final touchRange:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->mLastDownY:I

    const/4 v1, 0x6

    .line 27
    iput v1, p0, Lcom/geely/hvac/component/PullDoorLayout;->MOVE_DISTANCE:I

    .line 32
    iput-boolean v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->mCloseFlag:Z

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x380

    const/16 v3, 0x400

    const/16 v4, 0x20

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/geely/hvac/component/PullDoorLayout;->touchRange:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->isCanResponse:Z

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->paint:Landroid/graphics/Paint;

    .line 45
    iput-object p1, p0, Lcom/geely/hvac/component/PullDoorLayout;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/geely/hvac/component/PullDoorLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/PullDoorLayout;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/geely/hvac/component/PullDoorLayout;->mLastDownY:I

    const/4 v0, 0x6

    .line 27
    iput v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->MOVE_DISTANCE:I

    .line 32
    iput-boolean p2, p0, Lcom/geely/hvac/component/PullDoorLayout;->mCloseFlag:Z

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x380

    const/16 v2, 0x400

    const/16 v3, 0x20

    invoke-direct {v0, v1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->touchRange:Landroid/graphics/Rect;

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/geely/hvac/component/PullDoorLayout;->isCanResponse:Z

    .line 73
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/PullDoorLayout;->paint:Landroid/graphics/Paint;

    .line 51
    iput-object p1, p0, Lcom/geely/hvac/component/PullDoorLayout;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/geely/hvac/component/PullDoorLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 57
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 58
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/geely/hvac/component/PullDoorLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/geely/hvac/component/PullDoorLayout;->mScroller:Landroid/widget/Scroller;

    .line 59
    iget-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->paint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private startBounceAnim(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startY",
            "dy",
            "duration"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 152
    invoke-virtual {p0}, Lcom/geely/hvac/component/PullDoorLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/geely/hvac/component/PullDoorLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/component/PullDoorLayout;->scrollTo(II)V

    .line 136
    invoke-virtual {p0}, Lcom/geely/hvac/component/PullDoorLayout;->postInvalidate()V

    goto :goto_0

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->mCloseFlag:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->mCloseFlag:Z

    .line 140
    iget-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->mCloseListener:Lcom/geely/hvac/component/PullDoorLayout$CloseListener;

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v0}, Lcom/geely/hvac/component/PullDoorLayout$CloseListener;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->touchRange:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/geely/hvac/component/PullDoorLayout;->isCanResponse:Z

    return p1

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 93
    :cond_0
    iput-boolean v1, p0, Lcom/geely/hvac/component/PullDoorLayout;->isCanResponse:Z

    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 99
    iget-object v3, p0, Lcom/geely/hvac/component/PullDoorLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 108
    iget v1, p0, Lcom/geely/hvac/component/PullDoorLayout;->mLastDownY:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_6

    const/4 v1, 0x0

    neg-int v0, v0

    .line 110
    invoke-virtual {p0, v1, v0}, Lcom/geely/hvac/component/PullDoorLayout;->scrollTo(II)V

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 115
    iget v2, p0, Lcom/geely/hvac/component/PullDoorLayout;->mLastDownY:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    .line 117
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/geely/hvac/component/PullDoorLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    if-le v0, v2, :cond_5

    .line 118
    invoke-virtual {p0}, Lcom/geely/hvac/component/PullDoorLayout;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/geely/hvac/component/PullDoorLayout;->getScrollY()I

    move-result v2

    const/16 v3, 0xfa

    invoke-direct {p0, v0, v2, v3}, Lcom/geely/hvac/component/PullDoorLayout;->startBounceAnim(III)V

    .line 119
    iput-boolean v1, p0, Lcom/geely/hvac/component/PullDoorLayout;->mCloseFlag:Z

    goto :goto_0

    .line 121
    :cond_5
    invoke-virtual {p0}, Lcom/geely/hvac/component/PullDoorLayout;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/geely/hvac/component/PullDoorLayout;->getScrollY()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/geely/hvac/component/PullDoorLayout;->startBounceAnim(III)V

    .line 127
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 103
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/geely/hvac/component/PullDoorLayout;->mLastDownY:I

    return v1
.end method

.method public resetScrollPos()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/PullDoorLayout;->setScrollX(I)V

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/PullDoorLayout;->setScaleY(F)V

    return-void
.end method

.method public setCloseListener(Lcom/geely/hvac/component/PullDoorLayout$CloseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeListener"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/geely/hvac/component/PullDoorLayout;->mCloseListener:Lcom/geely/hvac/component/PullDoorLayout$CloseListener;

    return-void
.end method

.method public setTouchRange(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/geely/hvac/component/PullDoorLayout;->touchRange:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
