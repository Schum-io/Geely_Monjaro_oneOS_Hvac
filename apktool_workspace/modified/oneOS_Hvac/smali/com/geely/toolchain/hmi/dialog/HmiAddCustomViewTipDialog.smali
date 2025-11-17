.class public Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiAddCustomViewTipDialog.java"

# interfaces
.implements Lcom/geely/toolchain/dialog/HmiDialogHelper;


# instance fields
.field private hmiContent:Ljava/lang/CharSequence;

.field private hmiLeftBtnText:Ljava/lang/String;

.field private hmiRightBtnText:Ljava/lang/String;

.field private hmiTitle:Ljava/lang/String;

.field private hmiView:Landroid/view/View;

.field private mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mCloseResourceId:I

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

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

    .line 30
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 44
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mCloseResourceId:I

    return-void
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 121
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 127
    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->TAG:Ljava/lang/String;

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

    .line 128
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 130
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 131
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_bg_color:I

    .line 132
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 131
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 134
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_un_select_btn_bg_color:I

    .line 135
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 134
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 137
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 138
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 106
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_transparent:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setHighlightColor(I)V

    .line 107
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiLeftBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiRightBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mCustomView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->TAG:Ljava/lang/String;

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

    .line 68
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 69
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 70
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 71
    sget v0, Lcom/geely/toolchain/hmi/R$id;->leftBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 72
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rightBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 73
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 74
    sget v0, Lcom/geely/toolchain/hmi/R$id;->customView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mCustomView:Landroid/widget/LinearLayout;

    .line 75
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mLeftBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewTipDialog$Gg8xTbSg3aB4STah7Lg3a8AnGTw;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewTipDialog$Gg8xTbSg3aB4STah7Lg3a8AnGTw;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mRightBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewTipDialog$Z0WDczIOLq_krClojyPVg5MsX1c;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewTipDialog$Z0WDczIOLq_krClojyPVg5MsX1c;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewTipDialog$X-vWLN15N2xPyilbAj_DIg7HWrY;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewTipDialog$X-vWLN15N2xPyilbAj_DIg7HWrY;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiAddCustomViewTipDialog(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;->leftAction(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->TAG:Ljava/lang/String;

    const-string v1, "leftAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiAddCustomViewTipDialog(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;->rightAction(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->TAG:Ljava/lang/String;

    const-string v1, "rightAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$2$HmiAddCustomViewTipDialog(Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->dismiss()V

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

    .line 143
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged: run"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiConfigChange()V

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

    .line 150
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiContent:Ljava/lang/CharSequence;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiRightBtnText:Ljava/lang/String;

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

    .line 55
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiTitle:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiContent:Ljava/lang/CharSequence;

    const-string v1, "hmiContent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiContent:Ljava/lang/CharSequence;

    .line 59
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiRightBtnText:Ljava/lang/String;

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->initView(Landroid/view/View;)V

    .line 63
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->initData()V

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

    .line 160
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiTitle:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiContent:Ljava/lang/CharSequence;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiContent:Ljava/lang/CharSequence;

    .line 167
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiRightBtnText:Ljava/lang/String;

    return-void
.end method

.method public setHmiAddView(Landroid/view/View;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiView:Landroid/view/View;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-void
.end method

.method public setHmiContent(Ljava/lang/CharSequence;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHmiLeftBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftBtnText"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiLeftBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiRightBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightBtnText"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiRightBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiSelectListener(Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectListener"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->mHmiSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiSelectListener;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewTipDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 50
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_add_custom_view_tip_dialog:I

    return v0
.end method
