.class public Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiHasImageDoubleButtonMediumDialog.java"


# instance fields
.field private hmiBitmap:Landroid/graphics/Bitmap;

.field private hmiCloseResourceId:I

.field private hmiContent:Ljava/lang/String;

.field private hmiImageResource:I

.field private hmiLeftBtnText:Ljava/lang/String;

.field private hmiRightBtnText:Ljava/lang/String;

.field private hmiTitle:Ljava/lang/String;

.field private mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

.field private mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 28
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiCloseResourceId:I

    return-void
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 118
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 119
    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiMode ===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 122
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 123
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_bg_color:I

    .line 124
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 123
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 126
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_un_select_btn_bg_color:I

    .line 127
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 128
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 129
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 130
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiImageResource:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 133
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private initData()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiLeftBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiRightBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiImageResource:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 106
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 68
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 69
    sget v0, Lcom/geely/toolchain/hmi/R$id;->img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 70
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 71
    sget v0, Lcom/geely/toolchain/hmi/R$id;->leftBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 72
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rightBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 73
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 74
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonMediumDialog$IptFNecTAp4diuP7q_SEwD2PFdU;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonMediumDialog$IptFNecTAp4diuP7q_SEwD2PFdU;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonMediumDialog$td_YEF2pNPz6ks2MRx7uX_0XkzM;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonMediumDialog$td_YEF2pNPz6ks2MRx7uX_0XkzM;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonMediumDialog$MJQTOzGGMOFn-G335kgntXLcRyU;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonMediumDialog$MJQTOzGGMOFn-G335kgntXLcRyU;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiHasImageDoubleButtonMediumDialog(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;->leftAction(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "leftAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiHasImageDoubleButtonMediumDialog(Landroid/view/View;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;->rightAction(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "rightAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$2$HmiHasImageDoubleButtonMediumDialog(Landroid/view/View;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: mHmiCloseListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->dismiss()V

    .line 95
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 140
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged: run"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiConfigChange()V

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

    .line 147
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiImageResource:I

    const-string v1, "hmiImageResource"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    const-string v1, "hmiBitmap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiRightBtnText:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    .line 54
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiImageResource:I

    const-string v1, "hmiImageResource"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiImageResource:I

    .line 55
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v0, "hmiBitmap"

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    .line 57
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiRightBtnText:Ljava/lang/String;

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->initView(Landroid/view/View;)V

    .line 62
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->initData()V

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

    .line 161
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 162
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "onViewStateRestored: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    .line 168
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiImageResource:I

    const-string v1, "hmiImageResource"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiImageResource:I

    .line 169
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v0, "hmiBitmap"

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    .line 171
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiRightBtnText:Ljava/lang/String;

    return-void
.end method

.method public setHmiBitmap(Landroid/graphics/Bitmap;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiBitmap: bitmap ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setHmiCloseIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeIconId"
        }
    .end annotation

    .line 195
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiCloseResourceId:I

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiCloseListener: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method public setHmiContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiContent: content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiImageResource(I)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageResource"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiImageResource: imageResource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiImageResource:I

    return-object p0
.end method

.method public setHmiLeftBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftBtnText"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiLeftBtnText: leftBtnText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiLeftBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiRightBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightBtnText"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiRightBtnText: rightBtnText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiRightBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiSelectListener(Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectListener"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiSelectListener: +selectListener ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiTitle: title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 46
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_has_image_double_button_medium_dialog:I

    return v0
.end method
