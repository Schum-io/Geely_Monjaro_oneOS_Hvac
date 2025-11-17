.class public Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# instance fields
.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backgroundColor",
            "radius"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mInsetForPadding:Z

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mInsetForRadius:Z

    .line 33
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 38
    iput p2, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mRadius:F

    .line 39
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 40
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    return-void
.end method

.method private createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tint",
            "tintMode"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 183
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 45
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 46
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 87
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 88
    iget-boolean p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mInsetForPadding:Z

    if-eqz p1, :cond_1

    .line 89
    iget p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPadding:F

    iget v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mRadius:F

    iget-boolean v1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {p1, v0, v1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p1

    .line 90
    iget v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPadding:F

    iget v1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mRadius:F

    iget-boolean v2, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v0, v1, v2}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 92
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mRadius:F

    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 78
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    return-void
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outline"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public getPadding()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPadding:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mRadius:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateSet"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 164
    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    .line 167
    invoke-direct {p0, p1, v2}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    return v1

    :cond_2
    return v0
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

    .line 119
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 138
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->invalidateSelf()V

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

    .line 124
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setPadding(FZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "padding",
            "insetForPadding",
            "insetForRadius"
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mInsetForPadding:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mInsetForRadius:Z

    if-ne v0, p3, :cond_0

    return-void

    .line 54
    :cond_0
    iput p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mPadding:F

    .line 55
    iput-boolean p2, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mInsetForPadding:Z

    .line 56
    iput-boolean p3, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mInsetForRadius:Z

    const/4 p1, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 58
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iput p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mRadius:F

    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 114
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tint"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 148
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 149
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tintMode"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 155
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 156
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method
