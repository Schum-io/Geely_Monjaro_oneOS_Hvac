.class public Lcom/geely/hvac/psd/component/MultiLineRadioGroup;
.super Landroid/widget/RadioGroup;
.source "MultiLineRadioGroup.java"


# instance fields
.field private mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

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

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkRadioButton(Landroid/widget/RadioButton;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/MultiLineRadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 53
    invoke-virtual {p0, v2}, Lcom/geely/hvac/psd/component/MultiLineRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 54
    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    if-eq v3, p1, :cond_0

    .line 55
    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 56
    :cond_0
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 57
    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    .line 59
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 60
    instance-of v7, v6, Landroid/widget/RadioButton;

    if-eqz v7, :cond_1

    .line 61
    check-cast v6, Landroid/widget/RadioButton;

    if-eq v6, p1, :cond_1

    .line 63
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 29
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 33
    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 34
    check-cast v3, Landroid/widget/RadioButton;

    .line 35
    new-instance v4, Lcom/geely/hvac/psd/component/-$$Lambda$MultiLineRadioGroup$U3OoQRuxX_lzTCwJpVtMUbXrYTE;

    invoke-direct {v4, p0, v3}, Lcom/geely/hvac/psd/component/-$$Lambda$MultiLineRadioGroup$U3OoQRuxX_lzTCwJpVtMUbXrYTE;-><init>(Lcom/geely/hvac/psd/component/MultiLineRadioGroup;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearAllButtonChecked()V
    .locals 7

    .line 76
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/MultiLineRadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 78
    invoke-virtual {p0, v2}, Lcom/geely/hvac/psd/component/MultiLineRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 79
    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 81
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 82
    check-cast v6, Landroid/widget/RadioButton;

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$addView$0$MultiLineRadioGroup(Landroid/widget/RadioButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 37
    invoke-direct {p0, p1}, Lcom/geely/hvac/psd/component/MultiLineRadioGroup;->checkRadioButton(Landroid/widget/RadioButton;)V

    .line 38
    iget-object p3, p0, Lcom/geely/hvac/psd/component/MultiLineRadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz p3, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    invoke-interface {p3, p0, p1}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_0
    return p2
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onCheckedChangeListener"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/geely/hvac/psd/component/MultiLineRadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method
