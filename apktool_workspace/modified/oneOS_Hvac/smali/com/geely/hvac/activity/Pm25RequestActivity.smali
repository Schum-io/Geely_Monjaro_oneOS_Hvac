.class public Lcom/geely/hvac/activity/Pm25RequestActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "Pm25RequestActivity.java"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/geely/hvac/activity/Pm25RequestActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/activity/Pm25RequestActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;

    .line 39
    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;->cancel:Lcom/geely/hvac/component/TextViewWithBg;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$Pm25RequestActivity$4wujO0Oylfk_py9ZppcPksX8PLI;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$Pm25RequestActivity$4wujO0Oylfk_py9ZppcPksX8PLI;-><init>(Lcom/geely/hvac/activity/Pm25RequestActivity;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/geely/hvac/activity/Pm25RequestActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;->sure:Lcom/geely/hvac/component/TextViewWithBg;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$Pm25RequestActivity$ZzaazHi9sK46ByEsqr7MMQM8Ugo;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$Pm25RequestActivity$ZzaazHi9sK46ByEsqr7MMQM8Ugo;-><init>(Lcom/geely/hvac/activity/Pm25RequestActivity;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/geely/hvac/activity/Pm25RequestActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;

    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$1$Pm25RequestActivity(Landroid/view/View;)V
    .locals 4

    .line 40
    invoke-virtual {p0}, Lcom/geely/hvac/activity/Pm25RequestActivity;->finish()V

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ac_PM25RemindOperation_ev"

    const-string v3, "ac_PM25RemindOperation_is"

    invoke-static {v2, v3, v1}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lcom/geely/hvac/activity/Pm25RequestActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->confirmPm25Request(I)V

    .line 43
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$2$Pm25RequestActivity(Landroid/view/View;)V
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/geely/hvac/activity/Pm25RequestActivity;->finish()V

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ac_PM25RemindOperation_ev"

    const-string v3, "ac_PM25RemindOperation_is"

    invoke-static {v2, v3, v1}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lcom/geely/hvac/activity/Pm25RequestActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->confirmPm25Request(I)V

    .line 48
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$Pm25RequestActivity(Landroid/view/View;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/geely/hvac/activity/Pm25RequestActivity;->finish()V

    .line 32
    invoke-virtual {p0}, Lcom/geely/hvac/activity/Pm25RequestActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->confirmPm25Request(I)V

    .line 33
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onAutoHide()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/geely/hvac/activity/Pm25RequestActivity;->TAG:Ljava/lang/String;

    const-string v1, "hide runnable execute"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/geely/hvac/activity/Pm25RequestActivity;->moveTaskToBack(Z)Z

    .line 23
    invoke-virtual {p0}, Lcom/geely/hvac/activity/Pm25RequestActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->confirmPm25Request(I)V

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

    .line 28
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ac_PM25Remind_ev"

    .line 29
    invoke-static {p1}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/geely/hvac/activity/Pm25RequestActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;

    invoke-virtual {p1}, Lcom/geely/hvac/databinding/LayoutPm25RequestBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$Pm25RequestActivity$w3yiONs7l5e4995oJAi8X2o1OOk;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$Pm25RequestActivity$w3yiONs7l5e4995oJAi8X2o1OOk;-><init>(Lcom/geely/hvac/activity/Pm25RequestActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
