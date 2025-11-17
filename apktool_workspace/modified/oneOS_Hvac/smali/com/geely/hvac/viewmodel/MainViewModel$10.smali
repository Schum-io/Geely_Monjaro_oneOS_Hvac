.class Lcom/geely/hvac/viewmodel/MainViewModel$10;
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

    .line 758
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$10;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 1
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

    .line 761
    sget-object p1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    const-string p2, "mFragranceChangeListener"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 762
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/hvac/viewmodel/MainViewModel$10;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {p2}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$800(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableBoolean;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p2

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$10;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$900(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->updateWidget(Landroid/content/Context;ZI)V

    return-void
.end method
