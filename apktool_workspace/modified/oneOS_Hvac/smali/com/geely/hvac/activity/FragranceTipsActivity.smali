.class public Lcom/geely/hvac/activity/FragranceTipsActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "FragranceTipsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragranceTipsActivityTAG"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/geely/hvac/activity/FragranceTipsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/activity/FragranceTipsActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    .line 75
    invoke-virtual {p0}, Lcom/geely/hvac/activity/FragranceTipsActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 76
    iget-object v0, p0, Lcom/geely/hvac/activity/FragranceTipsActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$FragranceTipsActivity$JNGaSz9XdLzLbiaDfyzBD7tE_44;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$FragranceTipsActivity$JNGaSz9XdLzLbiaDfyzBD7tE_44;-><init>(Lcom/geely/hvac/activity/FragranceTipsActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/geely/hvac/activity/FragranceTipsActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$0$FragranceTipsActivity(Landroid/view/View;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/geely/hvac/activity/FragranceTipsActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainActivityVisible()Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    const-string v1, "FragranceTipsActivityTAG"

    if-eqz v0, :cond_0

    const-string v0, "finish Activity"

    .line 78
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/geely/hvac/activity/FragranceTipsActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "moveTaskToBack Activity"

    .line 81
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/geely/hvac/activity/FragranceTipsActivity;->moveTaskToBack(Z)Z

    .line 84
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 29
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09035a

    .line 31
    invoke-virtual {p0, p1}, Lcom/geely/hvac/activity/FragranceTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090112

    .line 32
    invoke-virtual {p0, v0}, Lcom/geely/hvac/activity/FragranceTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090113

    .line 33
    invoke-virtual {p0, v1}, Lcom/geely/hvac/activity/FragranceTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0d0011

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0d0012

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v3, Lcom/geely/hvac/adapter/FragranceTipsAdapter;

    invoke-direct {v3, p0, v2}, Lcom/geely/hvac/adapter/FragranceTipsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 39
    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 41
    new-instance v2, Lcom/geely/hvac/activity/FragranceTipsActivity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/geely/hvac/activity/FragranceTipsActivity$1;-><init>(Lcom/geely/hvac/activity/FragranceTipsActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/geely/hvac/activity/DialogActivity;->onDestroy()V

    return-void
.end method
