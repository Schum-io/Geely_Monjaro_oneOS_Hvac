.class Lcom/geely/hvac/viewmodel/MainViewModel$11;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MainViewModel.java"


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

    .line 766
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$11;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sender",
            "propertyId"
        }
    .end annotation

    .line 769
    check-cast p1, Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    .line 770
    sget-object p2, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSeatSaveEnableChangeListener, enable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 776
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$11;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1000(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableInt;->get()I

    move-result p1

    const/4 p2, 0x2

    if-gt p1, p2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 778
    :cond_1
    :goto_0
    sget-object p1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    const-string p2, "mSeatSaveEnableChangeListener, error index"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
