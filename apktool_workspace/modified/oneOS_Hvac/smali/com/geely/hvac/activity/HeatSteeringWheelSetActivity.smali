.class public Lcom/geely/hvac/activity/HeatSteeringWheelSetActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "HeatSteeringWheelSetActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/geely/hvac/activity/HeatSteeringWheelSetActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBinding;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/geely/hvac/activity/HeatSteeringWheelSetActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 32
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAutoHide()V
    .locals 2

    const-string v0, "HeatSteeringWheelSetActivity"

    const-string v1, "onAutoHide==========================="

    .line 37
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-super {p0}, Lcom/geely/hvac/activity/DialogActivity;->onAutoHide()V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, v0}, Lcom/geely/hvac/activity/HeatSteeringWheelSetActivity;->overridePendingTransition(II)V

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

    .line 21
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/geely/hvac/activity/HeatSteeringWheelSetActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/hvac/activity/HeatSteeringWheelSetActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getAcSetActivityLifecycleObserver()Landroidx/lifecycle/DefaultLifecycleObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-string p1, "kx11a2"

    .line 23
    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/geely/hvac/activity/HeatSteeringWheelSetActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
