.class Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SeatSetDetailViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;


# direct methods
.method constructor <init>(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0
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

    .line 56
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->access$000(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "\u8170\u6258support\u53d8\u5316"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->access$100(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarSupport()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel$1;->this$0:Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    invoke-static {p1}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->access$200(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableInt;->set(I)V

    :cond_0
    return-void
.end method
