.class public Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiHasImageDoubleButtonDialog.java"


# instance fields
.field private hmiBitmap:Landroid/graphics/Bitmap;

.field private hmiContent:Ljava/lang/String;

.field private hmiImageResource:I

.field private hmiLeftBtnText:Ljava/lang/String;

.field private hmiRightBtnText:Ljava/lang/String;

.field private hmiTitle:Ljava/lang/String;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

.field private mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    return-void
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 98
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 104
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 105
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_color_click_default:I

    .line 106
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 105
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 108
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_un_select_btn_bg_color:I

    .line 109
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 108
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 111
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 112
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiImageResource:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
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

    .line 63
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 64
    sget v0, Lcom/geely/toolchain/hmi/R$id;->img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 65
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 66
    sget v0, Lcom/geely/toolchain/hmi/R$id;->leftBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 67
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rightBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 68
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 69
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonDialog$_cU6BzmkxSGp4IXSt1rU2EbP53s;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonDialog$_cU6BzmkxSGp4IXSt1rU2EbP53s;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonDialog$MbT5lSV5yKVgLVnaMX9HP8RHsDE;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageDoubleButtonDialog$MbT5lSV5yKVgLVnaMX9HP8RHsDE;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiHasImageDoubleButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;->leftAction(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "leftAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiHasImageDoubleButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;->rightAction(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "rightAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
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

    .line 117
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiConfigChange()V

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

    .line 123
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiImageResource:I

    const-string v1, "hmiImageResource"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    const-string v1, "hmiBitmap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    .line 52
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiImageResource:I

    const-string v1, "hmiImageResource"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiImageResource:I

    const-string v0, "hmiBitmap"

    .line 53
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    .line 54
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->initView(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->initData()V

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

    .line 135
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    .line 141
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiImageResource:I

    const-string v1, "hmiImageResource"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiImageResource:I

    const-string v0, "hmiBitmap"

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    .line 143
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    return-void
.end method

.method public setHmiBitmap(Landroid/graphics/Bitmap;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setHmiContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiContent:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiImageResource(I)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageResource"
        }
    .end annotation

    .line 166
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiImageResource:I

    return-object p0
.end method

.method public setHmiLeftBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftBtnText"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiLeftBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiRightBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightBtnText"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiRightBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiSelectListener(Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectListener"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageDoubleButtonDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 44
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_has_image_double_button_dialog:I

    return v0
.end method
