.class public Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiMultiButtonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;
    }
.end annotation


# instance fields
.field private hmiContent:Ljava/lang/String;

.field private hmiFirstBtnText:Ljava/lang/String;

.field private hmiSecondBtnText:Ljava/lang/String;

.field private hmiThirdBtnText:Ljava/lang/String;

.field private hmiTitle:Ljava/lang/String;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mFirstBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mHmiMultiButtonClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSecondBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mThirdBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    return-void
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 97
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 103
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 104
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mFirstBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 105
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mSecondBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 106
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mThirdBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 107
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mFirstBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_color_click_default:I

    .line 108
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 107
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 110
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mSecondBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_un_select_btn_bg_color:I

    .line 111
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 110
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 113
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mThirdBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_un_select_btn_bg_color:I

    .line 114
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 113
    invoke-virtual {v1, v2, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mFirstBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiFirstBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mSecondBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiSecondBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mThirdBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiThirdBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

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

    .line 58
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 60
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 61
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 62
    sget v0, Lcom/geely/toolchain/hmi/R$id;->firstBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mFirstBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 63
    sget v0, Lcom/geely/toolchain/hmi/R$id;->secondBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mSecondBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 64
    sget v0, Lcom/geely/toolchain/hmi/R$id;->thirdBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mThirdBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 65
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mFirstBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMultiButtonDialog$DbBOQ6XjaeCcToMnXRn3AGa5QmE;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMultiButtonDialog$DbBOQ6XjaeCcToMnXRn3AGa5QmE;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mSecondBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMultiButtonDialog$DvXWaSVgU92svo02wc2l00oAIBc;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMultiButtonDialog$DvXWaSVgU92svo02wc2l00oAIBc;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mThirdBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMultiButtonDialog$23YQGxHJjqjaXg9wvkGnfLUyJbY;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMultiButtonDialog$23YQGxHJjqjaXg9wvkGnfLUyJbY;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiMultiButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mHmiMultiButtonClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 67
    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;->action(Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "mHmiMultiButtonClickListener is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiMultiButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mHmiMultiButtonClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 74
    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;->action(Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "mHmiMultiButtonClickListener is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$2$HmiMultiButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mHmiMultiButtonClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 81
    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;->action(Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "mHmiMultiButtonClickListener is null "

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

    .line 120
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiConfigChange()V

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

    .line 126
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiFirstBtnText:Ljava/lang/String;

    const-string v1, "hmiFirstBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiSecondBtnText:Ljava/lang/String;

    const-string v1, "hmiSecondBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiThirdBtnText:Ljava/lang/String;

    const-string v1, "hmiThirdBtnText"

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

    .line 45
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiTitle:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiContent:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiFirstBtnText:Ljava/lang/String;

    const-string v1, "hmiFirstBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiFirstBtnText:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiSecondBtnText:Ljava/lang/String;

    const-string v1, "hmiSecondBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiSecondBtnText:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiThirdBtnText:Ljava/lang/String;

    const-string v1, "hmiThirdBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiThirdBtnText:Ljava/lang/String;

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->initView(Landroid/view/View;)V

    .line 54
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->initData()V

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

    .line 138
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiTitle:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiContent:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiFirstBtnText:Ljava/lang/String;

    const-string v1, "hmiFirstBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiFirstBtnText:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiSecondBtnText:Ljava/lang/String;

    const-string v1, "hmiSecondBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiSecondBtnText:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiThirdBtnText:Ljava/lang/String;

    const-string v1, "hmiThirdBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiThirdBtnText:Ljava/lang/String;

    return-void
.end method

.method public setHmiContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiContent:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiFirstBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstBtnText"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiFirstBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiMultiButtonClickListener(Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiMultiButtonClickListener"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->mHmiMultiButtonClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog$HmiMultiButtonClickListener;

    return-void
.end method

.method public setHmiSecondBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondBtnText"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiSecondBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiThirdBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thirdBtnText"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiThirdBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMultiButtonDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 40
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_multi_button_dialog:I

    return v0
.end method
