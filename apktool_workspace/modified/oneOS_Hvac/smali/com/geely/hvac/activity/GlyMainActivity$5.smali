.class Lcom/geely/hvac/activity/GlyMainActivity$5;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "GlyMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/activity/GlyMainActivity;->initMainBinding()V
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

    .line 412
    iput-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity$5;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity$5;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/GlyMainActivity;->access$200(Lcom/geely/hvac/activity/GlyMainActivity;)Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method
