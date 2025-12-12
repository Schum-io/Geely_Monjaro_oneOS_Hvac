.class Lcom/geely/hvac/viewmodel/MainViewModel$45;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;


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

    .line 2667
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$45;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/widget/ImageView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 2685
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2686
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$45;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object v0, v0, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x2d080100

    const v2, 0x2d080102

    invoke-interface {v0, v1, p1, v2}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    move-result v0

    .line 2687
    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$45;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {v1, p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->enableSeatSeat(I)V

    .line 2688
    sget-object v1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSeatLegSupportHeightDownListener, down\uff0czone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",res:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2690
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$45;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/geely/hvac/classify/classifyreturn/SeatKeyReturn;->getInstance()Lcom/geely/hvac/classify/classifyreturn/SeatKeyReturn;

    move-result-object v0

    const/16 v1, 0x1e

    const/16 v2, 0x12e

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/geely/hvac/classify/classifyreturn/SeatKeyReturn;->initKey(III)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2692
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/geely/hvac/utils/StackPrinter;->getExceptionStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onUp(Landroid/widget/ImageView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 2671
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2672
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$45;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object v0, v0, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x2d080100

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    move-result v0

    .line 2673
    sget-object v1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSeatLegSupportHeightDownListener, up\uff0czone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",res:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2675
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$45;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->liveDataCancel:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/geely/hvac/classify/classifyreturn/SeatKeyReturn;->getInstance()Lcom/geely/hvac/classify/classifyreturn/SeatKeyReturn;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/geely/hvac/classify/classifyreturn/SeatKeyReturn;->initCancel(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2677
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/geely/hvac/utils/StackPrinter;->getExceptionStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
