.class public Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "HmiTextViewWithBg.java"


# static fields
.field private static final ONE_LINE:I = 0x1


# instance fields
.field private mNormalColor:I

.field private mPressColor:I

.field private mRadius:F


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

    .line 30
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mNormalColor:I

    .line 25
    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mPressColor:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mRadius:F

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mNormalColor:I

    .line 25
    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mPressColor:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mRadius:F

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mNormalColor:I

    .line 25
    iput p3, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mPressColor:I

    const/4 p3, 0x0

    .line 26
    iput p3, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mRadius:F

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    if-nez p2, :cond_0

    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiViewWithBackground:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiViewWithBackground_normalColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 51
    sget v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiViewWithBackground_pressColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 53
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HmiViewWithBackground_radius:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0, p2, v1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->setBackground(IIF)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
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

    .line 76
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 77
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->getLineCount()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    const/16 p1, 0x11

    .line 79
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->setGravity(I)V

    goto :goto_0

    :cond_0
    const p1, 0x800003

    .line 81
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setBackground(IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "normalColor",
            "pressColor",
            "radius"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/util/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    .line 69
    iput p3, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mRadius:F

    .line 70
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mNormalColor:I

    .line 71
    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mPressColor:I

    return-void
.end method

.method public setNormalColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalColor"
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mPressColor:I

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->setBackground(IIF)V

    return-void
.end method

.method public setPressColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressColor"
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mNormalColor:I

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->mRadius:F

    invoke-virtual {p0, v0, p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextViewWithBg;->setBackground(IIF)V

    return-void
.end method
