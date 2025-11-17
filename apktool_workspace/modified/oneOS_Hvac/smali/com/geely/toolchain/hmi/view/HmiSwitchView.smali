.class public Lcom/geely/toolchain/hmi/view/HmiSwitchView;
.super Landroid/view/View;
.source "HmiSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/HmiSwitchView$OnCheckedChangeListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEGREES_ONE:I = 0xb4

.field private static final DEGREES_THREE:I = 0x168

.field private static final DEGREES_TWO:I = -0xb4

.field private static final TAG:Ljava/lang/String; = "HmiSwitchView"


# instance fields
.field private isChecked:Z

.field private isEnable:Z

.field private mOnSwitchListener:Lcom/geely/toolchain/hmi/view/HmiSwitchView$OnCheckedChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mShowHeight:F

.field private mShowWidth:F

.field private mThumbColor:I

.field private mTrackCheckColor:I

.field private mTrackColor:I

.field private mTrackUncheckColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
            "defStyleAttr"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 37
    iput p3, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mThumbColor:I

    const p3, -0xff0100

    .line 38
    iput p3, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackColor:I

    .line 39
    iput p3, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackCheckColor:I

    const p3, -0x777778

    .line 40
    iput p3, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackUncheckColor:I

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 81
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiOneOSHmiSwitchView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiOneOSHmiSwitchView_thumbColor:I

    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mThumbColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mThumbColor:I

    .line 83
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiOneOSHmiSwitchView_trackCheckColor:I

    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackCheckColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackCheckColor:I

    .line 84
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiOneOSHmiSwitchView_trackUncheckColor:I

    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackUncheckColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackUncheckColor:I

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackColor:I

    .line 85
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiOneOSHmiSwitchView_showWidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mShowWidth:F

    .line 86
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiOneOSHmiSwitchView_showHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mShowHeight:F

    .line 87
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiOneOSHmiSwitchView_isChecked:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isChecked:Z

    .line 88
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiOneOSHmiSwitchView_isEnable:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isEnable:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mPaint:Landroid/graphics/Paint;

    .line 91
    iget-boolean p1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isEnable:Z

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setEnabled(Z)V

    .line 94
    :cond_0
    iget-boolean p1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isChecked:Z

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setChecked(Z)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setChecked(Z)V

    .line 99
    :goto_0
    new-instance p1, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiSwitchView$whrSyFme5P2ZLr_uyvYEaB9wzmQ;

    invoke-direct {p1, p0}, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiSwitchView$whrSyFme5P2ZLr_uyvYEaB9wzmQ;-><init>(Lcom/geely/toolchain/hmi/view/HmiSwitchView;)V

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setPercent(F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 120
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mPercent:F

    const/4 p1, 0x3

    new-array v0, p1, [F

    new-array v1, p1, [F

    new-array p1, p1, [F

    .line 125
    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackUncheckColor:I

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 126
    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackCheckColor:I

    invoke-static {v2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x0

    .line 128
    aget v3, v1, v2

    aget v4, v0, v2

    sub-float/2addr v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    if-lez v3, :cond_0

    .line 129
    aget v3, v1, v2

    sub-float/2addr v3, v4

    aput v3, v1, v2

    goto :goto_0

    .line 130
    :cond_0
    aget v3, v1, v2

    aget v5, v0, v2

    sub-float/2addr v3, v5

    const/high16 v5, -0x3ccc0000    # -180.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 131
    aget v3, v1, v2

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 133
    :cond_1
    :goto_0
    aget v3, v0, v2

    aget v5, v1, v2

    aget v6, v0, v2

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mPercent:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    aput v3, p1, v2

    .line 134
    aget v3, p1, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 135
    aget v3, p1, v2

    sub-float/2addr v3, v4

    aput v3, p1, v2

    goto :goto_1

    .line 136
    :cond_2
    aget v3, p1, v2

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 137
    aget v3, p1, v2

    add-float/2addr v3, v4

    aput v3, p1, v2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 139
    aget v3, v0, v2

    aget v4, v1, v2

    aget v5, v0, v2

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    aput v3, p1, v2

    const/4 v2, 0x2

    .line 140
    aget v3, v0, v2

    aget v1, v1, v2

    aget v0, v0, v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v6

    add-float/2addr v3, v1

    aput v3, p1, v2

    .line 142
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackUncheckColor:I

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackCheckColor:I

    rsub-int/lit8 v2, v0, 0x18

    shr-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x18

    shr-int/2addr v0, v1

    .line 144
    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackColor:I

    .line 145
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->invalidate()V

    return-void
.end method

.method private setPercentAnim(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 154
    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mPercent:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "percent"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 156
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setSelectedStatus(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selected",
            "anim"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiSwitchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isSelected()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setSelected(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isAttachedToWindow()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 174
    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setPercentAnim(F)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setPercent(F)V

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isAttachedToWindow()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 180
    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setPercentAnim(F)V

    goto :goto_0

    .line 182
    :cond_3
    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setPercent(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 219
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isSelected()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$init$0$HmiSwitchView(Landroid/view/View;)V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setSelectedStatus(ZZ)V

    .line 101
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mOnSwitchListener:Lcom/geely/toolchain/hmi/view/HmiSwitchView$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isSelected()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/view/HmiSwitchView$OnCheckedChangeListener;->onCheckedChanged(Lcom/geely/toolchain/hmi/view/HmiSwitchView;Z)V

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mTrackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mShowWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mShowHeight:F

    sub-float/2addr v0, v2

    div-float v4, v0, v1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mShowWidth:F

    add-float/2addr v0, v2

    div-float v5, v0, v1

    .line 113
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mShowHeight:F

    add-float/2addr v0, v2

    div-float v6, v0, v1

    div-float v7, v2, v1

    div-float v8, v2, v1

    iget-object v9, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 112
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mThumbColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mShowHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    add-float v3, v0, v1

    .line 116
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mShowWidth:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v0, v1

    sub-float/2addr v5, v4

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mPercent:F

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 224
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-nez p1, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiSwitchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setSelectedStatus(ZZ)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 208
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiSwitchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 211
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 213
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/geely/toolchain/hmi/view/HmiSwitchView$OnCheckedChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSwitchListener"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSwitchView;->mOnSwitchListener:Lcom/geely/toolchain/hmi/view/HmiSwitchView$OnCheckedChangeListener;

    return-void
.end method
