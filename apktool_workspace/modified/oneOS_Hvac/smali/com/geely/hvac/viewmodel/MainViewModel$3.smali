.class Lcom/geely/hvac/viewmodel/MainViewModel$3;
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

    .line 494
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$3;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResume$0$MainViewModel$3()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$3;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

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

    .line 497
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$3;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

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

    .line 502
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$3;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$100(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 503
    sget-object p1, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    new-instance v0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$3$o8ishVQmCs4ow0TJh1FyKPsFAZQ;

    invoke-direct {v0, p0}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$3$o8ishVQmCs4ow0TJh1FyKPsFAZQ;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$3;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
