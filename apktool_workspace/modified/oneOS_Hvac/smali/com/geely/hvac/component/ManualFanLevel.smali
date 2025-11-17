.class public Lcom/geely/hvac/component/ManualFanLevel;
.super Landroid/view/View;
.source "ManualFanLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActiveColor:I

.field private mBlockDivideWidth:I

.field private mBlockHeight:I

.field private volatile mBlockWith:I

.field private final mCoo:Landroid/graphics/Point;

.field private volatile mCurrentLevel:I

.field private volatile mCurrentRealLevel:I

.field private mEnable:Z

.field private mFanLevelChangeListener:Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;

.field private mIsTouch:Z

.field private volatile mMaxLevel:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgressPercent:F

.field private mUnActiveColor:I


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

    .line 81
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->TAG:Ljava/lang/String;

    const/16 p1, 0x9

    .line 27
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    const/16 p1, 0x28

    .line 31
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockWith:I

    const/16 p1, 0x8

    .line 35
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockHeight:I

    const/4 p1, 0x3

    .line 39
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockDivideWidth:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentRealLevel:I

    .line 47
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCoo:Landroid/graphics/Point;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    const v0, 0x3ea8f5c3    # 0.33f

    .line 62
    iput v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mProgressPercent:F

    .line 66
    iput-boolean v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mEnable:Z

    .line 74
    iput-boolean p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mIsTouch:Z

    return-void
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

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    .line 27
    iput v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    const/16 v0, 0x28

    .line 31
    iput v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockWith:I

    const/16 v0, 0x8

    .line 35
    iput v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockHeight:I

    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockDivideWidth:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentRealLevel:I

    .line 47
    iput v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCoo:Landroid/graphics/Point;

    .line 50
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    const v1, 0x3ea8f5c3    # 0.33f

    .line 62
    iput v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mProgressPercent:F

    .line 66
    iput-boolean v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mEnable:Z

    .line 74
    iput-boolean v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mIsTouch:Z

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/ManualFanLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->TAG:Ljava/lang/String;

    const/16 p1, 0x9

    .line 27
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    const/16 p1, 0x28

    .line 31
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockWith:I

    const/16 p1, 0x8

    .line 35
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockHeight:I

    const/4 p1, 0x3

    .line 39
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockDivideWidth:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentRealLevel:I

    .line 47
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    .line 48
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    .line 49
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCoo:Landroid/graphics/Point;

    .line 50
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    const p2, 0x3ea8f5c3    # 0.33f

    .line 62
    iput p2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mProgressPercent:F

    .line 66
    iput-boolean p3, p0, Lcom/geely/hvac/component/ManualFanLevel;->mEnable:Z

    .line 74
    iput-boolean p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mIsTouch:Z

    return-void
.end method

.method private addPath(Landroid/graphics/Path;I)V
    .locals 11
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

    .line 216
    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockHeight:I

    div-int/lit8 v0, v0, 0x2

    .line 217
    iget v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockWith:I

    .line 218
    iget v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    .line 219
    iget v3, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockDivideWidth:I

    const/4 v4, 0x0

    if-nez p2, :cond_0

    int-to-float v9, v0

    .line 222
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v9, v4, v9, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    neg-int p2, v0

    int-to-float v7, p2

    int-to-float v8, v1

    .line 223
    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v5, p1

    move v6, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_1

    mul-int/2addr v1, v2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 227
    invoke-virtual {p0}, Lcom/geely/hvac/component/ManualFanLevel;->getWidth()I

    move-result p2

    sub-int/2addr p2, v0

    int-to-float v8, p2

    int-to-float v9, v0

    .line 228
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v8, v4, v9, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    int-to-float v6, v1

    neg-int p2, v0

    int-to-float v7, p2

    .line 234
    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    mul-int v2, v1, p2

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    int-to-float v5, v2

    neg-int v2, v0

    int-to-float v6, v2

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr v1, p2

    add-int/2addr v1, v3

    int-to-float v7, v1

    int-to-float v8, v0

    .line 242
    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method

