.class public Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;
.super Landroidx/fragment/app/Fragment;
.source "GlySeatHeatFragment.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field mPsdSeatSetTipsDialog:Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;

.field private mUiMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "GlySeatHeatFragment"

    .line 25
    iput-object v0, p0, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;->mUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , newConfig.uiMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlySeatHeatFragment"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget v0, p0, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;->mUiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_0

    .line 72
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;->mUiMode:I

    .line 73
    iget-object p1, p0, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;->mPsdSeatSetTipsDialog:Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 40
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    .line 41
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {p2, p3, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p3, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 42
    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 44
    invoke-static {p1}, Lcom/geely/hvac/databinding/FragmentSeatHeatBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/FragmentSeatHeatBinding;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    iput p3, p0, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;->mUiMode:I

    .line 46
    invoke-virtual {p1, p2}, Lcom/geely/hvac/databinding/FragmentSeatHeatBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 47
    invoke-virtual {p2, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setPsdHeatViewBinding(Lcom/geely/hvac/databinding/FragmentSeatHeatBinding;)V

    .line 49
    iget-object p2, p1, Lcom/geely/hvac/databinding/FragmentSeatHeatBinding;->psdHeatInfo:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    new-instance p3, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment$1;

    invoke-direct {p3, p0}, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment$1;-><init>(Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;)V

    invoke-virtual {p2, p3}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p1}, Lcom/geely/hvac/databinding/FragmentSeatHeatBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const-string v0, "GlySeatHeatFragment"

    const-string v1, "onStop"

    .line 82
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;->mPsdSeatSetTipsDialog:Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
