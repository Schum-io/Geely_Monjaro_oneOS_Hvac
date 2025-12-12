.class public Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "HmiVerticalSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiVerticalSeekbar"


# instance fields
.field private mOnSeekBarChangeListener:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

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
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private onStartTrackingTouch()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->mOnSeekBarChangeListener:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;)V

    :cond_0
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->mOnSeekBarChangeListener:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;)V

    :cond_0
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getMax()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 97
    :cond_1
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged  progress-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->mOnSeekBarChangeListener:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;

    if-eqz v0, :cond_2

    .line 100
    invoke-interface {v0, p0, p1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;->onProgressChanged(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    const/high16 v0, 0x42b40000    # 90.0f

    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 56
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-super {p0, p2, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onMeasure(II)V

    .line 49
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 36
    invoke-super {p0, p2, p1, p4, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->onStopTrackingTouch()V

    goto :goto_0

    .line 73
    :cond_2
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 74
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->attemptClaimDrag()V

    goto :goto_0

    .line 78
    :cond_3
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 79
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->onStopTrackingTouch()V

    goto :goto_0

    .line 68
    :cond_4
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->onStartTrackingTouch()V

    .line 69
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public setOnSeekBarChangeListener(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->mOnSeekBarChangeListener:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 43
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
