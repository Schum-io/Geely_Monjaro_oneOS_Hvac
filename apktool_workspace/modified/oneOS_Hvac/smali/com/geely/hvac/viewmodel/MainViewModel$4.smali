.class Lcom/geely/hvac/viewmodel/MainViewModel$4;
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

    .line 507
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$4;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResume$0$MainViewModel$4()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$4;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->initUserCount()V

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

    .line 510
    sget-object p1, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    new-instance v0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$4$HFfD4MDmwtyVbUQfjaywBYb2Ubc;

    invoke-direct {v0, p0}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$4$HFfD4MDmwtyVbUQfjaywBYb2Ubc;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
