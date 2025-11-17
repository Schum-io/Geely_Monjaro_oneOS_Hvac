.class public Lcom/geely/hvac/activity/PhysiotherapyDetailLeftActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "PhysiotherapyDetailLeftActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 3

    .line 11
    invoke-virtual {p0}, Lcom/geely/hvac/activity/PhysiotherapyDetailLeftActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBinding;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/geely/hvac/activity/PhysiotherapyDetailLeftActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 13
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$PhysiotherapyDetailLeftActivity$vqh0n1NpJ8pxa4CRFsi6hrNFViY;

    invoke-direct {v2, p0}, Lcom/geely/hvac/activity/-$$Lambda$PhysiotherapyDetailLeftActivity$vqh0n1NpJ8pxa4CRFsi6hrNFViY;-><init>(Lcom/geely/hvac/activity/PhysiotherapyDetailLeftActivity;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$0$PhysiotherapyDetailLeftActivity(Landroid/view/View;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/geely/hvac/activity/PhysiotherapyDetailLeftActivity;->finish()V

    .line 15
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
