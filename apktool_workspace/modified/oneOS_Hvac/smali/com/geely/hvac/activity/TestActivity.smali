.class public Lcom/geely/hvac/activity/TestActivity;
.super Lcom/geely/hvac/activity/BaseActivity;
.source "TestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/geely/hvac/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initViews(Lcom/geely/hvac/databinding/ActivityTestBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 18
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 20
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 21
    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 23
    invoke-virtual {p0}, Lcom/geely/hvac/activity/TestActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/ActivityTestBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/ActivityTestBinding;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/geely/hvac/databinding/ActivityTestBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 25
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/ActivityTestBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/hvac/activity/TestActivity;->setContentView(Landroid/view/View;)V

    .line 26
    invoke-direct {p0, v0}, Lcom/geely/hvac/activity/TestActivity;->initViews(Lcom/geely/hvac/databinding/ActivityTestBinding;)V

    return-void
.end method
