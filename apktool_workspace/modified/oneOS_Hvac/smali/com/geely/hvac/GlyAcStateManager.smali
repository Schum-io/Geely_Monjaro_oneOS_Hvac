.class public Lcom/geely/hvac/GlyAcStateManager;
.super Ljava/lang/Object;
.source "GlyAcStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AcStateManager"


# instance fields
.field private mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

.field private mUserHabit:Lcom/geely/hvac/adapt/UserHabit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/GlyAcStateManager;)Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/geely/hvac/GlyAcStateManager;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 22
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 23
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 25
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object v0, p0, Lcom/geely/hvac/GlyAcStateManager;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 27
    sget-object v0, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/-$$Lambda$GlyAcStateManager$IQkhu2cqaZFnQeeUDgwsvDd0ts8;

    invoke-direct {v1, p0}, Lcom/geely/hvac/-$$Lambda$GlyAcStateManager$IQkhu2cqaZFnQeeUDgwsvDd0ts8;-><init>(Lcom/geely/hvac/GlyAcStateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    new-instance v0, Lcom/geely/hvac/adapt/UserHabit;

    invoke-direct {v0}, Lcom/geely/hvac/adapt/UserHabit;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/GlyAcStateManager;->mUserHabit:Lcom/geely/hvac/adapt/UserHabit;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/geely/hvac/adapt/UserHabit;->init(Landroid/content/Context;)V

    .line 31
    iget-object p1, p0, Lcom/geely/hvac/GlyAcStateManager;->mUserHabit:Lcom/geely/hvac/adapt/UserHabit;

    new-instance v0, Lcom/geely/hvac/GlyAcStateManager$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/GlyAcStateManager$1;-><init>(Lcom/geely/hvac/GlyAcStateManager;)V

    invoke-virtual {p1, v0}, Lcom/geely/hvac/adapt/UserHabit;->setHabitChangeListener(Lcom/geely/hvac/adapt/UserHabit$HabitChangeListener;)V

    return-void
.end method

.method public synthetic lambda$init$0$GlyAcStateManager()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/geely/hvac/GlyAcStateManager;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->refreshAllState()V

    return-void
.end method
