.class public Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiNoIconTipDialog.java"


# instance fields
.field private hmiContent:Ljava/lang/String;

.field private mBlurView:Lcom/geely/toolchain/hmi/blur/HmiBlurView;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 49
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

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

    .line 35
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    if-eqz p2, :cond_0

    const-string v1, "hmiContent"

    .line 39
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->hmiContent:Ljava/lang/String;

    .line 41
    :cond_0
    sget p2, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 42
    sget p2, Lcom/geely/toolchain/hmi/R$id;->blurView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/blur/HmiBlurView;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->mBlurView:Lcom/geely/toolchain/hmi/blur/HmiBlurView;

    .line 43
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/blur/HmiBlurView;->setWindow(Landroid/view/Window;)V

    .line 44
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->hmiContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "hmiContent"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->hmiContent:Ljava/lang/String;

    return-void
.end method

.method public setHmiContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiNoIconTipDialog;->hmiContent:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 30
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_no_icon_tip_dialog:I

    return v0
.end method
