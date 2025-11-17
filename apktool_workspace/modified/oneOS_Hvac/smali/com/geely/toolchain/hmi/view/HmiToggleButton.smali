.class public Lcom/geely/toolchain/hmi/view/HmiToggleButton;
.super Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;
.source "HmiToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiToggleButton"


# instance fields
.field bounds:Landroid/graphics/Rect;

.field protected drawablePosition:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

.field protected drawableWidth:I

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

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->bounds:Landroid/graphics/Rect;

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

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->bounds:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->applyAttributes(Landroid/util/AttributeSet;)V

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

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->bounds:Landroid/graphics/Rect;

    .line 64
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->applyAttributes(Landroid/util/AttributeSet;)V

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
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->bounds:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->bounds:Landroid/graphics/Rect;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getCompoundDrawablePadding()I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->iconPadding:I

    .line 78
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_selector_toggle_button_bg:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
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
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    sget-object p2, Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;->NONE:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    const/4 p3, 0x3

    const/4 p4, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 87
    aget-object p2, p1, v0

    aget-object v1, p1, p5

    aget-object v2, p1, p4

    aget-object p1, p1, p3

    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 98
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 99
    iget-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    sget-object v1, Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    if-ne p2, v1, :cond_1

    move p2, p4

    goto :goto_0

    :cond_1
    move p2, p5

    .line 100
    :goto_0
    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawableWidth:I

    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->iconPadding:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 101
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    int-to-double v4, v1

    div-double/2addr v4, v2

    sub-double/2addr p1, v4

    double-to-int p1, p1

    neg-int p2, p1

    .line 103
    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->iconPadding:I

    add-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->setCompoundDrawablePadding(I)V

    .line 105
    sget-object p2, Lcom/geely/toolchain/hmi/view/HmiToggleButton$1;->$SwitchMap$com$geely$toolchain$hmi$view$HmiToggleButton$DrawablePositions:[I

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, p5, :cond_4

    if-eq p2, p4, :cond_3

    if-eq p2, p3, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->setPadding(IIII)V

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p0, p1, p2, p1, p3}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->setPadding(IIII)V

    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->setPadding(IIII)V

    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->setPadding(IIII)V

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

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawableWidth:I

    .line 132
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawableWidth:I

    .line 135
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;->LEFT:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 137
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawableWidth:I

    .line 138
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;->RIGHT:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    goto :goto_0

    .line 140
    :cond_2
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;->NONE:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiToggleButton$DrawablePositions;

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->requestLayout()V

    return-void
.end method

.method protected setIconDrawable()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->mOnIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->mOffIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/geely/toolchain/hmi/util/UiUtil;->createCheckDrawableStateList(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/geely/toolchain/hmi/view/HmiToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
