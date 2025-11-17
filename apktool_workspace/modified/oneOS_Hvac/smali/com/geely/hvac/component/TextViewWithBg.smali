.class public Lcom/geely/hvac/component/TextViewWithBg;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "TextViewWithBg.java"


# instance fields
.field private mAutoEnable:Z

.field private mAutoMode:I

.field private mDisableBackColor:I

.field private mDisableTextColor:I

.field private mDisplayView:Ljava/lang/String;

.field private mLevel:I

.field private mNormalColor:I

.field private mNormalTextColor:I

.field private mPressColor:I

.field private mPressTextColor:I

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalColor:I

    .line 20
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressColor:I

    .line 21
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressTextColor:I

    .line 22
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalTextColor:I

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    .line 26
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mLevel:I

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mAutoMode:I

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/TextViewWithBg;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalColor:I

    .line 20
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressColor:I

    .line 21
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressTextColor:I

    .line 22
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalTextColor:I

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    .line 26
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mLevel:I

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mAutoMode:I

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/TextViewWithBg;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 19
    iput p3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalColor:I

    .line 20
    iput p3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressColor:I

    .line 21
    iput p3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressTextColor:I

    .line 22
    iput p3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalTextColor:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    .line 26
    iput p3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mLevel:I

    const/4 p3, -0x1

    .line 27
    iput p3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mAutoMode:I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/TextViewWithBg;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bindEnable(Lcom/geely/hvac/component/TextViewWithBg;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "enable"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindEnable enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextViewWithBg"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/TextViewWithBg;->setAutoEnable(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/geely/hvac/component/TextViewWithBg;->setTextAndBackMode()V

    return-void
.end method

.method public static bindSeatLevel(Lcom/geely/hvac/component/TextViewWithBg;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "level",
            "autoMode"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindSeatLevel change = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextViewWithBg"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/geely/hvac/component/TextViewWithBg;->setLeveAndMode(II)V

    .line 76
    invoke-virtual {p0}, Lcom/geely/hvac/component/TextViewWithBg;->setTextAndBackMode()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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

    .line 50
    :cond_0
    sget-object v0, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget p2, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_normalColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 52
    sget v1, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_pressColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 53
    sget v2, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_radius:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 54
    sget v3, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_normalTextColor:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalTextColor:I

    .line 55
    sget v3, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_pressTextColor:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressTextColor:I

    .line 56
    sget v3, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_disableBackColor:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mDisableBackColor:I

    .line 57
    sget v3, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_disableTextColor:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mDisableTextColor:I

    .line 58
    sget v0, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_displayView:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mDisplayView:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p0, p2, v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setBackground(IIF)V

    return-void
.end method


# virtual methods
.method public getDisplayView()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mDisplayView:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoBackground()V
    .locals 2

    .line 121
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressColor:I

    iget v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    invoke-static {p0, v0, v1}, Lcom/geely/hvac/utils/UiUtil;->setHandBackColor(Landroid/widget/TextView;IF)V

    return-void
.end method

.method public setAutoColor()V
    .locals 2

    .line 129
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressTextColor:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalTextColor:I

    if-nez v1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {p0, v0}, Lcom/geely/hvac/utils/UiUtil;->setHandTextColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setAutoEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 153
    iput-boolean p1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mAutoEnable:Z

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

    .line 114
    invoke-static {p0, p1, p2, p3}, Lcom/geely/hvac/utils/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    .line 115
    iput p3, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    .line 116
    iput p1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalColor:I

    .line 117
    iput p2, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressColor:I

    return-void
.end method

.method public setDisableMode()V
    .locals 2

    .line 148
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mDisableBackColor:I

    iget v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    invoke-static {p0, v0, v0, v1}, Lcom/geely/hvac/utils/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    .line 149
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mDisableTextColor:I

    invoke-static {p0, v0}, Lcom/geely/hvac/utils/UiUtil;->setHandTextColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 104
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 106
    iget p1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalColor:I

    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressColor:I

    iget v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    invoke-static {p0, p1, v0, v1}, Lcom/geely/hvac/utils/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    goto :goto_0

    .line 108
    :cond_0
    iget p1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalColor:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    invoke-static {p0, p1, v0, v1}, Lcom/geely/hvac/utils/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    :goto_0
    return-void
.end method

.method public setHandBackColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 157
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    invoke-static {p0, p1, v0}, Lcom/geely/hvac/utils/UiUtil;->setHandBackColor(Landroid/widget/TextView;IF)V

    return-void
.end method

.method public setLeveAndMode(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "autoMode"
        }
    .end annotation

    .line 143
    iput p1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mLevel:I

    .line 144
    iput p2, p0, Lcom/geely/hvac/component/TextViewWithBg;->mAutoMode:I

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

    .line 65
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressColor:I

    iget v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setBackground(IIF)V

    return-void
.end method

.method public setNotAutoBackground()V
    .locals 2

    .line 125
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalColor:I

    iget v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    invoke-static {p0, v0, v1}, Lcom/geely/hvac/utils/UiUtil;->setHandBackColor(Landroid/widget/TextView;IF)V

    return-void
.end method

.method public setNotAutoColor()V
    .locals 1

    .line 136
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mPressTextColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalTextColor:I

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalTextColor:I

    invoke-static {p0, v0}, Lcom/geely/hvac/utils/UiUtil;->setHandTextColor(Landroid/widget/TextView;I)V

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

    .line 69
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mNormalColor:I

    iget v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mRadius:F

    invoke-virtual {p0, v0, p1, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setBackground(IIF)V

    return-void
.end method

.method public setTextAndBackMode()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mAutoEnable:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/geely/hvac/component/TextViewWithBg;->setDisableMode()V

    return-void

    .line 84
    :cond_0
    iget v0, p0, Lcom/geely/hvac/component/TextViewWithBg;->mLevel:I

    iget v1, p0, Lcom/geely/hvac/component/TextViewWithBg;->mAutoMode:I

    if-ne v0, v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/geely/hvac/component/TextViewWithBg;->setAutoBackground()V

    .line 87
    invoke-virtual {p0}, Lcom/geely/hvac/component/TextViewWithBg;->setAutoColor()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/geely/hvac/component/TextViewWithBg;->setNotAutoBackground()V

    .line 90
    invoke-virtual {p0}, Lcom/geely/hvac/component/TextViewWithBg;->setNotAutoColor()V

    :goto_0
    return-void
.end method
