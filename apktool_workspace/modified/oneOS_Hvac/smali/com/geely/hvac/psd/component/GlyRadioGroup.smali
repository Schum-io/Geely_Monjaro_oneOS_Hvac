.class public Lcom/geely/hvac/psd/component/GlyRadioGroup;
.super Landroid/widget/LinearLayout;
.source "GlyRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/psd/component/GlyRadioGroup$GlyOnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mGlyOnCheckedChangeListener:Lcom/geely/hvac/psd/component/GlyRadioGroup$GlyOnCheckedChangeListener;

.field private mLastSelectIndex:I

.field private final mOnRadioButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBg:Landroid/graphics/Paint;

.field private mPercent:F

.field private mRgAnimDuration:J

.field private mRgBackgroundColor:I

.field private mRgButtonColor:I

.field private mRgCorner:F

.field private mRgSeparateLineColor:I

.field private mRgSeparateLineLength:F

.field private mRgShadeColor:I

.field private mSelectIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mLastSelectIndex:I

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    const-wide/16 v0, 0x12c

    .line 41
    iput-wide v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgAnimDuration:J

    .line 53
    new-instance p1, Lcom/geely/hvac/psd/component/-$$Lambda$GlyRadioGroup$diaj8Q1T5lt2uoiM_751HmnuGTo;

    invoke-direct {p1, p0}, Lcom/geely/hvac/psd/component/-$$Lambda$GlyRadioGroup$diaj8Q1T5lt2uoiM_751HmnuGTo;-><init>(Lcom/geely/hvac/psd/component/GlyRadioGroup;)V

    iput-object p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mOnRadioButtonClickListener:Landroid/view/View$OnClickListener;

    .line 73
    invoke-direct {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mLastSelectIndex:I

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    const-wide/16 v0, 0x12c

    .line 41
    iput-wide v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgAnimDuration:J

    .line 53
    new-instance p1, Lcom/geely/hvac/psd/component/-$$Lambda$GlyRadioGroup$diaj8Q1T5lt2uoiM_751HmnuGTo;

    invoke-direct {p1, p0}, Lcom/geely/hvac/psd/component/-$$Lambda$GlyRadioGroup$diaj8Q1T5lt2uoiM_751HmnuGTo;-><init>(Lcom/geely/hvac/psd/component/GlyRadioGroup;)V

    iput-object p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mOnRadioButtonClickListener:Landroid/view/View$OnClickListener;

    .line 78
    invoke-direct {p0, p2}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->initAttrs(Landroid/util/AttributeSet;)V

    .line 79
    invoke-direct {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mLastSelectIndex:I

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    const-wide/16 v0, 0x12c

    .line 41
    iput-wide v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgAnimDuration:J

    .line 53
    new-instance p1, Lcom/geely/hvac/psd/component/-$$Lambda$GlyRadioGroup$diaj8Q1T5lt2uoiM_751HmnuGTo;

    invoke-direct {p1, p0}, Lcom/geely/hvac/psd/component/-$$Lambda$GlyRadioGroup$diaj8Q1T5lt2uoiM_751HmnuGTo;-><init>(Lcom/geely/hvac/psd/component/GlyRadioGroup;)V

    iput-object p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mOnRadioButtonClickListener:Landroid/view/View$OnClickListener;

    .line 84
    invoke-direct {p0, p2}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->initAttrs(Landroid/util/AttributeSet;)V

    .line 85
    invoke-direct {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->init()V

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 130
    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    if-ltz v1, :cond_4

    if-lt v1, v0, :cond_0

    goto/16 :goto_2

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaintBg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgSeparateLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v1, v0, :cond_3

    .line 137
    invoke-virtual {p0, v1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 138
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 139
    iget v4, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    if-eq v3, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v6, v3, v4

    .line 144
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    iget v8, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgSeparateLineLength:F

    div-float/2addr v8, v7

    sub-float v8, v5, v8

    add-float/2addr v3, v4

    .line 145
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgSeparateLineLength:F

    div-float/2addr v5, v7

    add-float v9, v4, v5

    iget-object v10, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaintBg:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v8

    move v8, v3

    .line 144
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_3
    iget v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mLastSelectIndex:I

    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    invoke-virtual {p0, v1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 152
    instance-of v2, v1, Lcom/geely/hvac/psd/component/GlyRadioButton;

    if-eqz v2, :cond_4

    instance-of v2, v0, Lcom/geely/hvac/psd/component/GlyRadioButton;

    if-eqz v2, :cond_4

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    add-float v5, v2, v3

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    add-float v6, v2, v3

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    iget v7, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    sub-float v7, v2, v3

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    sub-float v8, v2, v3

    iget v10, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgCorner:F

    iget-object v11, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v9, v10

    .line 153
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    nop

    :cond_4
    :goto_2
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 165
    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    if-ltz v1, :cond_4

    if-lt v1, v0, :cond_0

    goto/16 :goto_2

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaintBg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgSeparateLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v1, v0, :cond_3

    .line 172
    invoke-virtual {p0, v1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 173
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 174
    iget v4, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    if-eq v3, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgSeparateLineLength:F

    div-float/2addr v5, v4

    sub-float v7, v3, v5

    int-to-float v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v8, v3, v5

    .line 180
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v9, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgSeparateLineLength:F

    div-float/2addr v9, v4

    add-float/2addr v9, v6

    add-float v10, v3, v5

    iget-object v11, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaintBg:Landroid/graphics/Paint;

    move-object v6, p1

    .line 179
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_3
    iget v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mLastSelectIndex:I

    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    invoke-virtual {p0, v1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 187
    instance-of v2, v1, Lcom/geely/hvac/psd/component/GlyRadioButton;

    if-eqz v2, :cond_4

    instance-of v2, v0, Lcom/geely/hvac/psd/component/GlyRadioButton;

    if-eqz v2, :cond_4

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    add-float v5, v2, v3

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    add-float v6, v2, v3

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    iget v7, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    sub-float v7, v2, v3

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    sub-float v8, v2, v3

    iget v10, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgCorner:F

    iget-object v11, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v9, v10

    .line 188
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    nop

    :cond_4
    :goto_2
    return-void
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->setBackgroundColor(I)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaintBg:Landroid/graphics/Paint;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaint:Landroid/graphics/Paint;

    .line 108
    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgButtonColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgShadeColor:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geely/hvac/R$styleable;->GlyRadioGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgCorner:F

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgBackgroundColor:I

    const/4 v0, 0x2

    .line 92
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgButtonColor:I

    const/4 v0, 0x7

    .line 93
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgShadeColor:I

    const/4 v0, 0x6

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgSeparateLineLength:F

    const/4 v0, 0x5

    .line 95
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgSeparateLineColor:I

    const/4 v0, 0x4

    const/4 v1, -0x1

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    .line 97
    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mLastSelectIndex:I

    const/16 v0, 0x12c

    .line 98
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgAnimDuration:J

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setPercent(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 258
    iput p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    .line 259
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->invalidate()V

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

    .line 263
    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "percent"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 264
    iget-wide v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgAnimDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setSelectIndex(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectIndex",
            "anim"
        }
    .end annotation

    .line 198
    iget v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    if-ne p1, v0, :cond_0

    return-void

    .line 201
    :cond_0
    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mLastSelectIndex:I

    .line 202
    iput p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    move p1, v2

    .line 204
    :goto_0
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 205
    invoke-virtual {p0, p1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->invalidate()V

    return-void

    :cond_2
    if-ne v0, v1, :cond_3

    .line 211
    iput p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mLastSelectIndex:I

    :cond_3
    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPercent:F

    .line 214
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->isAttachedToWindow()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 215
    invoke-direct {p0, v1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->setPercentAnim(F)V

    goto :goto_1

    .line 217
    :cond_4
    invoke-direct {p0, v1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->setPercent(F)V

    :goto_1
    move p2, v2

    .line 219
    :goto_2
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 220
    invoke-virtual {p0, p2}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 221
    instance-of v1, v0, Lcom/geely/hvac/psd/component/GlyRadioButton;

    if-eqz v1, :cond_6

    if-ne p2, p1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    .line 222
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 229
    instance-of v0, p1, Lcom/geely/hvac/psd/component/GlyRadioButton;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mOnRadioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->setSelectIndex(IZ)V

    :cond_0
    return-void
.end method

.method public check(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkId"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 238
    invoke-virtual {p0, v2}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 240
    invoke-direct {p0, v2, v1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->setSelectIndex(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public clearCheck()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->setSelectIndex(IZ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 290
    :cond_1
    check-cast p1, Lcom/geely/hvac/psd/component/GlyRadioGroup;

    .line 291
    invoke-virtual {p1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getId()I

    move-result v2

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCheckId()I
    .locals 2

    .line 251
    iget v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 252
    iget v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mSelectIndex:I

    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 296
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 297
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$GlyRadioGroup(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mGlyOnCheckedChangeListener:Lcom/geely/hvac/psd/component/GlyRadioGroup$GlyOnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/geely/hvac/psd/component/GlyRadioGroup$GlyOnCheckedChangeListener;->onCheckedChanged(Lcom/geely/hvac/psd/component/GlyRadioGroup;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$GlyRadioGroup(Landroid/view/View;)V
    .locals 3

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 58
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->setSelectIndex(IZ)V

    .line 61
    new-instance v0, Lcom/geely/hvac/psd/component/-$$Lambda$GlyRadioGroup$JQo9cKKCRsE0XTHYrJcXKEttY9w;

    invoke-direct {v0, p0, p1}, Lcom/geely/hvac/psd/component/-$$Lambda$GlyRadioGroup$JQo9cKKCRsE0XTHYrJcXKEttY9w;-><init>(Lcom/geely/hvac/psd/component/GlyRadioGroup;Landroid/view/View;)V

    iget-wide v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgAnimDuration:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v0, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaintBg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v7, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mRgCorner:F

    iget-object v8, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mPaintBg:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->drawVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->drawHorizontal(Landroid/graphics/Canvas;)V

    :goto_0
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

    .line 271
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabledAlpha(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 278
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    .line 279
    :goto_0
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->setAlpha(F)V

    const/4 v0, 0x0

    .line 280
    :goto_1
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 281
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/GlyRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/geely/hvac/psd/component/GlyRadioGroup$GlyOnCheckedChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "glyRadioGroupSelectListener"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/geely/hvac/psd/component/GlyRadioGroup;->mGlyOnCheckedChangeListener:Lcom/geely/hvac/psd/component/GlyRadioGroup$GlyOnCheckedChangeListener;

    return-void
.end method
