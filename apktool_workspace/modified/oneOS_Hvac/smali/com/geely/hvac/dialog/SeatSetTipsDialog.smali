.class public Lcom/geely/hvac/dialog/SeatSetTipsDialog;
.super Lcom/geely/hvac/activity/BaseAutoHideDialog;
.source "SeatSetTipsDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/geely/hvac/activity/BaseAutoHideDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 36
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->dismiss()V

    .line 37
    invoke-virtual {p0}, Lcom/geely/hvac/dialog/SeatSetTipsDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setSeatSetTipsSelect(Z)V

    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/geely/hvac/dialog/SeatSetTipsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutSeatSetTipsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutSeatSetTipsBinding;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/geely/hvac/dialog/SeatSetTipsDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatSetTipsBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 20
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutSeatSetTipsBinding;->getRoot()Landroid/view/View;

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

    .line 25
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->show()V

    .line 31
    invoke-virtual {p0}, Lcom/geely/hvac/dialog/SeatSetTipsDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setSeatSetTipsSelect(Z)V

    return-void
.end method
