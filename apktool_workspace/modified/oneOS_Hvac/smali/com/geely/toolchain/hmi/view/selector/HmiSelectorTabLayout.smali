.class public Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;
.super Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;
.source "HmiSelectorTabLayout.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HmiSelectorTabLayout"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected addTab(ILandroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "tabView"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->addTab(ILandroid/view/View;)V

    .line 56
    sget p1, Lcom/geely/toolchain/hmi/R$id;->view_indicator:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;

    const-string p2, "#0D3DA595"

    .line 58
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_main_theme_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->dp2px(F)I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setSelectTabView(IIII)V

    return-void
.end method

.method protected obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 39
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_bg_radius:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->mBgRadius:F

    .line 44
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_textSelectColor:I

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_main_theme_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->mTextSelectColor:I

    .line 46
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_textUnselectColor:I

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_check_off_text_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->mTextUnselectColor:I

    .line 48
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_margin:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 49
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_margin_left:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->mIndicatorMarginLeft:F

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 64
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->setEnabled(Z)V

    .line 65
    sget-object v0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 67
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->setAlpha(F)V

    return-void

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 70
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorTabLayout;->setAlpha(F)V

    return-void
.end method
