.class public Lcom/geely/hvac/dialog/AcSetDialog;
.super Lcom/geely/hvac/dialog/BaseDialog;
.source "AcSetDialog.java"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutAcSetBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/geely/hvac/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/hvac/databinding/LayoutAcSetBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutAcSetBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/dialog/AcSetDialog;->mBinding:Lcom/geely/hvac/databinding/LayoutAcSetBinding;

    .line 18
    invoke-virtual {p0}, Lcom/geely/hvac/dialog/AcSetDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/geely/hvac/databinding/LayoutAcSetBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/geely/hvac/dialog/AcSetDialog;->mBinding:Lcom/geely/hvac/databinding/LayoutAcSetBinding;

    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutAcSetBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
