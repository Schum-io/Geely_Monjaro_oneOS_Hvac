.class Lcom/geely/hvac/activity/GlyMainActivity$4;
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

    .line 390
    iput-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity$4;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

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

    .line 393
    check-cast p1, Landroidx/databinding/ObservableInt;

    invoke-virtual {p1}, Landroidx/databinding/ObservableInt;->get()I

    move-result p1

    .line 394
    iget-object p2, p0, Lcom/geely/hvac/activity/GlyMainActivity$4;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-static {p2}, Lcom/geely/hvac/activity/GlyMainActivity;->access$100(Lcom/geely/hvac/activity/GlyMainActivity;)Lcom/geely/hvac/databinding/LayoutMainBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutMainBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 395
    iget-object p2, p0, Lcom/geely/hvac/activity/GlyMainActivity$4;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-static {p2}, Lcom/geely/hvac/activity/GlyMainActivity;->access$100(Lcom/geely/hvac/activity/GlyMainActivity;)Lcom/geely/hvac/databinding/LayoutMainBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutMainBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
