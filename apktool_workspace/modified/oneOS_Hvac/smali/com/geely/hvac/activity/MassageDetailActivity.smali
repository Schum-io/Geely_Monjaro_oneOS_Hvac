.class public Lcom/geely/hvac/activity/MassageDetailActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "MassageDetailActivity.java"


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    const-string v0, "MassageDetailActivity"

    .line 15
    iput-object v0, p0, Lcom/geely/hvac/activity/MassageDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 3

    .line 29
    invoke-virtual {p0}, Lcom/geely/hvac/activity/MassageDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutMassageSetDetailBinding;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/geely/hvac/activity/MassageDetailActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 31
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$MassageDetailActivity$pWiF-1mJbwXd8IdmMc-CQf87wng;

    invoke-direct {v2, p0}, Lcom/geely/hvac/activity/-$$Lambda$MassageDetailActivity$pWiF-1mJbwXd8IdmMc-CQf87wng;-><init>(Lcom/geely/hvac/activity/MassageDetailActivity;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$0$MassageDetailActivity(Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/geely/hvac/activity/MassageDetailActivity;->finish()V

    .line 33
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onAutoHide()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/geely/hvac/activity/DialogActivity;->onAutoHide()V

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

    .line 19
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MassageDetailActivity"

    const-string v0, "onCreate"

    .line 20
    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "kx11a2"

    .line 21
    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/geely/hvac/activity/MassageDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/activity/MassageDetailActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/hvac/activity/MassageDetailActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSetActivityLifecycleObserver()Landroidx/lifecycle/DefaultLifecycleObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/geely/hvac/activity/DialogActivity;->onPause()V

    const-string v0, "MassageDetailActivity"

    const-string v1, "onPause"

    .line 40
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lcom/geely/hvac/activity/MassageDetailActivity;->finish()V

    return-void
.end method
