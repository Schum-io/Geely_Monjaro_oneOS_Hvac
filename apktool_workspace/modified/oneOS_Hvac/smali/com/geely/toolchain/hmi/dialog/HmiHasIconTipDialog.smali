.class public Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiHasIconTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog$HmiViewCreatedListener;
    }
.end annotation


# instance fields
.field private hmiContent:Ljava/lang/String;

.field private hmiIconId:I

.field private mBlurView:Lcom/geely/toolchain/hmi/blur/HmiBlurView;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mHmiViewCreatedListener:Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog$HmiViewCreatedListener;

.field private mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 97
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiIconId:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiIconId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 107
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 90
    sget v0, Lcom/geely/toolchain/hmi/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 91
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 92
    sget v0, Lcom/geely/toolchain/hmi/R$id;->progressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 93
    sget v0, Lcom/geely/toolchain/hmi/R$id;->blurView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/blur/HmiBlurView;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mBlurView:Lcom/geely/toolchain/hmi/blur/HmiBlurView;

    return-void
.end method


# virtual methods
.method public getIcon()Lcom/geely/toolchain/hmi/view/HmiImageView;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    if-eqz v0, :cond_0

    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->TAG:Ljava/lang/String;

    const-string v1, "getIcon: mIcon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->TAG:Ljava/lang/String;

    const-string v1, "getProgressBar: mProgressBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: arguments is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "hmiIcon"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiIconId:I

    const-string v0, "hmiContent"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiContent:Ljava/lang/String;

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

    .line 71
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiIconId:I

    const-string v1, "hmiIcon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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

    .line 54
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    if-eqz p2, :cond_0

    .line 58
    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiIconId:I

    const-string v2, "hmiIcon"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiIconId:I

    .line 59
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiContent:Ljava/lang/String;

    const-string v2, "hmiContent"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiContent:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mHmiViewCreatedListener:Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog$HmiViewCreatedListener;

    if-eqz p2, :cond_1

    .line 62
    invoke-interface {p2, p1}, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog$HmiViewCreatedListener;->initializedView(Landroid/view/View;)V

    .line 64
    :cond_1
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->initView(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->initData()V

    .line 66
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mBlurView:Lcom/geely/toolchain/hmi/blur/HmiBlurView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/blur/HmiBlurView;->setWindow(Landroid/view/Window;)V

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

    .line 79
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_0
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiIconId:I

    const-string v1, "hmiIcon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiIconId:I

    .line 85
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiContent:Ljava/lang/String;

    return-void
.end method

.method public setHmiAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationDrawable"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 141
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public setHmiContent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiContent"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiContent:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHmiIconId(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiIconId"
        }
    .end annotation

    .line 118
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->hmiIconId:I

    .line 119
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 123
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 125
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public setHmiViewCreatedListener(Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog$HmiViewCreatedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiViewCreatedListener"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog;->mHmiViewCreatedListener:Lcom/geely/toolchain/hmi/dialog/HmiHasIconTipDialog$HmiViewCreatedListener;

    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    .line 37
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_has_icon_tip_dialog:I

    return v0
.end method
