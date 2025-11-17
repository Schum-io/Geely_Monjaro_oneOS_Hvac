.class public Lcom/geely/hvac/activity/MirrorHudSetActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "MirrorHudSetActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 3

    .line 10
    invoke-virtual {p0}, Lcom/geely/hvac/activity/MirrorHudSetActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/geely/hvac/activity/MirrorHudSetActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 12
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$MirrorHudSetActivity$vNSx7D4JpWz5qGGqw6a2oPn2_ww;

    invoke-direct {v2, p0}, Lcom/geely/hvac/activity/-$$Lambda$MirrorHudSetActivity$vNSx7D4JpWz5qGGqw6a2oPn2_ww;-><init>(Lcom/geely/hvac/activity/MirrorHudSetActivity;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$0$MirrorHudSetActivity(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/geely/hvac/activity/MirrorHudSetActivity;->finish()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
