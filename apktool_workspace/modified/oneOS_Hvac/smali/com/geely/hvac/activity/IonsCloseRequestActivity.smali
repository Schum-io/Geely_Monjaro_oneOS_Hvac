.class public Lcom/geely/hvac/activity/IonsCloseRequestActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "IonsCloseRequestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/geely/hvac/activity/IonsCloseRequestActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;

    move-result-object v0

    .line 22
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->close:Lcom/geely/hvac/component/TextViewWithBg;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$IonsCloseRequestActivity$UAKde5nYpsbV3GhmQTbbpthVqf4;

    invoke-direct {v2, p0}, Lcom/geely/hvac/activity/-$$Lambda$IonsCloseRequestActivity$UAKde5nYpsbV3GhmQTbbpthVqf4;-><init>(Lcom/geely/hvac/activity/IonsCloseRequestActivity;)V

    invoke-virtual {v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->cancel:Lcom/geely/hvac/component/TextViewWithBg;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$IonsCloseRequestActivity$L8uxtHWkWf-LjV5s4tvMxzbXvGw;

    invoke-direct {v2, p0}, Lcom/geely/hvac/activity/-$$Lambda$IonsCloseRequestActivity$L8uxtHWkWf-LjV5s4tvMxzbXvGw;-><init>(Lcom/geely/hvac/activity/IonsCloseRequestActivity;)V

    invoke-virtual {v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$0$IonsCloseRequestActivity(Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/geely/hvac/activity/IonsCloseRequestActivity;->finish()V

    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ac_AnionPurificationRemindOperation_ev"

    const-string v2, "ac_PM25RemindOperation_is"

    invoke-static {v1, v2, v0}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/geely/hvac/activity/IonsCloseRequestActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->confirmIonsCloseRequest(Landroid/view/View;)V

    .line 26
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$1$IonsCloseRequestActivity(Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/geely/hvac/activity/IonsCloseRequestActivity;->finish()V

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ac_AnionPurificationRemindOperation_ev"

    const-string v2, "ac_PM25RemindOperation_is"

    invoke-static {v1, v2, v0}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
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

    .line 15
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ac_AnionPurificationReminder_ev"

    .line 16
    invoke-static {p1}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;)V

    return-void
.end method
