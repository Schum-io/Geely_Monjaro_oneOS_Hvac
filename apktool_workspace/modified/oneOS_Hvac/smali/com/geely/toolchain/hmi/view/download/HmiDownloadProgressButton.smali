.class public Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "HmiDownloadProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$DownloadState;,
        Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;
    }
.end annotation


# static fields
.field public static final DOWNLOADING:I = 0x2

.field public static final FINISH:I = 0x4

.field public static final NORMAL:I = 0x1

.field public static final PAUSE:I = 0x3


# instance fields
.field private mAnimationDuration:J

.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundSecondColor:I

.field private mButtonRadius:F

.field private mCurrentText:Ljava/lang/CharSequence;

.field private mDowningText:Ljava/lang/String;

.field private mFinishText:Ljava/lang/String;

.field private mMaxProgress:I

.field private mMinProgress:I

.field private mNormalText:Ljava/lang/String;

.field private mOnDownLoadClickListener:Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;

.field private mPauseText:Ljava/lang/String;

.field private mProgress:F

.field private mProgressAnimation:Landroid/animation/ValueAnimator;

.field private mProgressPercent:F

.field private mState:I

.field private mTextColor:I

.field private mTextCoverColor:I

.field private volatile mTextPaint:Landroid/graphics/Paint;

.field private mToProgress:F


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

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 110
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 80
    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mState:I

    .line 111
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->init()V

    .line 114
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setupAnimations()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mToProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    return p0
.end method

