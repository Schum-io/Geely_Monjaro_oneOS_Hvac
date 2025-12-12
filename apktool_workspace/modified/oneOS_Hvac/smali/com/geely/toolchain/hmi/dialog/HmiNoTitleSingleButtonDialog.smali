.class public Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiNoTitleSingleButtonDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextSingleButtonDialog"


# instance fields
.field private mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

.field private mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mButtonText:Ljava/lang/String;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/String;

.field private mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

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

    .line 70
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 71
    sget v0, Lcom/geely/toolchain/hmi/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 72
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiNoTitleSingleButtonDialog$UBVAGmPDuEg67ccOxKfmHRVEFcI;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiNoTitleSingleButtonDialog$UBVAGmPDuEg67ccOxKfmHRVEFcI;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hmiConfigChange()V
    .locals 5

    .line 50
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TextSingleButtonDialog"

    if-nez v0, :cond_0

    const-string v0, "hmiConfigChange: context is null"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 56
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

    .line 57
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_not_title_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 59
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_single_button_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiNoTitleSingleButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;->action()V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiClickListener;->onHmiClick(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    :cond_1
    const-string v0, "TextSingleButtonDialog"

    const-string v1, "mBtnClickListener is null"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->dismiss()V

    .line 83
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

    .line 65
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->hmiConfigChange()V

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

    .line 41
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->initView(Landroid/view/View;)V

    .line 43
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->initData()V

    return-void
.end method

.method public setBtnClickListener(Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;)Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btnClickListener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

    return-object p0
.end method

.method public setButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 36
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_single_button_no_title_dialog:I

    return v0
.end method

.method public setOnHmiClickListener(Lcom/geely/toolchain/hmi/dialog/HmiClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mHmiClickListener"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoTitleSingleButtonDialog;->mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

    return-object p0
.end method
