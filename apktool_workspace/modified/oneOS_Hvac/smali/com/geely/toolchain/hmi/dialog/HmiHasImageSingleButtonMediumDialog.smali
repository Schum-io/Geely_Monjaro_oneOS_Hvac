.class public Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiHasImageSingleButtonMediumDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog$HmiBtnListener;
    }
.end annotation


# instance fields
.field private hmiBitmap:Landroid/graphics/Bitmap;

.field private hmiBtnText:Ljava/lang/String;

.field private hmiCloseResourceId:I

.field private hmiContent:Ljava/lang/String;

.field private hmiImageResource:I

.field private hmiTitle:Ljava/lang/String;

.field private mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog$HmiBtnListener;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 29
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_ic_dialog_close:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiCloseResourceId:I

    return-void
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 109
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 110
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_color_click_default:I

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
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 114
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiImageResource:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private initData()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiImageResource:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 94
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

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

    .line 64
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 66
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 67
    sget v0, Lcom/geely/toolchain/hmi/R$id;->img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 68
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 69
    sget v0, Lcom/geely/toolchain/hmi/R$id;->btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 70
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 71
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageSingleButtonMediumDialog$4maa-4E9rABkbjc-EDu8O1UiFJ8;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageSingleButtonMediumDialog$4maa-4E9rABkbjc-EDu8O1UiFJ8;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageSingleButtonMediumDialog$ABODGnnrhvwEouJg40g9gbRx9qg;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasImageSingleButtonMediumDialog$ABODGnnrhvwEouJg40g9gbRx9qg;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiHasImageSingleButtonMediumDialog(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog$HmiBtnListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog$HmiBtnListener;->action(Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "leftAction mHmiSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiHasImageSingleButtonMediumDialog(Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: mHmiCloseListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->dismiss()V

    .line 85
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

    .line 123
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged: run"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiConfigChange()V

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

    .line 130
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiImageResource:I

    const-string v1, "hmiImageResource"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    const-string v1, "hmiBitmap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBtnText:Ljava/lang/String;

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

    .line 50
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    .line 53
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiImageResource:I

    const-string v1, "hmiImageResource"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiImageResource:I

    .line 54
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v0, "hmiBitmap"

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBtnText:Ljava/lang/String;

    const-string v1, "hmiBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBtnText:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->initView(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->initData()V

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

    .line 142
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "onViewStateRestored: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    .line 149
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiImageResource:I

    const-string v1, "hmiImageResource"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiImageResource:I

    .line 150
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiCloseResourceId:I

    const-string v0, "hmiBitmap"

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    .line 152
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBtnText:Ljava/lang/String;

    const-string v1, "hmiBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBtnText:Ljava/lang/String;

    return-void
.end method

.method public setHmiBitmap(Landroid/graphics/Bitmap;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

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

    .line 188
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setHmiBtnListener(Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog$HmiBtnListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiBtnListener"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiBtnListener: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog$HmiBtnListener;

    return-object p0
.end method

.method public setHmiBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftBtnText"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

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

    .line 212
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiCloseListener: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method public setHmiContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

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

    .line 200
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiContent:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiImageResource(I)Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageResource"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

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

    .line 176
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiImageResource:I

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;
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
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->TAG:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasImageSingleButtonMediumDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 45
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_has_image_single_button_medium_dialog:I

    return v0
.end method
