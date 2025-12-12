.class Lcom/geely/hvac/GlyAcStateManager$1;
.super Ljava/lang/Object;
.source "GlyAcStateManager.java"

# interfaces
.implements Lcom/geely/hvac/adapt/UserHabit$HabitChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/GlyAcStateManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/GlyAcStateManager;


# direct methods
.method constructor <init>(Lcom/geely/hvac/GlyAcStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/geely/hvac/GlyAcStateManager$1;->this$0:Lcom/geely/hvac/GlyAcStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHabitChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habit"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHabitChangeListener, habit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AcStateManager"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/GlyAcStateManager$1;->this$0:Lcom/geely/hvac/GlyAcStateManager;

    invoke-static {v0}, Lcom/geely/hvac/GlyAcStateManager;->access$000(Lcom/geely/hvac/GlyAcStateManager;)Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSaveTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "setHabitChangeListener, index not avaliable"

    .line 36
    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLoadStoreEvChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/geely/hvac/GlyAcStateManager$1;->this$0:Lcom/geely/hvac/GlyAcStateManager;

    invoke-static {v0}, Lcom/geely/hvac/GlyAcStateManager;->access$000(Lcom/geely/hvac/GlyAcStateManager;)Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLoadEv()Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method
