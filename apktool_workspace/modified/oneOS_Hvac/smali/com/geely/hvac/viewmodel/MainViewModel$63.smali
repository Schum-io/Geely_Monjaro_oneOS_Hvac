.class Lcom/geely/hvac/viewmodel/MainViewModel$63;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;


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

    .line 8706
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChanged$0$MainViewModel$63()V
    .locals 4

    .line 8714
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1400(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0, v1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1500(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0, v1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1600(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result v0

    .line 8715
    :goto_0
    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 8716
    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 8718
    :cond_1
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontFanAutoLevelChangeListener, refresh, level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v3}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8719
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    if-eqz v0, :cond_3

    .line 8720
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1400(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v2, v1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1700(Lcom/geely/hvac/viewmodel/MainViewModel;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 8721
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1800(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1400(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

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

.method public onChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 8709
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "front fan auto level change, level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8710
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 8711
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object v0, v0, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$63;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v1, p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1300(Lcom/geely/hvac/viewmodel/MainViewModel;I)I

    move-result p1

    const v1, 0x10020200

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, p1}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    .line 8713
    sget-object p1, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    new-instance v0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$63$-AXvtpv9kVQ7eYYdb3peabmshYc;

    invoke-direct {v0, p0}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$63$-AXvtpv9kVQ7eYYdb3peabmshYc;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$63;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
