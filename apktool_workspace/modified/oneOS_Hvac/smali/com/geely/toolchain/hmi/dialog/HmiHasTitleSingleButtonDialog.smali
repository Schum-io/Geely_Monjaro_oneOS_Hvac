.class public Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiHasTitleSingleButtonDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiNewSingleButtonHasTitleDialog"


# instance fields
.field private mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

.field private mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mButtonText:Ljava/lang/String;

.field private mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mCloseResourceId:I

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/String;

.field private mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 31
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mCloseResourceId:I

    return-void
.end method

.method private initData()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 106
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mButtonText:Ljava/lang/String;

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

    .line 78
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 79
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 80
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 81
    sget v0, Lcom/geely/toolchain/hmi/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 82
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 83
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasTitleSingleButtonDialog$cGI0dY9o8jc5RAGnYFlR8pXbTuA;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasTitleSingleButtonDialog$cGI0dY9o8jc5RAGnYFlR8pXbTuA;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasTitleSingleButtonDialog$B0O5j7eY6jTJfpfVOQNsJ6wk5qk;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasTitleSingleButtonDialog$B0O5j7eY6jTJfpfVOQNsJ6wk5qk;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hmiConfigChange()V
    .locals 5

    .line 56
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HmiNewSingleButtonHasTitleDialog"

    if-nez v0, :cond_0

    const-string v0, "hmiConfigChange: context is null"

    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 62
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

    .line 63
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 65
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 66
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_single_button_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 68
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mCloseResourceId:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiHasTitleSingleButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;->action()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiClickListener;->onHmiClick(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->dismiss()V

    const-string v0, "HmiNewSingleButtonHasTitleDialog"

    const-string v1, "mBtnClickListener is null"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiHasTitleSingleButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->dismiss()V

    const-string v0, "HmiNewSingleButtonHasTitleDialog"

    const-string v1, "mHmiCloseListener is null"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
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

    .line 73
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->hmiConfigChange()V

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

    .line 47
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->initView(Landroid/view/View;)V

    .line 49
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->initData()V

    return-void
.end method

.method public setBtnClickListener(Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;
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

    .line 148
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

    return-object p0
.end method

.method public setButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 42
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_single_button_has_title_dialog:I

    return v0
.end method

.method public setOnHmiClickListener(Lcom/geely/toolchain/hmi/dialog/HmiClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mHmiClickListener"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasTitleSingleButtonDialog;->mTitleText:Ljava/lang/String;

    return-object p0
.end method
