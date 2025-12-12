.class Lcom/geely/hvac/viewmodel/MainViewModel$1;
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

    .line 430
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResume$0$MainViewModel$1()V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->initUserCount()V

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

    .line 442
    sget-object p1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    const-string v0, "mMainActivityLifecycleObserver onPause"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mSeatSetTipsDialog:Lcom/geely/hvac/dialog/SeatSetTipsDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mSeatSetTipsDialog:Lcom/geely/hvac/dialog/SeatSetTipsDialog;

    invoke-virtual {p1}, Lcom/geely/hvac/dialog/SeatSetTipsDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mSeatSetTipsDialog:Lcom/geely/hvac/dialog/SeatSetTipsDialog;

    invoke-virtual {p1}, Lcom/geely/hvac/dialog/SeatSetTipsDialog;->dismiss()V

    .line 445
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mSeatSetTipsDialog:Lcom/geely/hvac/dialog/SeatSetTipsDialog;

    :cond_0
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

    .line 433
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$000(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 434
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 435
    sget-object p1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    const-string v0, "mMainActivityLifecycleObserver onResume"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 437
    sget-object p1, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    new-instance v0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$1$oFelV53N7LiyJbqSS3TSmfqkYng;

    invoke-direct {v0, p0}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$1$oFelV53N7LiyJbqSS3TSmfqkYng;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 451
    sget-object p1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    const-string v0, "mMainActivityLifecycleObserver onStop "

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 453
    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivities()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 454
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$200(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    :cond_1
    :goto_0
    return-void
.end method