.method public static bindCurrentLevel(Lcom/geely/hvac/component/ManualFanLevel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fanLevel",
            "currentLevel"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/ManualFanLevel;->setCurrentLevel(I)V

    return-void
.end method

.method public static bindFanLevelChangeListener(Lcom/geely/hvac/component/ManualFanLevel;Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fanLevel",
            "listener"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/ManualFanLevel;->setFanLevelChangeListener(Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;)V

    return-void
.end method

.method public static bindFanLevelEnable(Lcom/geely/hvac/component/ManualFanLevel;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fanLevel",
            "enable"
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/ManualFanLevel;->setEnabled(Z)V

    return-void
.end method

.method public static bindMaxLevel(Lcom/geely/hvac/component/ManualFanLevel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fanLevel",
            "maxLevel"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/ManualFanLevel;->setMaxLevel(I)V

    return-void
.end method

.method private calculateDimens()V
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/geely/hvac/component/ManualFanLevel;->getWidth()I

    move-result v0

    .line 144
    :try_start_0
    iget v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockDivideWidth:I

    iget v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockWith:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private calculateProgress(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/ManualFanLevel;->calculateProgress(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method private calculateProgress(Landroid/view/MotionEvent;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "forceCallBack"
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 288
    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mProgressPercent:F

    iget v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockWith:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockWith:I

    iget v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockDivideWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 289
    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    if-le p1, v0, :cond_0

    .line 290
    iget p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-nez p2, :cond_2

    .line 295
    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    if-ne p1, v0, :cond_2

    return-void

    .line 299
    :cond_2
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    .line 300
    invoke-virtual {p0}, Lcom/geely/hvac/component/ManualFanLevel;->invalidate()V

    if-nez p2, :cond_3

    .line 302
    invoke-direct {p0}, Lcom/geely/hvac/component/ManualFanLevel;->playSound()V

    .line 304
    :cond_3
    iget-object p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mFanLevelChangeListener:Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;

    if-eqz p1, :cond_4

    .line 305
    iget p2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    iget-boolean v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mIsTouch:Z

    invoke-interface {p1, p0, p2, v0}, Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;->onChange(Lcom/geely/hvac/component/ManualFanLevel;IZ)V

    :cond_4
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    if-nez p2, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/ManualFanLevel;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/geely/hvac/R$styleable;->FanLevel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 127
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mActiveColor:I

    const/4 v0, 0x3

    .line 128
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mUnActiveColor:I

    const/4 p2, 0x1

    .line 129
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockDivideWidth:I

    const/4 p2, 0x2

    const/16 v0, 0x8

    .line 130
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mBlockHeight:I

    .line 131
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    iget-object p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->TAG:Ljava/lang/String;

    const-string p2, "init"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mActiveColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget-object p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private playSound()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->TAG:Ljava/lang/String;

    const-string v1, "playSound"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x82

    .line 311
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/ManualFanLevel;->playSoundEffect(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 254
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 255
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mActiveColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unactive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mUnActiveColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCoo:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCoo:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    iget-boolean v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 260
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mActiveColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    :goto_0
    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    if-ge v1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/ManualFanLevel;->addPath(Landroid/graphics/Path;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 266
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mUnActiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 268
    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    :goto_1
    iget v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    if-ge v0, v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, v1, v0}, Lcom/geely/hvac/component/ManualFanLevel;->addPath(Landroid/graphics/Path;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mUnActiveColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 275
    :goto_2
    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    if-ge v1, v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/ManualFanLevel;->addPath(Landroid/graphics/Path;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_3
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

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 117
    invoke-direct {p0}, Lcom/geely/hvac/component/ManualFanLevel;->calculateDimens()V

    .line 118
    iget-object p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCoo:Landroid/graphics/Point;

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 316
    iget-boolean v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 320
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 327
    :cond_1
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/ManualFanLevel;->calculateProgress(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 331
    :cond_2
    iput-boolean v1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mIsTouch:Z

    .line 332
    invoke-direct {p0, p1, v2}, Lcom/geely/hvac/component/ManualFanLevel;->calculateProgress(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 322
    :cond_3
    iput-boolean v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mIsTouch:Z

    .line 323
    invoke-virtual {p0}, Lcom/geely/hvac/component/ManualFanLevel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 324
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/ManualFanLevel;->calculateProgress(Landroid/view/MotionEvent;)V

    :goto_0
    return v2
.end method

.method public setCurrentLevel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentLevel"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentLevel level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsTouch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mIsTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentRealLevel:I

    if-ltz p1, :cond_2

    .line 193
    iget-boolean v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mIsTouch:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    if-le p1, v0, :cond_1

    .line 197
    iget p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    goto :goto_0

    .line 199
    :cond_1
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/ManualFanLevel;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 206
    iput-boolean p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mEnable:Z

    .line 207
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/geely/hvac/component/ManualFanLevel;->invalidate()V

    return-void
.end method

.method public setFanLevelChangeListener(Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fanLevelChangeListener"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFanLevelChangeListener listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mFanLevelChangeListener:Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;

    return-void
.end method

.method public setMaxLevel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxLevel"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxLevel level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxFanLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    .line 169
    iget p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentRealLevel:I

    iget v0, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    if-le p1, v0, :cond_0

    .line 170
    iget p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mMaxLevel:I

    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    goto :goto_0

    .line 172
    :cond_0
    iget p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentRealLevel:I

    iput p1, p0, Lcom/geely/hvac/component/ManualFanLevel;->mCurrentLevel:I

    .line 174
    :goto_0
    invoke-direct {p0}, Lcom/geely/hvac/component/ManualFanLevel;->calculateDimens()V

    .line 175
    invoke-virtual {p0}, Lcom/geely/hvac/component/ManualFanLevel;->invalidate()V

    return-void
.end method
