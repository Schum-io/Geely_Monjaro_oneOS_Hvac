.class Lcom/geely/hvac/viewmodel/MainViewModel$2;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


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

    .line 465
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$2;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResume$0$MainViewModel$2()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$2;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->initUserCount()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 484
    sget-object p1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    const-string v0, "liveData.getValue().clear()"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$2;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 486
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$2;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 488
    :cond_0
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$2;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mSeatDetailShow:Z

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 468
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$2;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mSeatDetailShow:Z

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 473
    sget-object p1, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    new-instance v0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$2$fLkXPankCOL4EYg-_Tnz9AMagLY;

    invoke-direct {v0, p0}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$2$fLkXPankCOL4EYg-_Tnz9AMagLY;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$2;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mSeatDetailShow:Z

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 479
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$2;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mSeatDetailShow:Z

    return-void
.end method
