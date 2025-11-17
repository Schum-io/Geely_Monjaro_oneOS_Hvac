.class Lcom/geely/hvac/viewmodel/MainViewModel$64;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/viewmodel/MainViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 8731
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addReduceFanLevelChanged(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "isAdd"
        }
    .end annotation

    .line 8775
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2000(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    .line 8776
    sget-object v1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontFanLevelChangeListener addReduceFanLevelChanged  level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAdd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 8778
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    :cond_0
    const/16 p1, 0x8

    const v0, 0x10141700

    if-eqz p2, :cond_1

    .line 8781
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p2, p2, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x10141701

    invoke-interface {p2, v0, p1, v1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    goto :goto_0

    .line 8783
    :cond_1
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p2, p2, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x10141702

    invoke-interface {p2, v0, p1, v1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    :goto_0
    return-void
.end method

.method public onAddChanged()V
    .locals 2

    .line 8766
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    const-string v1, "front fan onAddChanged open the hvac"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onChanged(IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "isTouch"
        }
    .end annotation

    .line 8734
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "front fan level change, level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,isTouch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 8738
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void

    .line 8741
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8742
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ac_FrontAC_Airflow_isop"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8743
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1400(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "2"

    goto :goto_0

    :cond_2
    const-string v0, "1"

    :goto_0
    const-string v1, "ac_FrontAC_Airflowbefore_isop"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ac_FrontAC_AirflowControl_ev"

    .line 8744
    invoke-static {v0, p2}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 8746
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 8748
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p2, p2, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v0, 0x10020200

    const/16 v1, 0x8

    invoke-interface {p2, v0, v1}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result p2

    .line 8749
    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object v2, v2, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v3, 0x10020100

    invoke-interface {v2, v3, v1}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v2

    .line 8751
    sget-object v4, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFrontFanLevelChangeListener, autoSupport:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {v6, p2}, Lcom/geely/hvac/viewmodel/MainViewModel;->formatSupported(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, ",manualSupport:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v5, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {v5, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->formatSupported(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8756
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1400(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8757
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p2, p2, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v2, p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1300(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result p1

    invoke-interface {p2, v0, v1, p1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    goto :goto_1

    .line 8759
    :cond_3
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p2, p2, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$64;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0, p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1900(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result p1

    invoke-interface {p2, v3, v1, p1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    :goto_1
    return-void
.end method
