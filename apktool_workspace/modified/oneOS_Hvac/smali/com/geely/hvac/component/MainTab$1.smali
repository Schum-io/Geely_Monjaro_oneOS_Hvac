.class Lcom/geely/hvac/component/MainTab$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MainTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/component/MainTab;->setUpWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentScrollState:I

.field private mPreScrollState:I

.field final synthetic this$0:Lcom/geely/hvac/component/MainTab;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/MainTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/geely/hvac/component/MainTab$1;->this$0:Lcom/geely/hvac/component/MainTab;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    const/4 p1, 0x0

    .line 205
    iput p1, p0, Lcom/geely/hvac/component/MainTab$1;->mCurrentScrollState:I

    .line 206
    iput p1, p0, Lcom/geely/hvac/component/MainTab$1;->mPreScrollState:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 227
    iget v0, p0, Lcom/geely/hvac/component/MainTab$1;->mCurrentScrollState:I

    iput v0, p0, Lcom/geely/hvac/component/MainTab$1;->mPreScrollState:I

    .line 228
    iput p1, p0, Lcom/geely/hvac/component/MainTab$1;->mCurrentScrollState:I

    .line 229
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab$1;->this$0:Lcom/geely/hvac/component/MainTab;

    invoke-static {v0}, Lcom/geely/hvac/component/MainTab;->access$300(Lcom/geely/hvac/component/MainTab;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrollStateChanged, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 211
    iget p3, p0, Lcom/geely/hvac/component/MainTab$1;->mPreScrollState:I

    if-nez p3, :cond_0

    iget p3, p0, Lcom/geely/hvac/component/MainTab$1;->mCurrentScrollState:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object p3, p0, Lcom/geely/hvac/component/MainTab$1;->this$0:Lcom/geely/hvac/component/MainTab;

    invoke-static {p3}, Lcom/geely/hvac/component/MainTab;->access$000(Lcom/geely/hvac/component/MainTab;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p3}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 215
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab$1;->this$0:Lcom/geely/hvac/component/MainTab;

    invoke-static {v0}, Lcom/geely/hvac/component/MainTab;->access$100(Lcom/geely/hvac/component/MainTab;)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    add-float/2addr p1, p2

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/geely/hvac/component/MainTab$1;->this$0:Lcom/geely/hvac/component/MainTab;

    invoke-static {p1}, Lcom/geely/hvac/component/MainTab;->access$200(Lcom/geely/hvac/component/MainTab;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 216
    iget-object p1, p0, Lcom/geely/hvac/component/MainTab$1;->this$0:Lcom/geely/hvac/component/MainTab;

    invoke-static {p1}, Lcom/geely/hvac/component/MainTab;->access$000(Lcom/geely/hvac/component/MainTab;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab$1;->this$0:Lcom/geely/hvac/component/MainTab;

    invoke-static {v0}, Lcom/geely/hvac/component/MainTab;->access$300(Lcom/geely/hvac/component/MainTab;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected, position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab$1;->this$0:Lcom/geely/hvac/component/MainTab;

    invoke-static {v0}, Lcom/geely/hvac/component/MainTab;->access$400(Lcom/geely/hvac/component/MainTab;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method
