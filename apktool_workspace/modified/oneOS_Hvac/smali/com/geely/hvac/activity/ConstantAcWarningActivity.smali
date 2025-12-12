.class public Lcom/geely/hvac/activity/ConstantAcWarningActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "ConstantAcWarningActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 3

    .line 13
    invoke-virtual {p0}, Lcom/geely/hvac/activity/ConstantAcWarningActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutConstantAcWaringBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutConstantAcWaringBinding;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/geely/hvac/activity/ConstantAcWarningActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutConstantAcWaringBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 15
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutConstantAcWaringBinding;->sure:Lcom/geely/hvac/component/TextViewWithBg;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$ConstantAcWarningActivity$__g5NJ95w_cssA17ueTDuvmdiHQ;

    invoke-direct {v2, p0}, Lcom/geely/hvac/activity/-$$Lambda$ConstantAcWarningActivity$__g5NJ95w_cssA17ueTDuvmdiHQ;-><init>(Lcom/geely/hvac/activity/ConstantAcWarningActivity;)V

    invoke-virtual {v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutConstantAcWaringBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$0$ConstantAcWarningActivity(Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/geely/hvac/activity/ConstantAcWarningActivity;->finish()V

    .line 17
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
