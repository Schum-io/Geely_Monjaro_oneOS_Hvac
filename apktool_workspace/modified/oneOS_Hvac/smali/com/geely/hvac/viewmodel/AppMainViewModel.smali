.class public Lcom/geely/hvac/viewmodel/AppMainViewModel;
.super Lcom/geely/hvac/viewmodel/MainViewModel;
.source "AppMainViewModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/geely/hvac/viewmodel/MainViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMassageDetailActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 21
    const-class v0, Lcom/geely/hvac/activity/MassageDetailActivity;

    return-object v0
.end method

.method protected getPhysiotherapyDetailLeftActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 26
    const-class v0, Lcom/geely/hvac/activity/PhysiotherapyDetailLeftActivity;

    return-object v0
.end method

.method public getSeatHeatBg(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    const v0, 0x7f0d0053

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f070208

    return p1

    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x10050201
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSeatWindBg(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f070208

    return p1

    :pswitch_0
    const p1, 0x7f0d007b

    return p1

    :pswitch_1
    const p1, 0x7f0d007a

    return p1

    :pswitch_2
    const p1, 0x7f0d0079

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x10050101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSeatWindBgAlpha(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :pswitch_1
    const p1, 0x3f19999a    # 0.6f

    return p1

    :pswitch_2
    const p1, 0x3e99999a    # 0.3f

    return p1

    :pswitch_data_0
    .packed-switch 0x10050101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isA1()Z
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->mSystem:Lcom/geely/os/system/IGlySystem;

    invoke-interface {v0}, Lcom/geely/os/system/IGlySystem;->getCarVehicleType()I

    move-result v0

    .line 31
    sget-object v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isA1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isA2()Z
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->mSystem:Lcom/geely/os/system/IGlySystem;

    invoke-interface {v0}, Lcom/geely/os/system/IGlySystem;->getCarVehicleType()I

    move-result v0

    .line 37
    sget-object v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isA2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onIntChangeEvent(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId",
            "value"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/geely/hvac/viewmodel/MainViewModel;->onIntChangeEvent(III)V

    const p2, 0x10140200

    if-ne p1, p2, :cond_0

    .line 84
    sget-object p1, Lcom/geely/hvac/viewmodel/AppMainViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onIntChangeEvent_____HVAC_FUNC_HARDKEY     value : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainActivityVisible()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->mViewModelFroze:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIsKx11A3Mode()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 106
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFanAuto()Z

    move-result p2

    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getAutoAndManualFanLevel()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/geely/hvac/util/PhysicsCallbackHint;->showWindLevel(Landroid/content/Context;ZI)V

    goto/16 :goto_0

    .line 100
    :pswitch_1
    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainActivityVisible()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->mViewModelFroze:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIsKx11A3Mode()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const p3, 0x10070100

    const/16 v0, 0x8

    invoke-interface {p2, p3, v0}, Lcom/geely/os/car/IGlyCar;->getIntProperty(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/geely/hvac/util/PhysicsCallbackHint;->showWindDirection(Landroid/content/Context;I)V

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainActivityVisible()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->mViewModelFroze:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIsKx11A3Mode()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 96
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFanAuto()Z

    move-result p2

    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getAutoAndManualFanLevel()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/geely/hvac/util/PhysicsCallbackHint;->showWindLevel(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainActivityVisible()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->mViewModelFroze:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIsKx11A3Mode()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/hvac/util/PhysicsCallbackHint;->showTemperature(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10140202
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
