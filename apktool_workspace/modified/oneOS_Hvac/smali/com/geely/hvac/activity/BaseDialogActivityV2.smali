.class public abstract Lcom/geely/hvac/activity/BaseDialogActivityV2;
.super Lcom/geely/hvac/activity/AutoHideActivity;
.source "BaseDialogActivityV2.java"


# instance fields
.field private mConfigurationChangedListener:Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;

.field private mIsConfigurationChange:Z

.field private mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/geely/hvac/activity/AutoHideActivity;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mIsConfigurationChange:Z

    .line 26
    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$BaseDialogActivityV2$Bv8CEBbI0qOp7aEyi2bR3KT0PpE;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$BaseDialogActivityV2$Bv8CEBbI0qOp7aEyi2bR3KT0PpE;-><init>(Lcom/geely/hvac/activity/BaseDialogActivityV2;)V

    iput-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mConfigurationChangedListener:Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;

    return-void
.end method

.method private initAutoHide()V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->TAG:Ljava/lang/String;

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

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->setAutoHide(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->finish()V

    .line 96
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->TAG:Ljava/lang/String;

    const-string v1, "finish: ----"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x7f01001e

    const v1, 0x7f01000d

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->overridePendingTransition(II)V

    return-void
.end method

.method protected getDimAmount()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method protected getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 34
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 35
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object v0
.end method

.method protected abstract getView()Landroid/view/View;
.end method

.method public synthetic lambda$new$0$BaseDialogActivityV2(Landroid/content/res/Configuration;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->TAG:Ljava/lang/String;

    const-string v0, "ConfigurationChangedListener"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mIsConfigurationChange:Z

    return-void
.end method

.method public synthetic lambda$onCreate$1$BaseDialogActivityV2(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->finish()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onResume$2$BaseDialogActivityV2()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 74
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/geely/hvac/data/GlySensorsData;->registerSuperProperties(Landroid/content/Context;I)V

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

    .line 50
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/AutoHideActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->getDimAmount()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 52
    iget-object p1, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mConfigurationChangedListener:Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;

    invoke-static {p1}, Lcom/geely/hvac/utils/ConfigurationChangedDelegate;->addListener(Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;)V

    .line 53
    invoke-direct {p0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->initAutoHide()V

    .line 54
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->getView()Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$BaseDialogActivityV2$iOIdiRtdli_rwaUqJTSyRLjKmoo;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$BaseDialogActivityV2$iOIdiRtdli_rwaUqJTSyRLjKmoo;-><init>(Lcom/geely/hvac/activity/BaseDialogActivityV2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mConfigurationChangedListener:Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;

    invoke-static {v0}, Lcom/geely/hvac/utils/ConfigurationChangedDelegate;->removeListener(Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->onResume()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mIsConfigurationChange:Z

    .line 71
    sget-object v0, Lcom/geely/hvac/utils/Executor;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$BaseDialogActivityV2$G7bZVKIfFAQqE6cznCMTCpYoBfw;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$BaseDialogActivityV2$G7bZVKIfFAQqE6cznCMTCpYoBfw;-><init>(Lcom/geely/hvac/activity/BaseDialogActivityV2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->onStop()V

    .line 81
    iget-object v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-boolean v0, p0, Lcom/geely/hvac/activity/BaseDialogActivityV2;->mIsConfigurationChange:Z

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseDialogActivityV2;->finish()V

    :cond_0
    return-void
.end method
