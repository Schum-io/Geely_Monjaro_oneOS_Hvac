.class public Lcom/geely/toolchain/hmi/view/HmiDampScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "HmiDampScrollView.java"


# instance fields
.field private innerView:Landroid/view/View;

.field private mLastY:F

.field private normal:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    return-void
.end method

.method private initView()V
    .locals 2

    const/4 v0, 0x2

    .line 41
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public isNeedTranslate()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 98
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->initView()V

    .line 33
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onFinishInflate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 62
    iget v3, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->mLastY:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 66
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->isNeedTranslate()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->mLastY:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    div-int/2addr v3, v1

    sub-int/2addr v5, v3

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v6, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v6, v3

    .line 72
    invoke-virtual {v2, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 75
    :cond_2
    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->mLastY:F

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->planAnimation()V

    .line 55
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 56
    iput v2, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->mLastY:F

    .line 78
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public planAnimation()V
    .locals 5

    .line 86
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 88
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->innerView:Landroid/view/View;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->normal:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
