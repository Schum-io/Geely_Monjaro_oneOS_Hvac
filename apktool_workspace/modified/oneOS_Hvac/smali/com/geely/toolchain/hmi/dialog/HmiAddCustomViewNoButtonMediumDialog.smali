.class public Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiAddCustomViewNoButtonMediumDialog.java"


# instance fields
.field private hmiCloseResourceId:I

.field private hmiTitle:Ljava/lang/String;

.field private hmiView:Landroid/view/View;

.field private mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mCustomView:Landroid/widget/LinearLayout;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 28
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_ic_dialog_close:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiCloseResourceId:I

    return-void
.end method

.method private hmiConfigChange()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 92
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mCustomView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

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

    .line 53
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 55
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 56
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 57
    sget v0, Lcom/geely/toolchain/hmi/R$id;->customView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mCustomView:Landroid/widget/LinearLayout;

    .line 58
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewNoButtonMediumDialog$zEg2edpOCQafXeu58iDPSkyX8Ss;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewNoButtonMediumDialog$zEg2edpOCQafXeu58iDPSkyX8Ss;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiAddCustomViewNoButtonMediumDialog(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: mHmiCloseListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->dismiss()V

    .line 65
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

    .line 97
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged: run"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiConfigChange()V

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

    .line 104
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

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

    .line 43
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    .line 46
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiCloseResourceId:I

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->initView(Landroid/view/View;)V

    .line 49
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->initData()V

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

    .line 112
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "onViewStateRestored: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    .line 119
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiCloseResourceId:I

    return-void
.end method

.method public setHmiAddView(Landroid/view/View;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiAddView: view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiView:Landroid/view/View;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiCloseListener: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method public setHmiCloseResourceId(I)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeResourceId"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

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

    .line 154
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiCloseResourceId:I

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->TAG:Ljava/lang/String;

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

    .line 142
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewNoButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 38
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_add_custom_view_no_button_medium_dialog:I

    return v0
.end method
