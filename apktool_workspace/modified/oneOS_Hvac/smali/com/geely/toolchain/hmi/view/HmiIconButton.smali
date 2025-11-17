.class public Lcom/geely/toolchain/hmi/view/HmiIconButton;
.super Lcom/geely/toolchain/hmi/view/HmiButton;
.source "HmiIconButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HmiIconButton"


# instance fields
.field bounds:Landroid/graphics/Rect;

.field protected drawablePosition:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

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

    .line 52
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiButton;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->bounds:Landroid/graphics/Rect;

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

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->bounds:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->applyAttributes(Landroid/util/AttributeSet;)V

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

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->bounds:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->applyAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected applyAttributes(Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->bounds:Landroid/graphics/Rect;

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiIconButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiIconButton_hmiIconPadding:I

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getCompoundDrawablePadding()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAttributes: HmiIconButton_iconPadding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmiIconButton"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->setIconPadding(I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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

    .line 90
    invoke-super/range {p0 .. p5}, Lcom/geely/toolchain/hmi/view/HmiButton;->onLayout(ZIIII)V

    .line 91
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    sget-object p2, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->NONE:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    const/4 p3, 0x3

    const/4 p4, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 94
    aget-object p2, p1, v0

    aget-object v1, p1, p5

    aget-object v2, p1, p4

    aget-object p1, p1, p3

    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 105
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 106
    iget-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    sget-object v1, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    if-ne p2, v1, :cond_1

    move p2, p4

    goto :goto_0

    :cond_1
    move p2, p5

    .line 107
    :goto_0
    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawableWidth:I

    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->iconPadding:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 108
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getWidth()I

    move-result p2

    sub-int/2addr p2, v1

    int-to-double v1, p2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    double-to-int p2, v1

    neg-int v1, p2

    .line 110
    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->iconPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->setCompoundDrawablePadding(I)V

    .line 113
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/geely/toolchain/hmi/util/UiUtil;->dp(Landroid/content/Context;I)I

    move-result v1

    .line 115
    sget-object v2, Lcom/geely/toolchain/hmi/view/HmiIconButton$1;->$SwitchMap$com$geely$toolchain$hmi$view$HmiIconButton$DrawablePositions:[I

    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    invoke-virtual {v3}, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, p5, :cond_4

    if-eq v2, p4, :cond_3

    if-eq v2, p3, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->setPadding(IIII)V

    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p0, p2, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->setPadding(IIII)V

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    if-lez p1, :cond_5

    .line 117
    iget p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawableWidth:I

    if-lez p1, :cond_5

    sub-int/2addr p2, v1

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->getPaddingBottom()I

    move-result p3

    .line 117
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->setPadding(IIII)V

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

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Lcom/geely/toolchain/hmi/view/HmiButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawableWidth:I

    .line 143
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawableWidth:I

    .line 146
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->LEFT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 148
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawableWidth:I

    .line 149
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->RIGHT:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    goto :goto_0

    .line 151
    :cond_2
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;->NONE:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->drawablePosition:Lcom/geely/toolchain/hmi/view/HmiIconButton$DrawablePositions;

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->requestLayout()V

    return-void
.end method

.method public setIconPadding(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIconPadding: padding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiIconButton"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiIconButton;->iconPadding:I

    .line 85
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->requestLayout()V

    return-void
.end method
