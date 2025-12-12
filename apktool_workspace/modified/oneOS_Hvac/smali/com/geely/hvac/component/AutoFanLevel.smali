.class public Lcom/geely/hvac/component/AutoFanLevel;
.super Landroid/view/View;
.source "AutoFanLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;,
        Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActiveColor:I

.field private mBgColor:I

.field private mBlockDivideWidth:I

.field private mBlockHeight:I

.field private mBlockWith:I

.field private final mCoo:Landroid/graphics/Point;

.field private mCurrentLevel:I

.field private mEnable:Z

.field private mGradientAnimator:Landroid/animation/ValueAnimator;

.field private mGradientAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mGradientColors:[I

.field private final mGradientPaint:Landroid/graphics/Paint;

.field private mGradientPos:[F

.field private mGradientRctX:I

.field private mHalfBlockHeight:I

.field private mHalfBlockWidth:I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mMaxLevel:I

.field private mOnFanLevelChangeListener:Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgressPercent:F

.field private mUnActiveColor:I

.field private final mViewSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    .line 25
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mMaxLevel:I

    const/16 v0, 0x28

    .line 26
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    const/16 v0, 0x8

    .line 28
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockHeight:I

    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockDivideWidth:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    .line 35
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mViewSize:Landroid/graphics/Point;

    .line 42
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCoo:Landroid/graphics/Point;

    .line 43
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 45
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPos:[F

    const v1, 0x3ea8f5c3    # 0.33f

    .line 54
    iput v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mProgressPercent:F

    .line 62
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientRctX:I

    .line 63
    iput-boolean v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mEnable:Z

    .line 66
    new-instance v0, Lcom/geely/hvac/component/-$$Lambda$AutoFanLevel$5828STYsUBkgu9Qt-oe5_gtgd0Q;

    invoke-direct {v0, p0}, Lcom/geely/hvac/component/-$$Lambda$AutoFanLevel$5828STYsUBkgu9Qt-oe5_gtgd0Q;-><init>(Lcom/geely/hvac/component/AutoFanLevel;)V

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/AutoFanLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    .line 25
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mMaxLevel:I

    const/16 v0, 0x28

    .line 26
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    const/16 v0, 0x8

    .line 28
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockHeight:I

    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockDivideWidth:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    .line 35
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mViewSize:Landroid/graphics/Point;

    .line 42
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCoo:Landroid/graphics/Point;

    .line 43
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 45
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPos:[F

    const v1, 0x3ea8f5c3    # 0.33f

    .line 54
    iput v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mProgressPercent:F

    .line 62
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientRctX:I

    .line 63
    iput-boolean v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mEnable:Z

    .line 66
    new-instance v0, Lcom/geely/hvac/component/-$$Lambda$AutoFanLevel$5828STYsUBkgu9Qt-oe5_gtgd0Q;

    invoke-direct {v0, p0}, Lcom/geely/hvac/component/-$$Lambda$AutoFanLevel$5828STYsUBkgu9Qt-oe5_gtgd0Q;-><init>(Lcom/geely/hvac/component/AutoFanLevel;)V

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/AutoFanLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
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

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/hvac/component/AutoFanLevel;->TAG:Ljava/lang/String;

    const/16 p3, 0x9

    .line 25
    iput p3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mMaxLevel:I

    const/16 p3, 0x28

    .line 26
    iput p3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    const/16 p3, 0x8

    .line 28
    iput p3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockHeight:I

    const/4 p3, 0x3

    .line 30
    iput p3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockDivideWidth:I

    const/4 p3, 0x0

    .line 31
    iput p3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mViewSize:Landroid/graphics/Point;

    .line 42
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCoo:Landroid/graphics/Point;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 45
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPos:[F

    const v0, 0x3ea8f5c3    # 0.33f

    .line 54
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mProgressPercent:F

    .line 62
    iput p3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientRctX:I

    .line 63
    iput-boolean v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mEnable:Z

    .line 66
    new-instance p3, Lcom/geely/hvac/component/-$$Lambda$AutoFanLevel$5828STYsUBkgu9Qt-oe5_gtgd0Q;

    invoke-direct {p3, p0}, Lcom/geely/hvac/component/-$$Lambda$AutoFanLevel$5828STYsUBkgu9Qt-oe5_gtgd0Q;-><init>(Lcom/geely/hvac/component/AutoFanLevel;)V

    iput-object p3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/AutoFanLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addPath(Landroid/graphics/Path;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "blockIndex"
        }
    .end annotation

    const/high16 v0, 0x43340000    # 180.0f

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 291
    new-instance p2, Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget v3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    neg-int v4, v3

    int-to-float v4, v4

    iget v5, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockHeight:I

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-direct {p2, v2, v4, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 292
    iget p2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    int-to-float v0, p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 293
    iget p2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    int-to-float p2, p2

    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 294
    iget p2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    int-to-float p2, p2

    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 295
    iget p2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 296
    :cond_0
    iget v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mMaxLevel:I

    add-int/lit8 v3, v2, -0x1

    if-ne p2, v3, :cond_1

    .line 298
    iget p2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v3, p2

    iget v4, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockDivideWidth:I

    add-int/lit8 v5, v2, -0x1

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    mul-int/2addr p2, v2

    sub-int/2addr v2, v1

    mul-int/2addr v4, v2

    add-int/2addr p2, v4

    .line 301
    new-instance v2, Landroid/graphics/RectF;

    iget v4, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockHeight:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    neg-int v6, v5

    int-to-float v6, v6

    int-to-float v7, p2

    int-to-float v5, v5

    invoke-direct {v2, v4, v6, v7, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v2, v4, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 303
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    sub-int v1, p2, v0

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v3

    .line 304
    iget v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    iget v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 308
    :cond_1
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockDivideWidth:I

    mul-int v3, v2, p2

    add-int/2addr v1, v3

    int-to-float v4, v1

    iget v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    neg-int v3, v1

    int-to-float v5, v3

    add-int/lit8 v3, p2, 0x1

    mul-int/2addr v0, v3

    mul-int/2addr v2, p2

    add-int/2addr v0, v2

    int-to-float v6, v0

    int-to-float v7, v1

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method

.method private calculateDimens()V
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 148
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockDivideWidth:I

    .line 150
    iget v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mMaxLevel:I

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    .line 151
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockHeight:I

    .line 152
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    .line 153
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockWidth:I

    return-void
.end method

.method private calculateProgress(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 352
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mProgressPercent:F

    iget v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockDivideWidth:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 354
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mMaxLevel:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 360
    :cond_1
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    if-eq p1, v0, :cond_2

    .line 361
    iput p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    .line 362
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateProgress, progress changed, progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->invalidate()V

    .line 364
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->updateAnimator()V

    .line 365
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mOnFanLevelChangeListener:Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 366
    invoke-interface {v0, p0, p1, v1}, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;->onProgressChanged(Lcom/geely/hvac/component/AutoFanLevel;IZ)V

    :cond_2
    return-void
.end method

.method private createAnimator()V
    .locals 6

    .line 184
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 187
    iget v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    neg-int v3, v2

    aput v3, v0, v1

    iget v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v3, v2

    iget v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockDivideWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v3, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    .line 188
    iget-object v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    iget v4, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    add-int/2addr v4, v1

    int-to-long v4, v4

    mul-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 190
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 191
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    return-void
.end method

.method private drawLayer1(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 239
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mActiveColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method private drawLayer2(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCoo:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCoo:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientRctX:I

    int-to-float v3, v1

    iget v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    add-int/2addr v1, v2

    int-to-float v5, v1

    iget-object v7, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientColors:[I

    iget-object v8, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPos:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 246
    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 247
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientRctX:I

    int-to-float v2, v0

    iget v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mHalfBlockHeight:I

    neg-int v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLayer3(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 254
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-boolean v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 257
    iget v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBgColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    if-lez v0, :cond_3

    .line 262
    iget-object v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_1
    if-ge v1, v0, :cond_2

    .line 264
    iget-object v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, v2, v1}, Lcom/geely/hvac/component/AutoFanLevel;->addPath(Landroid/graphics/Path;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mUnActiveColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 272
    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 273
    :goto_2
    iget v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mMaxLevel:I

    if-ge v0, v1, :cond_4

    .line 274
    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, v1, v0}, Lcom/geely/hvac/component/AutoFanLevel;->addPath(Landroid/graphics/Path;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
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

    .line 158
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f05008f

    .line 159
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mActiveColor:I

    .line 160
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050090

    .line 161
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mUnActiveColor:I

    .line 162
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f05001b

    .line 163
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBgColor:I

    .line 164
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->calculateDimens()V

    .line 165
    iget-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mActiveColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    iget-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 176
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientColors:[I

    .line 177
    new-instance p1, Landroid/graphics/LinearGradient;

    iget p2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientRctX:I

    int-to-float v1, p2

    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    add-int/2addr p2, v0

    int-to-float v3, p2

    iget-object v5, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientColors:[I

    iget-object v6, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPos:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 179
    iget-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->createAnimator()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private startAnimate()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u4e0d\u53ef\u89c1"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 219
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->createAnimator()V

    :cond_2
    return-void
.end method

.method private stopAnimate()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private updateAnimator()V
    .locals 6

    .line 337
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->createAnimator()V

    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .line 341
    iget-object v2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 344
    :goto_0
    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockWith:I

    neg-int v5, v4

    aput v5, v2, v3

    iget v3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, v4

    iget v4, p0, Lcom/geely/hvac/component/AutoFanLevel;->mBlockDivideWidth:I

    mul-int/2addr v3, v4

    add-int/2addr v5, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    const-wide/16 v1, 0x3e8

    .line 345
    iget v4, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    add-int/2addr v4, v3

    int-to-long v3, v4

    mul-long/2addr v3, v1

    .line 346
    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 347
    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientAnimator:Landroid/animation/ValueAnimator;

    long-to-float v2, v3

    mul-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$AutoFanLevel(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mGradientRctX:I

    .line 68
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 202
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 203
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->startAnimate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 210
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->stopAnimate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 320
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 322
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AutoFanLevel;->drawLayer1(Landroid/graphics/Canvas;)V

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 324
    iget-boolean v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mEnable:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AutoFanLevel;->drawLayer2(Landroid/graphics/Canvas;)V

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCoo:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCoo:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 332
    :goto_0
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AutoFanLevel;->drawLayer3(Landroid/graphics/Canvas;)V

    return-void
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

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 233
    iget-object p3, p0, Lcom/geely/hvac/component/AutoFanLevel;->mViewSize:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 234
    iget-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mViewSize:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 235
    iget-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCoo:Landroid/graphics/Point;

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Point;->y:I

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

    .line 375
    iget-boolean v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mEnable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 378
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

    .line 395
    :cond_1
    iget-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mOnFanLevelChangeListener:Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;

    if-eqz p1, :cond_6

    .line 396
    invoke-interface {p1, p0}, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;->onStopTrackingTouch(Lcom/geely/hvac/component/AutoFanLevel;)V

    goto :goto_0

    .line 387
    :cond_2
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AutoFanLevel;->calculateProgress(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 390
    :cond_3
    iget-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mOnFanLevelChangeListener:Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;

    if-eqz p1, :cond_6

    .line 391
    invoke-interface {p1, p0}, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;->onStopTrackingTouch(Lcom/geely/hvac/component/AutoFanLevel;)V

    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 381
    iget-object v0, p0, Lcom/geely/hvac/component/AutoFanLevel;->mOnFanLevelChangeListener:Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;

    if-eqz v0, :cond_5

    .line 382
    invoke-interface {v0, p0}, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;->onStartTrackingTouch(Lcom/geely/hvac/component/AutoFanLevel;)V

    .line 384
    :cond_5
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AutoFanLevel;->calculateProgress(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_0
    return v1
.end method

.method public setEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 131
    iput-boolean p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mEnable:Z

    .line 132
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->invalidate()V

    return-void
.end method

.method public setLevel(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentLevel",
            "maxLevel"
        }
    .end annotation

    if-le p1, p2, :cond_0

    return-void

    .line 139
    :cond_0
    iput p2, p0, Lcom/geely/hvac/component/AutoFanLevel;->mMaxLevel:I

    .line 140
    iput p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mCurrentLevel:I

    .line 141
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->calculateDimens()V

    .line 142
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->updateAnimator()V

    .line 143
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoFanLevel;->invalidate()V

    return-void
.end method

.method public setOnFanLevelChangeListener(Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFanLevelChangeListener"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/geely/hvac/component/AutoFanLevel;->mOnFanLevelChangeListener:Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 196
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-direct {p0}, Lcom/geely/hvac/component/AutoFanLevel;->startAnimate()V

    return-void
.end method
