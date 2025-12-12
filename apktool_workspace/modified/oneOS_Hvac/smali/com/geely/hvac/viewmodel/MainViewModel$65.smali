.class Lcom/geely/hvac/viewmodel/MainViewModel$65;
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

    .line 8790
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addReduceFanLevelChanged(IZ)V
    .locals 3
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

    .line 8827
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBehindFanLevelChangeListener addReduceFanLevelChanged  level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAdd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8828
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    const/16 p1, 0x80

    const v0, 0x10141700

    if-eqz p2, :cond_0

    .line 8830
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p2, p2, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x10141701

    invoke-interface {p2, v0, p1, v1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    goto :goto_0

    .line 8832
    :cond_0
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p2, p2, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x10141702

    invoke-interface {p2, v0, p1, v1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    .line 8835
    :goto_0
    sget-object p1, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    new-instance p2, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$65$D7zsUvIAcX56ywA9z6DNOFOCe5I;

    invoke-direct {p2, p0}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$65$D7zsUvIAcX56ywA9z6DNOFOCe5I;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$65;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$addReduceFanLevelChanged$1$MainViewModel$65()V
    .locals 4

    .line 8836
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0, v1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1500(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0, v1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1600(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result v0

    .line 8837
    :goto_0
    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 8838
    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 8840
    :cond_1
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBehindFanLevelChangeListener, refresh, level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v3}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8841
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    if-eqz v0, :cond_3

    .line 8842
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v2, v1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1700(Lcom/geely/hvac/viewmodel/MainViewModel;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 8843
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2300(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$onChanged$0$MainViewModel$65()V
    .locals 3

    .line 8813
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1700(Lcom/geely/hvac/viewmodel/MainViewModel;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 8814
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1400(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v1, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1500(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v1, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1600(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method public onAddChanged()V
    .locals 2

    .line 8822
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    const-string v1, "behind fan onAddChanged open the hvac"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onChanged(IZ)V
    .locals 3
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

    .line 8793
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "behind fan level change, level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isTouch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8800
    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    const/16 p2, 0x80

    if-nez p1, :cond_0

    .line 8803
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v0, 0x10010100

    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->bool2AdaptInt(Z)I

    move-result v1

    invoke-interface {p1, v0, p2, v1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    return-void

    .line 8806
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$2200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8807
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object v0, v0, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x10020200

    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v2, p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1300(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result p1

    invoke-interface {v0, v1, p2, p1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    goto :goto_0

    .line 8809
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object v0, v0, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x10020100

    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$65;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v2, p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1900(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result p1

    invoke-interface {v0, v1, p2, p1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    .line 8812
    :goto_0
    sget-object p1, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    new-instance p2, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$65$juGQYZ19rTvorH_SyjjB5qfrdg8;

    invoke-direct {p2, p0}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$65$juGQYZ19rTvorH_SyjjB5qfrdg8;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$65;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