.method static synthetic access$102(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMaxProgress:I

    return p0
.end method

.method static synthetic access$300(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setState(I)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundBounds:Landroid/graphics/RectF;

    .line 243
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 244
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 246
    :cond_0
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 262
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 263
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mButtonRadius:F

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 249
    :cond_1
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    iget v2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMaxProgress:I

    int-to-float v2, v2

    const/4 v3, 0x0

    add-float/2addr v2, v3

    div-float/2addr v0, v2

    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressPercent:F

    .line 250
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getMeasuredWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    new-array v7, v1, [I

    iget v2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundColor:I

    const/4 v8, 0x0

    aput v2, v7, v8

    iget v2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundSecondColor:I

    const/4 v9, 0x1

    aput v2, v7, v9

    new-array v1, v1, [F

    iget v2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressPercent:F

    aput v2, v1, v8

    const v8, 0x3a83126f    # 0.001f

    add-float/2addr v2, v8

    aput v2, v1, v9

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 255
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 257
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mButtonRadius:F

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawTextAbove(Landroid/graphics/Canvas;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 270
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v4, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    sub-float/2addr v2, v4

    .line 272
    iget-object v4, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mCurrentText:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    const-string v4, ""

    .line 273
    iput-object v4, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mCurrentText:Ljava/lang/CharSequence;

    .line 275
    :cond_0
    iget-object v4, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mCurrentText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 276
    iget v6, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v8, 0x3

    if-eq v6, v8, :cond_1

    .line 309
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextCoverColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mCurrentText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    div-float/2addr v6, v5

    iget-object v4, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 279
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    .line 281
    iget v8, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressPercent:F

    mul-float/2addr v8, v6

    div-float v9, v6, v5

    div-float v10, v4, v5

    sub-float v11, v9, v10

    add-float v12, v9, v10

    sub-float/2addr v10, v9

    add-float/2addr v10, v8

    div-float/2addr v10, v4

    cmpg-float v9, v8, v11

    const/4 v11, 0x0

    if-gtz v9, :cond_2

    .line 290
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 291
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextColor:I

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    cmpg-float v8, v8, v12

    if-gtz v8, :cond_3

    .line 293
    new-instance v8, Landroid/graphics/LinearGradient;

    sub-float v9, v6, v4

    div-float v13, v9, v5

    const/4 v14, 0x0

    add-float v9, v6, v4

    div-float v15, v9, v5

    const/16 v16, 0x0

    new-array v9, v7, [I

    iget v11, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextCoverColor:I

    const/4 v12, 0x0

    aput v11, v9, v12

    iget v11, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextColor:I

    aput v11, v9, v3

    new-array v7, v7, [F

    aput v10, v7, v12

    const v11, 0x3a83126f    # 0.001f

    add-float/2addr v10, v11

    aput v10, v7, v3

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 298
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextColor:I

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 301
    :cond_3
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 302
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextCoverColor:I

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    :goto_0
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mCurrentText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sub-float/2addr v6, v4

    div-float/2addr v6, v5

    iget-object v4, v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private drawing(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->drawBackground(Landroid/graphics/Canvas;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->drawTextAbove(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private init()V
    .locals 3

    const/16 v0, 0x64

    .line 144
    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMaxProgress:I

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMinProgress:I

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    .line 147
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mNormalText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4e0b\u8f7d"

    .line 148
    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mNormalText:Ljava/lang/String;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mDowningText:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 151
    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mDowningText:Ljava/lang/String;

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mFinishText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u6253\u5f00"

    .line 154
    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mFinishText:Ljava/lang/String;

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mPauseText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u7ee7\u7eed"

    .line 157
    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mPauseText:Ljava/lang/String;

    .line 160
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    .line 165
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 169
    invoke-direct {p0, v1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setState(I)V

    .line 170
    new-instance v0, Lcom/geely/toolchain/hmi/view/download/-$$Lambda$HmiDownloadProgressButton$kzd0LZk_35KiSQc_D96VrmJiwsI;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/view/download/-$$Lambda$HmiDownloadProgressButton$kzd0LZk_35KiSQc_D96VrmJiwsI;-><init>(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)V

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 119
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 120
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_background_color:I

    const-string v0, "#6699ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundColor:I

    .line 121
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_background_second_color:I

    const v0, -0x333334

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundSecondColor:I

    .line 122
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_radius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mButtonRadius:F

    .line 123
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_text_color:I

    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mBackgroundColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextColor:I

    .line 124
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_text_cover_color:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextCoverColor:I

    .line 125
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_text_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mNormalText:Ljava/lang/String;

    .line 126
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_text_downing:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mDowningText:Ljava/lang/String;

    .line 127
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_text_finish:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mFinishText:Ljava/lang/String;

    .line 128
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_text_pause:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mPauseText:Ljava/lang/String;

    .line 129
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDownloadProgressButton_hmi_progress_btn_animation_duration:I

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mAnimationDuration:J

    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setProgressText(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mDowningText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 329
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mState:I

    if-eq v0, p1, :cond_3

    .line 330
    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 332
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mFinishText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 333
    iget p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMaxProgress:I

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 335
    iget p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMinProgress:I

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mToProgress:F

    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    .line 336
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mNormalText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 338
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mPauseText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->invalidate()V

    :cond_3
    return-void
.end method

.method private setupAnimations()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 192
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressAnimation:Landroid/animation/ValueAnimator;

    .line 193
    new-instance v1, Lcom/geely/toolchain/hmi/view/download/-$$Lambda$HmiDownloadProgressButton$vlVPDV6jX4y970B7zkZB1WfRoWA;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/view/download/-$$Lambda$HmiDownloadProgressButton$vlVPDV6jX4y970B7zkZB1WfRoWA;-><init>(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;-><init>(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x4

    .line 324
    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setState(I)V

    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 430
    iget-wide v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mAnimationDuration:J

    return-wide v0
.end method

.method public getButtonRadius()F
    .locals 1

    .line 389
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mButtonRadius:F

    return v0
.end method

.method public getCurrentText()Ljava/lang/CharSequence;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mCurrentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxProgress()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMaxProgress:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMinProgress:I

    return v0
.end method

.method public getOnDownLoadClickListener()Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mOnDownLoadClickListener:Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 354
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    return v0
.end method

.method public getState()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mState:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextColor:I

    return v0
.end method

.method public getTextCoverColor()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextCoverColor:I

    return v0
.end method

.method public synthetic lambda$init$0$HmiDownloadProgressButton(Landroid/view/View;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mOnDownLoadClickListener:Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;

    if-nez v0, :cond_0

    .line 172
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mOnDownLoadClickListener:Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;->onClickDownload()V

    .line 176
    invoke-direct {p0, v2}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setState(I)V

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setProgressText(I)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v2, :cond_2

    .line 179
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mOnDownLoadClickListener:Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;->onClickPause()V

    .line 180
    invoke-direct {p0, v1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setState(I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 182
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mOnDownLoadClickListener:Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;->onClickResume()V

    .line 183
    invoke-direct {p0, v2}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setState(I)V

    .line 184
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setProgressText(I)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 186
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mOnDownLoadClickListener:Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;->onClickFinish()V

    .line 188
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setupAnimations$1$HmiDownloadProgressButton(Landroid/animation/ValueAnimator;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 196
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mToProgress:F

    iget v1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    float-to-int p1, v0

    .line 197
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setProgressText(I)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 229
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 230
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->drawing(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 449
    check-cast p1, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;

    .line 450
    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 451
    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->access$400(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mState:I

    .line 452
    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->access$500(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    .line 453
    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->access$600(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mCurrentText:Ljava/lang/CharSequence;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 458
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 459
    new-instance v1, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;

    iget v2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgress:F

    float-to-int v2, v2

    iget v3, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mState:I

    iget-object v4, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mCurrentText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;-><init>(Landroid/os/Parcelable;IILjava/lang/String;)V

    return-object v1
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x3

    .line 385
    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setState(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 320
    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setState(I)V

    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationDuration"
        }
    .end annotation

    .line 434
    iput-wide p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mAnimationDuration:J

    .line 435
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setButtonRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonRadius"
        }
    .end annotation

    .line 393
    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mButtonRadius:F

    return-void
.end method

.method public setCurrentText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charSequence"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mCurrentText:Ljava/lang/CharSequence;

    .line 346
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->invalidate()V

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxProgress"
        }
    .end annotation

    .line 426
    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMaxProgress:I

    return-void
.end method

.method public setMinProgress(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minProgress"
        }
    .end annotation

    .line 418
    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMinProgress:I

    return-void
.end method

.method public setOnDownLoadClickListener(Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onDownLoadClickListener"
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mOnDownLoadClickListener:Lcom/geely/toolchain/hmi/view/download/OnDownLoadClickListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 363
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMinProgress:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mToProgress:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mMaxProgress:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mToProgress:F

    const/4 p1, 0x2

    .line 369
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setState(I)V

    .line 370
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 371
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 372
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    .line 402
    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextColor:I

    return-void
.end method

.method public setTextCoverColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textCoverColor"
        }
    .end annotation

    .line 410
    iput p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextCoverColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 136
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->invalidate()V

    return-void
.end method
