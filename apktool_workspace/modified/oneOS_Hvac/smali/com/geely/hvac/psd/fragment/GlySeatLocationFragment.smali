.class public Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;
.super Landroidx/fragment/app/Fragment;
.source "GlySeatLocationFragment.java"


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "GlySeatLocationFragment"

    .line 36
    iput-object v0, p0, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 63
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "set"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 64
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 65
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "com.autolink.trackball.control"

    const-string v0, "1"

    .line 74
    invoke-static {p1, v0}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "com.autolink.trackball.control"

    const-string v0, "1"

    .line 40
    invoke-static {p1, v0}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string p2, "com.autolink.trackball.control"

    const-string p3, "1"

    .line 51
    invoke-static {p2, p3}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    .line 53
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {p2, p3, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p3, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 54
    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 56
    invoke-static {p1}, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p2}, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 58
    invoke-virtual {p1}, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string v0, "com.autolink.trackball.control"

    const-string v1, "0"

    .line 98
    invoke-static {v0, v1}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const-string v0, "com.autolink.trackball.control"

    const-string v1, "0"

    .line 104
    invoke-static {v0, v1}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 109
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const-string v0, "com.autolink.trackball.control"

    const-string v1, "0"

    .line 110
    invoke-static {v0, v1}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string v0, "com.autolink.trackball.control"

    const-string v1, "0"

    .line 92
    invoke-static {v0, v1}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "com.autolink.trackball.control"

    const-string v1, "1"

    .line 46
    invoke-static {v0, v1}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    const-string v0, "com.autolink.trackball.control"

    const-string v1, "1"

    .line 80
    invoke-static {v0, v1}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const-string v0, "com.autolink.trackball.control"

    const-string v1, "0"

    .line 86
    invoke-static {v0, v1}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

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
