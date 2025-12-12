.class public Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiSingleButtonHasTitleAndCloseIconEmptyDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiSingleBtnHasTitleAndCloseIconEmptyDialog"


# instance fields
.field private hmiView:Landroid/view/View;

.field private mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mBtnText:Ljava/lang/String;

.field private mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mCloseResourceId:I

.field private mCustomView:Landroid/widget/LinearLayout;

.field private mHeight:I

.field private mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

.field private mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTitleText:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    const/16 v0, 0x350

    .line 33
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mWidth:I

    const/16 v0, 0x320

    .line 34
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHeight:I

    .line 38
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mCloseResourceId:I

    return-void
.end method

.method private initData()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->hmiView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mCustomView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "HmiSingleBtnHasTitleAndCloseIconEmptyDialog"

    const-string v1, "initData: hmiView  is null"

    .line 136
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

    .line 100
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 101
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 102
    sget v0, Lcom/geely/toolchain/hmi/R$id;->customView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mCustomView:Landroid/widget/LinearLayout;

    .line 103
    sget v0, Lcom/geely/toolchain/hmi/R$id;->btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 104
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 105
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonHasTitleAndCloseIconEmptyDialog$ZaNfkgiTO3gN8KfYOAuw1uafdjQ;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonHasTitleAndCloseIconEmptyDialog$ZaNfkgiTO3gN8KfYOAuw1uafdjQ;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonHasTitleAndCloseIconEmptyDialog$3aL2i2w6E9ldpkXuuJQm97jzrdU;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonHasTitleAndCloseIconEmptyDialog$3aL2i2w6E9ldpkXuuJQm97jzrdU;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hmiConfigChange()V
    .locals 5

    .line 77
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HmiSingleBtnHasTitleAndCloseIconEmptyDialog"

    if-nez v0, :cond_0

    const-string v0, "hmiConfigChange: context is null"

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiMode ===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 86
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mCloseResourceId:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_bg_color:I

    .line 88
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 90
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiSingleButtonHasTitleAndCloseIconEmptyDialog(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    :cond_0
    const-string v0, "HmiSingleBtnHasTitleAndCloseIconEmptyDialog"

    const-string v1, "onClick: mHmiCloseListener is null"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->dismiss()V

    .line 112
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiSingleButtonHasTitleAndCloseIconEmptyDialog(Landroid/view/View;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;->action()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiClickListener;->onHmiClick(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    :cond_1
    const-string v0, "HmiSingleBtnHasTitleAndCloseIconEmptyDialog"

    const-string v1, "initView: mHmiBtnListener is null"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
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

    .line 95
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->hmiConfigChange()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 65
    invoke-super {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onStart()V

    .line 66
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mWidth:I

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart: run mWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiSingleBtnHasTitleAndCloseIconEmptyDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
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

    .line 57
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->initView(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->initData()V

    return-void
.end method

.method public setDialogSize(II)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 202
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mWidth:I

    .line 203
    iput p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHeight:I

    return-object p0
.end method

.method public setHmiAddView(Landroid/view/View;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHmiAddView: view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiSingleBtnHasTitleAndCloseIconEmptyDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->hmiView:Landroid/view/View;

    return-object p0
.end method

.method public setHmiBtnListener(Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiBtnListener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

    return-object p0
.end method

.method public setHmiBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    const-string v0, "HmiSingleBtnHasTitleAndCloseIconEmptyDialog"

    const-string v1, "setHmiCloseListener: run"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 51
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_single_button_has_title_and_close_icon_empty_dialog:I

    return v0
.end method

.method public setOnHmiClickListener(Lcom/geely/toolchain/hmi/dialog/HmiClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mHmiClickListener"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleAndCloseIconEmptyDialog;->mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

    return-object p0
.end method
