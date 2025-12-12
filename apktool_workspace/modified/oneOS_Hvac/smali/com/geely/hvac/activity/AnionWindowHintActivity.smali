.class public Lcom/geely/hvac/activity/AnionWindowHintActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "AnionWindowHintActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 3

    .line 26
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AnionWindowHintActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutAnionWindowHintBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutAnionWindowHintBinding;

    move-result-object v0

    .line 27
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutAnionWindowHintBinding;->cancel:Lcom/geely/hvac/component/TextViewWithBg;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$AnionWindowHintActivity$JRyuWS0PCKEu9x9gJ8Q5NkU27Eg;

    invoke-direct {v2, p0}, Lcom/geely/hvac/activity/-$$Lambda$AnionWindowHintActivity$JRyuWS0PCKEu9x9gJ8Q5NkU27Eg;-><init>(Lcom/geely/hvac/activity/AnionWindowHintActivity;)V

    invoke-virtual {v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutAnionWindowHintBinding;->confirm:Lcom/geely/hvac/component/TextViewWithBg;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$AnionWindowHintActivity$k3s6eCS24QIDHY_w7566-8Ihv_o;

    invoke-direct {v2, p0}, Lcom/geely/hvac/activity/-$$Lambda$AnionWindowHintActivity$k3s6eCS24QIDHY_w7566-8Ihv_o;-><init>(Lcom/geely/hvac/activity/AnionWindowHintActivity;)V

    invoke-virtual {v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutAnionWindowHintBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$0$AnionWindowHintActivity(Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AnionWindowHintActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->cancelAnionWindow()V

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ac_AnionPurificationRemindOperation_ev"

    const-string v2, "ac_PM25RemindOperation_is"

    invoke-static {v1, v2, v0}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AnionWindowHintActivity;->finish()V

    .line 32
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$1$AnionWindowHintActivity(Landroid/view/View;)V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AnionWindowHintActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->confirmAnionWindow()V

    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ac_AnionPurificationRemindOperation_ev"

    const-string v2, "ac_PM25RemindOperation_is"

    invoke-static {v1, v2, v0}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AnionWindowHintActivity;->finish()V

    .line 38
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

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

    .line 19
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ac_AnionPurificationReminder_ev"

    .line 20
    invoke-static {p1}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;)V

    return-void
.end method
