.class Lcom/geely/hvac/viewmodel/MainViewModel$9;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;


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

    .line 740
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$9;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 744
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$9;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$600(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public onGetHvacVisibility()Z
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$9;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$700(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onOpen(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 749
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$9;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$600(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
