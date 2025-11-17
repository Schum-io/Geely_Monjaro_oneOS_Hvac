.class public Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;
.super Lcom/geely/hvac/activity/BaseAutoHideDialog;
.source "SeatPhysicsSetSaveDialog.java"


# instance fields
.field private binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

.field private mContext:Landroid/content/Context;

.field private mSaveClickListener:Landroid/view/View$OnClickListener;

.field private mZone:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "zone"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/geely/hvac/activity/BaseAutoHideDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mZone:I

    .line 25
    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$u5z_vpru6sM2cMNXb_PHOeaW6sE;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$u5z_vpru6sM2cMNXb_PHOeaW6sE;-><init>(Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;)V

    iput-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mSaveClickListener:Landroid/view/View$OnClickListener;

    .line 21
    iput p2, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mZone:I

    .line 22
    iput-object p1, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    .line 34
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 35
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->close1:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$yp19fTOVX5UGI1Z0XhTOPbOvnZ0;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$yp19fTOVX5UGI1Z0XhTOPbOvnZ0;-><init>(Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->close2:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$YkmXwj1NJTmGA44fHAitR7mkLkU;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$YkmXwj1NJTmGA44fHAitR7mkLkU;-><init>(Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->save:Lcom/geely/hvac/component/TextViewWithBg;

    iget-object v1, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mSaveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->reset:Lcom/geely/hvac/component/TextViewWithBg;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$at3dBaEdLYJrEM_1B50z9ntzFDg;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$at3dBaEdLYJrEM_1B50z9ntzFDg;-><init>(Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->saveRight:Lcom/geely/hvac/component/TextViewWithBg;

    iget-object v1, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mSaveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->resetRight:Lcom/geely/hvac/component/TextViewWithBg;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$Bu-OI6NAmrTmUmW1AIsOrTCkV3A;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$Bu-OI6NAmrTmUmW1AIsOrTCkV3A;-><init>(Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->leftNormal:Lcom/geely/hvac/component/ViewWithBackground;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$IJLRObPAODiJL_2zHeKVrnnj4oQ;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$IJLRObPAODiJL_2zHeKVrnnj4oQ;-><init>(Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->hudSeatBg:Lcom/geely/hvac/component/ViewWithBackground;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$9r7MfGmtiL92ni3v-KusI7mmfwE;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$SeatPhysicsSetSaveDialog$9r7MfGmtiL92ni3v-KusI7mmfwE;-><init>(Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$1$SeatPhysicsSetSaveDialog(Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->dismiss()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$2$SeatPhysicsSetSaveDialog(Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->dismiss()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$3$SeatPhysicsSetSaveDialog(Landroid/view/View;)V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->dismiss()V

    .line 40
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    iget v1, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mZone:I

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setSeatPosition(I)Z

    .line 41
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$4$SeatPhysicsSetSaveDialog(Landroid/view/View;)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->dismiss()V

    .line 45
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    iget v1, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mZone:I

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setSeatPosition(I)Z

    .line 46
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$5$SeatPhysicsSetSaveDialog(Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->dismiss()V

    .line 50
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->mirrorSet(Landroid/view/View;)V

    .line 51
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$6$SeatPhysicsSetSaveDialog(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->dismiss()V

    .line 55
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->hudSeat(Landroid/view/View;)V

    .line 56
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$0$SeatPhysicsSetSaveDialog(Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->dismiss()V

    .line 28
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    iget v1, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mZone:I

    iget-object v2, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->saveSeatPosition(ILandroid/content/Context;)Z

    .line 29
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

    .line 62
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->onDetachedFromWindow()V

    return-void
.end method

.method protected onStart()V
    .locals 6

    .line 67
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->onStart()V

    .line 71
    iget v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->mZone:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 72
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->tvQuickSet:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isHudAndRearMirrorActive()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->hudSeatBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v4

    const v5, 0x20110100

    invoke-virtual {v4, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(I)Landroidx/databinding/ObservableInt;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->hudIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(I)Landroidx/databinding/ObservableInt;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->saveRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->resetRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->save:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->reset:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 80
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->tvQuickSet:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->hudSeatBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->hudIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->saveRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->resetRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->save:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->reset:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    goto :goto_3

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->tvQuickSet:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->hudSeatBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatPhysicsSetSaveDialog;->binding:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->hudIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method
