.class public Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;
.super Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;
.source "HmiSquareToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiToggleButton"


# instance fields
.field bounds:Landroid/graphics/Rect;

.field protected drawableHeight:I

.field protected drawablePosition:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

.field protected iconPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->bounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->bounds:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->applyAttributes(Landroid/util/AttributeSet;)V

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
            "defStyle"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->bounds:Landroid/graphics/Rect;

    .line 64
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->applyAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected applyAttributes(Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->bounds:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->bounds:Landroid/graphics/Rect;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getCompoundDrawablePadding()I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->iconPadding:I

    .line 78
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_selector_toggle_button_bg:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 83
    invoke-super/range {p0 .. p5}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->onLayout(ZIIII)V

    .line 84
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    iget-object p4, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->bounds:Landroid/graphics/Rect;

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 88
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 89
    iget-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    sget-object p3, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->TOP_AND_BOTTOM:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    const/4 p4, 0x2

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, v0

    .line 90
    :goto_0
    iget p3, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawableHeight:I

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->iconPadding:I

    mul-int/2addr v1, p2

    add-int/2addr p3, v1

    add-int/2addr p3, p1

    .line 91
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getHeight()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v1

    int-to-double v3, p3

    div-double/2addr v3, v1

    sub-double/2addr p1, v3

    double-to-int p1, p1

    neg-int p2, p1

    .line 93
    iget p3, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->iconPadding:I

    add-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->setCompoundDrawablePadding(I)V

    .line 95
    sget-object p2, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$1;->$SwitchMap$com$geely$toolchain$hmi$view$HmiSquareToggleButton$DrawablePositions:[I

    iget-object p3, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    invoke-virtual {p3}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v0, :cond_3

    if-eq p2, p4, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getPaddingRight()I

    move-result p2

    invoke-virtual {p0, p1, p5, p2, p5}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->setPadding(IIII)V

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getPaddingRight()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3, p1}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->setPadding(IIII)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getPaddingRight()I

    move-result p3

    invoke-virtual {p0, p2, p5, p3, p1}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->setPadding(IIII)V

    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->getPaddingRight()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3, p5}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->setPadding(IIII)V

    :goto_1
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 121
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawableHeight:I

    .line 122
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->TOP_AND_BOTTOM:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawableHeight:I

    .line 125
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->TOP:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 127
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawableHeight:I

    .line 128
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->BOTTOM:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    goto :goto_0

    .line 130
    :cond_2
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;->NONE:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton$DrawablePositions;

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->requestLayout()V

    return-void
.end method

.method protected setIconDrawable()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->mOnIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->mOffIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/geely/toolchain/hmi/util/UiUtil;->createCheckDrawableStateList(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/geely/toolchain/hmi/view/HmiSquareToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
