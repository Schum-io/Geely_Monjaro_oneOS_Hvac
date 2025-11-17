.class public Lcom/geely/toolchain/hmi/view/HmiRingProgress;
.super Landroid/view/View;
.source "HmiRingProgress.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiRingProgress"


# instance fields
.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F


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

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiRingProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiRingProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    .line 85
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiRingProgress:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiRingProgress_hmiRoundColor:I

    const-string v0, "#14FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundColor:I

    .line 90
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiRingProgress_hmiRoundProgressColor:I

    const-string v0, "#1368FB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundProgressColor:I

    .line 91
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiRingProgress_hmiRoundWidth:I

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundWidth:F

    .line 92
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiRingProgress_hmiRoundMax:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->max:I

    .line 93
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiRingProgress_hmiRoundProgress:I

    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->progress:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->progress:I

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgress()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->progress:I

    return v0
.end method

.method public getRoundColor()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundColor:I

    return v0
.end method

.method public getRoundProgressColor()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundProgressColor:I

    return v0
.end method

.method public getRoundWidth()F
    .locals 1

    .line 186
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundWidth:F

    return v0
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

    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 109
    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 111
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v3, v2

    .line 119
    iget-object v4, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundProgressColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    new-instance v5, Landroid/graphics/RectF;

    sub-int v1, v0, v2

    int-to-float v1, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v5, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->progress:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->max:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw: endAngle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiRingProgress"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v9, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->paint:Landroid/graphics/Paint;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    monitor-enter p0

    if-gtz p1, :cond_0

    :try_start_0
    const-string v0, "HmiRingProgress"

    const-string v1, "max more than 0 "

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    const-string v0, "HmiRingProgress"

    if-gez p1, :cond_0

    const-string v1, "progress not less than 0"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->max:I

    if-le p1, v1, :cond_1

    move p1, v1

    .line 180
    :cond_1
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->progress:I

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress: progress = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->progress:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->postInvalidate()V

    return-void
.end method

.method public setRoundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundColor"
        }
    .end annotation

    .line 203
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundColor:I

    return-void
.end method

.method public setRoundProgressColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundProgressColor"
        }
    .end annotation

    .line 207
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundProgressColor:I

    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundWidth"
        }
    .end annotation

    .line 190
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiRingProgress;->roundWidth:F

    return-void
.end method
