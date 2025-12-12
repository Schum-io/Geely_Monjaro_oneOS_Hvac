.class public Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;
.super Lcom/geely/hvac/activity/BaseAutoHideDialog;
.source "PSDSeatSetTipsDialog.java"


# instance fields
.field private mCommit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "commit"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/geely/hvac/activity/BaseAutoHideDialog;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->mCommit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->dismiss()V

    .line 48
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/GlyAcApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->mCommit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setPsdHeatSeatSetTipsSelect(Z)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setPsdVentilationSeatSetTipsSelect(Z)V

    :goto_0
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 3

    .line 24
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutPsdSeatSetTipsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutPsdSeatSetTipsBinding;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutPsdSeatSetTipsBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 26
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutPsdSeatSetTipsBinding;->psdHeatWindInfo:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v2, p0, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->mCommit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutPsdSeatSetTipsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 37
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->show()V

    .line 38
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/GlyAcApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->mCommit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setPsdHeatSeatSetTipsSelect(Z)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setPsdVentilationSeatSetTipsSelect(Z)V

    :goto_0
    return-void
.end method
