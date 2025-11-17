.class public Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiAddCustomViewDoubleButtonSmallDialog.java"


# instance fields
.field private hmiCloseResourceId:I

.field private hmiLeftBtnText:Ljava/lang/String;

.field private hmiRightBtnText:Ljava/lang/String;

.field private hmiTitle:Ljava/lang/String;

.field private hmiView:Landroid/view/View;

.field private mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mCustomView:Landroid/widget/LinearLayout;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

.field private mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 29
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_ic_dialog_close:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiCloseResourceId:I

    return-void
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 108
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 114
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_color_click_default:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 114
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 116
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_un_select_btn_bg_color:I

    .line 117
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 116
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 119
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 120
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiLeftBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiRightBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mCustomView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: hmiView  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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

    .line 61
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 62
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 63
    sget v0, Lcom/geely/toolchain/hmi/R$id;->leftBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 64
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rightBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 65
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 66
    sget v0, Lcom/geely/toolchain/hmi/R$id;->customView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mCustomView:Landroid/widget/LinearLayout;

    .line 67
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewDoubleButtonSmallDialog$qQ2ImEQhnh3U-ZS7l0edLZEhPeg;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewDoubleButtonSmallDialog$qQ2ImEQhnh3U-ZS7l0edLZEhPeg;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewDoubleButtonSmallDialog$d2GHQdkhsrVw8Yl1hiXZi4Rrkso;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewDoubleButtonSmallDialog$d2GHQdkhsrVw8Yl1hiXZi4Rrkso;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewDoubleButtonSmallDialog$juYxv0mlZEWMpWFT_fjDe_3D2IY;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewDoubleButtonSmallDialog$juYxv0mlZEWMpWFT_fjDe_3D2IY;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiAddCustomViewDoubleButtonSmallDialog(Landroid/view/View;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;->leftAction(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "leftAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiAddCustomViewDoubleButtonSmallDialog(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;->rightAction(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "rightAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$2$HmiAddCustomViewDoubleButtonSmallDialog(Landroid/view/View;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: mHmiCloseListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->dismiss()V

    .line 88
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

    .line 125
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiConfigChange()V

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

    .line 131
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiRightBtnText:Ljava/lang/String;

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

    .line 49
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    .line 52
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiCloseResourceId:I

    .line 53
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiRightBtnText:Ljava/lang/String;

    .line 56
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->initView(Landroid/view/View;)V

    .line 57
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->initData()V

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

    .line 141
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    .line 147
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiCloseResourceId:I

    .line 148
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiRightBtnText:Ljava/lang/String;

    return-void
.end method

.method public setHmiAddView(Landroid/view/View;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiAddView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiView:Landroid/view/View;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiCloseListener: run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method public setHmiCloseResourceId(I)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeResourceId"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiCloseResourceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiCloseResourceId:I

    return-object p0
.end method

.method public setHmiLeftBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftBtnText"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiLeftBtnText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiLeftBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiRightBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightBtnText"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiRightBtnText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiRightBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiSelectListener(Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectListener"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiSelectListener: run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewDoubleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 44
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_add_custom_view_double_button_small_dialog:I

    return v0
.end method
