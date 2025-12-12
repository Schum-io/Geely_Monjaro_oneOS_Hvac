.class public Lcom/geely/toolchain/hmi/blur/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# instance fields
.field final mBackgroundPaint:Landroid/graphics/Paint;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsClipEnabled:Z

.field final mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpBoundsF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mIsClipEnabled:Z

    .line 32
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBounds:Landroid/graphics/Rect;

    .line 33
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBoundsF:Landroid/graphics/RectF;

    .line 36
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawable",
            "width",
            "height"
        }
    .end annotation

    .line 214
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 217
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private updateBitmapShader()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 206
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBoundsF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 134
    iget-boolean v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mIsClipEnabled:Z

    if-eqz v1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->updateBitmapShader()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBoundsF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 144
    iget v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mRadius:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 145
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 146
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 147
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBounds:Landroid/graphics/Rect;

    neg-int v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mRadius:I

    return v0
.end method

.method public isClipEnabled()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mIsClipEnabled:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 116
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 117
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBoundsF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 118
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mTmpBoundsF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 120
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->invalidateSelf()V

    return-void
.end method

.method public setClipEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clipEnabled"
        }
    .end annotation

    .line 96
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mIsClipEnabled:Z

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cf"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 56
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 181
    iput p1, p0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->mRadius:I

    return-void
.end method
