.class public Lcom/geely/hvac/dialog/BaseDialog;
.super Landroid/app/AlertDialog;
.source "BaseDialog.java"


# instance fields
.field private mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;


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

    const v0, 0x7f11020d

    .line 23
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/geely/hvac/dialog/BaseDialog;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 33
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 34
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object v0, p0, Lcom/geely/hvac/dialog/BaseDialog;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/dialog/BaseDialog;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object v0
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .line 42
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/geely/hvac/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getWindAnimationRes()I
    .locals 1

    const v0, 0x7f1102de

    return v0
.end method

.method public synthetic lambda$onCreate$0$BaseDialog(Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/geely/hvac/dialog/BaseDialog;->dismiss()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/geely/hvac/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lcom/geely/hvac/dialog/BaseDialog;->getWindAnimationRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v0, -0x1

    .line 50
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 56
    invoke-virtual {p0}, Lcom/geely/hvac/dialog/BaseDialog;->getView()Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/geely/hvac/dialog/-$$Lambda$BaseDialog$NB9vsCr34aPbwVNtPdcKHMQYi5w;

    invoke-direct {v0, p0}, Lcom/geely/hvac/dialog/-$$Lambda$BaseDialog$NB9vsCr34aPbwVNtPdcKHMQYi5w;-><init>(Lcom/geely/hvac/dialog/BaseDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/geely/hvac/dialog/BaseDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
