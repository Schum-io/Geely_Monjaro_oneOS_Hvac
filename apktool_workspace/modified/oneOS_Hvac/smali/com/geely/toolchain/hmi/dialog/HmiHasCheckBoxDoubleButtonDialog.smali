.class public Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiHasCheckBoxDoubleButtonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$HmiSelectListener;
    }
.end annotation


# instance fields
.field private hmiContent:Ljava/lang/String;

.field private hmiDesc:Ljava/lang/String;

.field private hmiLeftBtnText:Ljava/lang/String;

.field private hmiRightBtnText:Ljava/lang/String;

.field private hmiTitle:Ljava/lang/String;

.field private mBox:Lcom/geely/toolchain/hmi/view/HmiStateCheckBox;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mDescLinearLayout:Landroid/widget/LinearLayout;

.field private mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$HmiSelectListener;

.field private mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;)Lcom/geely/toolchain/hmi/view/HmiTextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mDescLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 107
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 113
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 114
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_desc_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 115
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_color_click_default:I

    .line 116
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 115
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 118
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_un_select_btn_bg_color:I

    .line 119
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 121
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 122
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$1;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$1;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 101
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 64
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 65
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 66
    sget v0, Lcom/geely/toolchain/hmi/R$id;->desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 67
    sget v0, Lcom/geely/toolchain/hmi/R$id;->leftBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 68
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rightBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 69
    sget v0, Lcom/geely/toolchain/hmi/R$id;->box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateCheckBox;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiStateCheckBox;

    .line 70
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 71
    sget v0, Lcom/geely/toolchain/hmi/R$id;->ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mDescLinearLayout:Landroid/widget/LinearLayout;

    .line 72
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasCheckBoxDoubleButtonDialog$nVsQ5winWCgxkmueqowu4ANx1gE;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasCheckBoxDoubleButtonDialog$nVsQ5winWCgxkmueqowu4ANx1gE;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasCheckBoxDoubleButtonDialog$ma8im4BJw-uNGjY_2__mDyIWecc;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasCheckBoxDoubleButtonDialog$ma8im4BJw-uNGjY_2__mDyIWecc;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiHasCheckBoxDoubleButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$HmiSelectListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiStateCheckBox;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/HmiStateCheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$HmiSelectListener;->leftAction(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;Z)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "leftAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiHasCheckBoxDoubleButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$HmiSelectListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiStateCheckBox;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/HmiStateCheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$HmiSelectListener;->rightAction(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;Z)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "rightAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 127
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiConfigChange()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiDesc:Ljava/lang/String;

    const-string v1, "hmiDesc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiDesc:Ljava/lang/String;

    const-string v1, "hmiDesc"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiDesc:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->initView(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->initData()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 144
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiDesc:Ljava/lang/String;

    const-string v1, "hmiDesc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiDesc:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    return-void
.end method

.method public setHmiContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiDesc(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiDesc:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiLeftBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftBtnText"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiRightBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightBtnText"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiSelectListener(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$HmiSelectListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectListener"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$HmiSelectListener;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 46
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_has_check_box_double_button_dialog:I

    return v0
.end method
