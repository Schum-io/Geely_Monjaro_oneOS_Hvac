.class public Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/view/card/CardViewImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCardBackground(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;

    return-object p1
.end method


# virtual methods
.method public getBackgroundColor(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getCardBackground(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public getMaxElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getCardBackground(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->getPadding()F

    move-result p1

    return p1
.end method

.method public getMinHeight(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getRadius(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public getMinWidth(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getRadius(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public getRadius(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getCardBackground(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->getRadius()F

    move-result p1

    return p1
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cardView",
            "context",
            "backgroundColor",
            "radius",
            "elevation",
            "maxElevation"
        }
    .end annotation

    .line 17
    new-instance p2, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;

    invoke-direct {p2, p3, p4}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 18
    invoke-interface {p1, p2}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-interface {p1}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    .line 20
    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 21
    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    .line 22
    invoke-virtual {p0, p1, p6}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->setMaxElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;F)V

    return-void
.end method

.method public onCompatPaddingChanged(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getMaxElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->setMaxElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;F)V

    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getMaxElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->setMaxElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;F)V

    return-void
.end method

.method public setBackgroundColor(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cardView",
            "color"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getCardBackground(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cardView",
            "elevation"
        }
    .end annotation

    .line 62
    invoke-interface {p1}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cardView",
            "maxElevation"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getCardBackground(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;

    move-result-object v0

    invoke-interface {p1}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->setPadding(FZZ)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->updatePadding(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cardView",
            "radius"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getCardBackground(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawable;->setRadius(F)V

    return-void
.end method

.method public updatePadding(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardView"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 73
    invoke-interface {p1, v0, v0, v0, v0}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->setShadowPadding(IIII)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getMaxElevation(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F

    move-result v0

    .line 77
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;->getRadius(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F

    move-result v1

    .line 78
    invoke-interface {p1}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 79
    invoke-interface {p1}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/geely/toolchain/hmi/view/card/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 80
    invoke-interface {p1, v2, v0, v2, v0}, Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
