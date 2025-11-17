.class public Lcom/geely/hvac/activity/SeatSetActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "SeatSetActivity.java"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutSeatSetBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutSeatSetBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutSeatSetBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/activity/SeatSetActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatSetBinding;

    .line 26
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatSetBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 27
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatSetActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatSetBinding;

    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutSeatSetBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
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

    .line 20
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatTimeSetActivityLifecycleObserver()Landroidx/lifecycle/DefaultLifecycleObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
