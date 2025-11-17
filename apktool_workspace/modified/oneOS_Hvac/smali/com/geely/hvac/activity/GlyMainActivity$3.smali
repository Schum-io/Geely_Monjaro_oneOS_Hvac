.class Lcom/geely/hvac/activity/GlyMainActivity$3;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "GlyMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/activity/GlyMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/activity/GlyMainActivity;


# direct methods
.method constructor <init>(Lcom/geely/hvac/activity/GlyMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity$3;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

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

    .line 386
    iget-object p2, p0, Lcom/geely/hvac/activity/GlyMainActivity$3;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-static {p2}, Lcom/geely/hvac/activity/GlyMainActivity;->access$300(Lcom/geely/hvac/activity/GlyMainActivity;)Lcom/geely/hvac/adapter/MainPagerAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity$3;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/GlyMainActivity;->access$200(Lcom/geely/hvac/activity/GlyMainActivity;)Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    check-cast p1, Landroidx/databinding/ObservableInt;

    invoke-virtual {p1}, Landroidx/databinding/ObservableInt;->get()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p2, p1}, Lcom/geely/hvac/adapter/MainPagerAdapter;->setItemSize(I)V

    return-void
.end method
