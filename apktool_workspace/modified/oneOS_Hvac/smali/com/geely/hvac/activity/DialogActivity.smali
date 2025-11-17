.class public abstract Lcom/geely/hvac/activity/DialogActivity;
.super Lcom/geely/hvac/activity/BaseDialogActivity;
.source "DialogActivity.java"


# instance fields
.field private mConfigurationChangedListener:Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;

.field private mIsConfigurationChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/geely/hvac/activity/DialogActivity;->mIsConfigurationChange:Z

    .line 15
    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$DialogActivity$sFSWyKls1bg76Haguru_BREuK8E;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$DialogActivity$sFSWyKls1bg76Haguru_BREuK8E;-><init>(Lcom/geely/hvac/activity/DialogActivity;)V

    iput-object v0, p0, Lcom/geely/hvac/activity/DialogActivity;->mConfigurationChangedListener:Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$DialogActivity(Landroid/content/res/Configuration;)V
    .locals 1

    .line 16
    iget-object p1, p0, Lcom/geely/hvac/activity/DialogActivity;->TAG:Ljava/lang/String;

    const-string v0, "ConfigurationChangedListener"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/geely/hvac/activity/DialogActivity;->mIsConfigurationChange:Z

    return-void
.end method

.method public synthetic lambda$onResume$1$DialogActivity()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/geely/hvac/activity/DialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lcom/geely/hvac/activity/DialogActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 39
    invoke-virtual {p0}, Lcom/geely/hvac/activity/DialogActivity;->getApplicationContext()Landroid/content/Context;

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

.method protected onAutoHide()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/geely/hvac/activity/DialogActivity;->moveTaskToBack(Z)Z

    return-void
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

    .line 22
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object p1, p0, Lcom/geely/hvac/activity/DialogActivity;->mConfigurationChangedListener:Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;

    invoke-static {p1}, Lcom/geely/hvac/utils/ConfigurationChangedDelegate;->addListener(Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;->onDestroy()V

    .line 29
    iget-object v0, p0, Lcom/geely/hvac/activity/DialogActivity;->mConfigurationChangedListener:Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;

    invoke-static {v0}, Lcom/geely/hvac/utils/ConfigurationChangedDelegate;->removeListener(Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;->onResume()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/geely/hvac/activity/DialogActivity;->mIsConfigurationChange:Z

    .line 36
    sget-object v0, Lcom/geely/hvac/utils/Executor;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$DialogActivity$GLbKr8ULuNP6zD70ibBsdqKZXaQ;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$DialogActivity$GLbKr8ULuNP6zD70ibBsdqKZXaQ;-><init>(Lcom/geely/hvac/activity/DialogActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseDialogActivity;->onStop()V

    .line 46
    iget-object v0, p0, Lcom/geely/hvac/activity/DialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-boolean v0, p0, Lcom/geely/hvac/activity/DialogActivity;->mIsConfigurationChange:Z

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/geely/hvac/activity/DialogActivity;->finish()V

    :cond_0
    return-void
.end method
