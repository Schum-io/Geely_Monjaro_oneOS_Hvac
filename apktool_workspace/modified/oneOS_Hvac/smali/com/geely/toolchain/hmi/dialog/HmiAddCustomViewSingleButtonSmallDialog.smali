.class public Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiAddCustomViewSingleButtonSmallDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog$HmiBtnListener;
    }
.end annotation


# instance fields
.field private hmiBtnText:Ljava/lang/String;

.field private hmiCloseResourceId:I

.field private hmiTitle:Ljava/lang/String;

.field private hmiView:Landroid/view/View;

.field private mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mCustomView:Landroid/widget/LinearLayout;

.field private mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog$HmiBtnListener;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 31
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_ic_dialog_close:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiCloseResourceId:I

    return-void
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiCloseResourceId:I

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 108
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 109
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_color_click_default:I

    .line 110
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_common_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 112
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mCustomView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: hmiView  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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

    .line 60
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 62
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 63
    sget v0, Lcom/geely/toolchain/hmi/R$id;->btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 64
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 65
    sget v0, Lcom/geely/toolchain/hmi/R$id;->customView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mCustomView:Landroid/widget/LinearLayout;

    .line 66
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewSingleButtonSmallDialog$fINHDTG7VmNaAVI1XpMPjo9-EAs;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewSingleButtonSmallDialog$fINHDTG7VmNaAVI1XpMPjo9-EAs;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewSingleButtonSmallDialog$qHl036yWsc4p1AxHXQVHkEZtdgE;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewSingleButtonSmallDialog$qHl036yWsc4p1AxHXQVHkEZtdgE;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiAddCustomViewSingleButtonSmallDialog(Landroid/view/View;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog$HmiBtnListener;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog$HmiBtnListener;->action(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "mHmiBtnListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiAddCustomViewSingleButtonSmallDialog(Landroid/view/View;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: mHmiCloseListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->dismiss()V

    .line 80
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

    .line 117
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged: run"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiConfigChange()V

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

    .line 124
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiBtnText:Ljava/lang/String;

    const-string v1, "hmiBtnText"

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
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    .line 52
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiCloseResourceId:I

    .line 53
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiBtnText:Ljava/lang/String;

    const-string v1, "hmiBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiBtnText:Ljava/lang/String;

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->initView(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->initData()V

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

    .line 133
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "onViewStateRestored: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    .line 140
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiCloseResourceId:I

    .line 141
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiBtnText:Ljava/lang/String;

    const-string v1, "hmiBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiBtnText:Ljava/lang/String;

    return-void
.end method

.method public setHmiAddView(Landroid/view/View;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiAddView: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiView:Landroid/view/View;

    return-object p0
.end method

.method public setHmiBtnListener(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog$HmiBtnListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiBtnListener"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiBtnListener: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog$HmiBtnListener;

    return-object p0
.end method

.method public setHmiBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiBtnText"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiBtnText: hmiBtnText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiCloseListener: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method public setHmiCloseResourceId(I)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeResourceId"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiCloseResourceId: closeResourceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiCloseResourceId:I

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->TAG:Ljava/lang/String;

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

    .line 164
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewSingleButtonSmallDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 44
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_add_custom_view_single_button_small_dialog:I

    return v0
.end method
