.class public Lcom/geely/toolchain/hmi/view/HmiShadowView;
.super Landroid/widget/FrameLayout;
.source "HmiShadowView.java"


# instance fields
.field private gradientColors:[I

.field private gradientPositions:[F

.field private final mBgPaint:Landroid/graphics/Paint;

.field private shadowInscribedRadius:F

.field private shadowMaxLength:F


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

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object p3, Lcom/geely/toolchain/hmi/R$styleable;->HmiShadowView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiShadowView_shadowMaxLength:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    .line 47
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiShadowView_shadowRadius:I

    iget p3, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowInscribedRadius:F

    .line 49
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiShadowView_shadowStartColor:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 50
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiShadowView_shadowEndColor:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    .line 55
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    aput p2, p1, p3

    aput v0, p1, v1

    .line 61
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 31
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/geely/toolchain/hmi/view/HmiShadowView;->getHeight()I

    move-result v1

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/geely/toolchain/hmi/view/HmiShadowView;->getWidth()I

    move-result v2

    .line 71
    iget v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowInscribedRadius:F

    .line 72
    iget-object v4, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget v15, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    cmpl-float v3, v3, v15

    const/4 v4, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/4 v14, 0x4

    const/high16 v20, 0x40000000    # 2.0f

    if-ltz v3, :cond_1

    .line 74
    iget v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowInscribedRadius:F

    div-float v5, v15, v20

    add-float v8, v3, v5

    div-float v15, v15, v20

    add-float v9, v15, v8

    cmpg-float v3, v9, v4

    if-gtz v3, :cond_0

    .line 77
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 81
    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v5, v4, v20

    div-float v6, v4, v20

    mul-float v10, v8, v20

    div-float v11, v4, v20

    add-float/2addr v11, v10

    div-float v4, v4, v20

    add-float/2addr v4, v10

    invoke-direct {v3, v5, v6, v11, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 82
    new-instance v11, Landroid/graphics/RectF;

    int-to-float v12, v2

    sub-float v2, v12, v10

    iget v4, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v5, v4, v20

    sub-float v5, v2, v5

    div-float v6, v4, v20

    div-float v13, v4, v20

    sub-float v13, v12, v13

    div-float v4, v4, v20

    add-float/2addr v4, v10

    invoke-direct {v11, v5, v6, v13, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    new-instance v13, Landroid/graphics/RectF;

    iget v4, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v5, v4, v20

    sub-float/2addr v2, v5

    int-to-float v15, v1

    sub-float v1, v15, v10

    div-float v5, v4, v20

    sub-float v5, v1, v5

    div-float v6, v4, v20

    sub-float v6, v12, v6

    div-float v4, v4, v20

    sub-float v4, v15, v4

    invoke-direct {v13, v2, v5, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 84
    new-instance v6, Landroid/graphics/RectF;

    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v4, v2, v20

    div-float v5, v2, v20

    sub-float/2addr v1, v5

    div-float v5, v2, v20

    add-float/2addr v10, v5

    div-float v2, v2, v20

    sub-float v2, v15, v2

    invoke-direct {v6, v4, v1, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v4, v2, v20

    add-float v22, v4, v8

    div-float v2, v2, v20

    add-float v23, v8, v2

    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v4, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v1

    move/from16 v24, v9

    move-object/from16 v25, v2

    move-object/from16 v26, v4

    invoke-direct/range {v21 .. v27}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 90
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v10, 0x0

    .line 92
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v10

    move-object v10, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 94
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v3, v2, v20

    sub-float v3, v12, v3

    sub-float v22, v3, v8

    div-float v2, v2, v20

    add-float v23, v8, v2

    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-direct/range {v21 .. v27}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 95
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, 0x0

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    .line 96
    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 98
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v3, v2, v20

    sub-float v3, v12, v3

    sub-float v22, v3, v8

    sub-float v11, v15, v8

    div-float v2, v2, v20

    sub-float v23, v11, v2

    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-direct/range {v21 .. v27}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 99
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    .line 100
    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 102
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v3, v2, v20

    add-float v22, v3, v8

    div-float v2, v2, v20

    sub-float v23, v11, v2

    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-direct/range {v21 .. v27}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 103
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v3, 0x42b40000    # 90.0f

    .line 104
    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-array v1, v14, [F

    new-array v2, v14, [F

    new-array v3, v14, [F

    new-array v4, v14, [F

    .line 111
    iget v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v6, v5, v20

    aput v6, v1, v19

    div-float v6, v5, v20

    add-float/2addr v6, v8

    aput v6, v1, v18

    div-float v6, v5, v20

    aput v6, v1, v17

    div-float v5, v5, v20

    sub-float v5, v11, v5

    aput v5, v1, v16

    .line 115
    new-instance v5, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v6, v6, v20

    add-float v22, v6, v8

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v9, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v9

    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 116
    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    iget-object v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 121
    iget v1, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v5, v1, v20

    add-float/2addr v5, v8

    aput v5, v2, v19

    div-float v5, v1, v20

    aput v5, v2, v18

    div-float v5, v1, v20

    sub-float v5, v12, v5

    sub-float/2addr v5, v8

    aput v5, v2, v17

    div-float v1, v1, v20

    aput v1, v2, v16

    .line 125
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v22, 0x0

    iget v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v5, v5, v20

    add-float v23, v5, v8

    iget-object v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v1

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 126
    iget-object v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    iget-object v1, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 131
    iget v1, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v2, v1, v20

    sub-float v2, v12, v2

    aput v2, v3, v19

    div-float v2, v1, v20

    add-float/2addr v2, v8

    aput v2, v3, v18

    div-float v2, v1, v20

    sub-float v2, v12, v2

    aput v2, v3, v17

    div-float v1, v1, v20

    sub-float v1, v11, v1

    aput v1, v3, v16

    .line 135
    new-instance v1, Landroid/graphics/LinearGradient;

    sub-float v2, v12, v8

    iget v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v5, v5, v20

    sub-float v22, v2, v5

    const/16 v23, 0x0

    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v1

    move/from16 v24, v12

    move-object/from16 v26, v2

    move-object/from16 v27, v5

    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 136
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 137
    iget-object v1, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 141
    iget v1, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v2, v1, v20

    add-float/2addr v2, v8

    aput v2, v4, v19

    div-float v2, v1, v20

    sub-float v2, v15, v2

    aput v2, v4, v18

    div-float v2, v1, v20

    sub-float/2addr v12, v2

    sub-float/2addr v12, v8

    aput v12, v4, v17

    div-float v1, v1, v20

    sub-float v1, v15, v1

    aput v1, v4, v16

    .line 145
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v22, 0x0

    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v2, v2, v20

    sub-float v23, v11, v2

    const/16 v24, 0x0

    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v1

    move/from16 v25, v15

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 146
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 147
    iget-object v1, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    cmpg-float v3, v15, v4

    if-gtz v3, :cond_2

    .line 151
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 155
    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    iget v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    invoke-direct {v3, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 156
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v5, v2

    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    sub-float v8, v5, v2

    invoke-direct {v6, v8, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    new-instance v2, Landroid/graphics/RectF;

    iget v8, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    sub-float v9, v5, v8

    int-to-float v1, v1

    sub-float v8, v1, v8

    invoke-direct {v2, v9, v8, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 158
    new-instance v13, Landroid/graphics/RectF;

    iget v8, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    sub-float v9, v1, v8

    invoke-direct {v13, v4, v9, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 163
    new-instance v4, Landroid/graphics/RadialGradient;

    iget v10, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    iget-object v12, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v11, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v4

    move v9, v10

    move-object/from16 v22, v11

    move v11, v15

    move-object/from16 v23, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v21

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 164
    iget-object v8, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/4 v9, 0x1

    .line 166
    iget-object v10, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    move/from16 v29, v1

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move-object v2, v3

    move v3, v4

    move v4, v8

    move/from16 v30, v5

    move v5, v9

    move-object/from16 v22, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 168
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v10, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    sub-float v9, v30, v10

    iget-object v12, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v13, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 169
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, 0x0

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x1

    .line 170
    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    sub-float v9, v30, v2

    sub-float v10, v29, v2

    iget-object v12, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v13, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 173
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v4, 0x42b40000    # 90.0f

    .line 174
    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 176
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v9, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    sub-float v10, v29, v9

    iget-object v12, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v13, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 177
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v3, 0x42b40000    # 90.0f

    .line 178
    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v1, 0x4

    new-array v2, v1, [F

    new-array v3, v1, [F

    new-array v4, v1, [F

    new-array v1, v1, [F

    .line 185
    iget v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v6, v5, v20

    aput v6, v2, v19

    aput v5, v2, v18

    div-float v6, v5, v20

    aput v6, v2, v17

    sub-float v5, v29, v5

    aput v5, v2, v16

    .line 189
    new-instance v5, Landroid/graphics/LinearGradient;

    iget v9, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v14, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 190
    iget-object v6, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 191
    iget-object v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 195
    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    aput v2, v3, v19

    div-float v5, v2, v20

    aput v5, v3, v18

    sub-float v5, v30, v2

    aput v5, v3, v17

    div-float v2, v2, v20

    aput v2, v3, v16

    .line 199
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    iget v10, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    iget-object v13, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v14, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 200
    iget-object v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 201
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 205
    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    div-float v3, v2, v20

    sub-float v5, v30, v3

    aput v5, v4, v19

    aput v2, v4, v18

    div-float v3, v2, v20

    sub-float v5, v30, v3

    aput v5, v4, v17

    sub-float v2, v29, v2

    aput v2, v4, v16

    .line 209
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    sub-float v22, v30, v3

    const/16 v23, 0x0

    const/16 v25, 0x0

    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v5, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v2

    move/from16 v24, v30

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 210
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 215
    iget v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    aput v2, v1, v19

    div-float v3, v2, v20

    sub-float v3, v29, v3

    aput v3, v1, v18

    sub-float v5, v30, v2

    aput v5, v1, v17

    div-float v2, v2, v20

    sub-float v2, v29, v2

    aput v2, v1, v16

    .line 219
    new-instance v2, Landroid/graphics/LinearGradient;

    const/16 v22, 0x0

    iget v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    sub-float v23, v29, v3

    const/16 v24, 0x0

    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    iget-object v4, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v21, v2

    move/from16 v25, v29

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 220
    iget-object v3, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 221
    iget-object v2, v0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 224
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getGradientColors()[I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    return-object v0
.end method

.method public getGradientPositions()[F
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    return-object v0
.end method

.method public getShadowInscribedRadius()F
    .locals 1

    .line 258
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowInscribedRadius:F

    return v0
.end method

.method public getShadowMaxLength()F
    .locals 1

    .line 249
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    return v0
.end method

.method public setGradientColors([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gradientColors"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientColors:[I

    .line 233
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    if-eqz v0, :cond_0

    array-length p1, p1

    array-length v0, v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiShadowView;->invalidate()V

    return-void
.end method

.method public setGradientPositions([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gradientPositions"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->gradientPositions:[F

    .line 245
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiShadowView;->invalidate()V

    return-void
.end method

.method public setShadowInscribedRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowInscribedRadius"
        }
    .end annotation

    .line 262
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowInscribedRadius:F

    .line 263
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiShadowView;->invalidate()V

    return-void
.end method

.method public setShadowMaxLength(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowMaxLength"
        }
    .end annotation

    .line 253
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowView;->shadowMaxLength:F

    .line 254
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiShadowView;->invalidate()V

    return-void
.end method
