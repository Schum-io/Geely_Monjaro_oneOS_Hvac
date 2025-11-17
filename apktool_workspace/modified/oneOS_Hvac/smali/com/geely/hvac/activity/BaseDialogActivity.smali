.class public abstract Lcom/geely/hvac/activity/BaseDialogActivity;
.super Lcom/geely/hvac/activity/AutoHideActivity;
.source "BaseDialogActivity.java"


# instance fields
.field private mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/geely/hvac/activity/AutoHideActivity;-><init>()V

    return-void
.end method

.method private initAutoHide()V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/geely/hvac/activity/BaseDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAutoHide, from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/geely/hvac/activity/BaseDialogActivity;->setAutoHide(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 20
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object v0
.end method

.method protected abstract getView()Landroid/view/View;
.end method

.method public synthetic lambda$onCreate$0$BaseDialogActivity(Landroid/view/View;)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainActivityVisible()Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "view finish Activity"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;->finish()V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "view moveTaskToBack Activity"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/geely/hvac/activity/BaseDialogActivity;->moveTaskToBack(Z)Z

    .line 44
    :goto_0
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

    .line 32
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/AutoHideActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;->translucentStatus()V

    .line 34
    invoke-direct {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;->initAutoHide()V

    .line 35
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;->getView()Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$BaseDialogActivity$Mma2I7De3eVHt0Qb6X3pv1GNASw;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$BaseDialogActivity$Mma2I7De3eVHt0Qb6X3pv1GNASw;-><init>(Lcom/geely/hvac/activity/BaseDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/geely/hvac/activity/BaseDialogActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
