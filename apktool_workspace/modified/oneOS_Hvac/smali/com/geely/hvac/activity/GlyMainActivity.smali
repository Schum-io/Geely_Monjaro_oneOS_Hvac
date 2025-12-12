.class public Lcom/geely/hvac/activity/GlyMainActivity;
.super Lcom/geely/hvac/activity/AutoHideActivity;
.source "GlyMainActivity.java"


# instance fields
.field private downY:I

.field private final mAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

.field private mAdapter:Lcom/geely/hvac/adapter/MainPagerAdapter;

.field private final mBgAlphaTime:J

.field private mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

.field private mCloseBgAlphaAnimation:Landroid/animation/ValueAnimator;

.field private mCloseContentAlphaAnimation:Landroid/animation/ValueAnimator;

.field private mCloseTranslateAnimation:Landroid/animation/ValueAnimator;

.field private final mContentAlphaDelayTime:J

.field private final mContentAlphaTime:J

.field private mContentEndTopMargin:I

.field private mContentStartTopMargin:I

.field private final mContentTranslateDelayTime:J

.field private final mContentTranslateTime:J

.field private mFragranceSupportListener:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private final mHotZoneHeight:I

.field private mIsHide:Z

.field private mLifeEvent:Ljava/lang/String;

.field private mMainTabIndexChangeListener:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

.field private mOpenBgAlphaAnimation:Landroid/animation/ValueAnimator;

.field private mOpenContentAlphaAnimation:Landroid/animation/ValueAnimator;

.field private mOpenTranslateAnimation:Landroid/animation/ValueAnimator;

.field private final mTotalAnimateTime:J

.field private upY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/geely/hvac/activity/AutoHideActivity;-><init>()V

    const-wide/16 v0, 0x15e

    .line 40
    iput-wide v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mTotalAnimateTime:J

    const/16 v0, 0x33

    .line 41
    iput v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mHotZoneHeight:I

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mLifeEvent:Ljava/lang/String;

    const-wide/16 v0, 0x9b

    .line 43
    iput-wide v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBgAlphaTime:J

    .line 44
    iput-wide v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentAlphaTime:J

    const-wide/16 v0, 0x57

    .line 45
    iput-wide v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentAlphaDelayTime:J

    const-wide/16 v0, 0xdd

    .line 46
    iput-wide v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentTranslateTime:J

    const-wide/16 v0, 0xaf

    .line 47
    iput-wide v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentTranslateDelayTime:J

    const/16 v0, 0x64

    .line 50
    iput v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentEndTopMargin:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenBgAlphaAnimation:Landroid/animation/ValueAnimator;

    .line 52
    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenContentAlphaAnimation:Landroid/animation/ValueAnimator;

    .line 53
    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenTranslateAnimation:Landroid/animation/ValueAnimator;

    .line 54
    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseBgAlphaAnimation:Landroid/animation/ValueAnimator;

    .line 55
    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseContentAlphaAnimation:Landroid/animation/ValueAnimator;

    .line 56
    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseTranslateAnimation:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mIsHide:Z

    .line 61
    new-instance v0, Lcom/geely/hvac/activity/GlyMainActivity$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/GlyMainActivity$1;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

    .line 383
    new-instance v0, Lcom/geely/hvac/activity/GlyMainActivity$3;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/GlyMainActivity$3;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mFragranceSupportListener:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 390
    new-instance v0, Lcom/geely/hvac/activity/GlyMainActivity$4;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/GlyMainActivity$4;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainTabIndexChangeListener:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->downY:I

    .line 434
    iput v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->upY:I

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/activity/GlyMainActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->moveToBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/geely/hvac/activity/GlyMainActivity;)Lcom/geely/hvac/databinding/LayoutMainBinding;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/hvac/activity/GlyMainActivity;)Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/hvac/activity/GlyMainActivity;)Lcom/geely/hvac/adapter/MainPagerAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mAdapter:Lcom/geely/hvac/adapter/MainPagerAdapter;

    return-object p0
.end method

.method private checkStoragePermission()V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 148
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u7528\u6237\u5f7b\u5e95\u62d2\u7edd\u6388\u4e88\u6743\u9650\uff0c\u4e00\u822c\u4f1a\u63d0\u793a\u7528\u6237\u8fdb\u5165\u8bbe\u7f6e\u6743\u9650\u754c\u9762"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 154
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u7528\u6237\u672a\u5f7b\u5e95\u62d2\u7edd\u6388\u4e88\u6743\u9650"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initMainBinding()V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutMainBinding;->setModel(Lcom/geely/hvac/viewmodel/MainViewModel;)V

    .line 404
    new-instance v0, Lcom/geely/hvac/adapter/MainPagerAdapter;

    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-direct {v0, v1, v2}, Lcom/geely/hvac/adapter/MainPagerAdapter;-><init>(Landroid/content/Context;Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mAdapter:Lcom/geely/hvac/adapter/MainPagerAdapter;

    .line 405
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mAdapter:Lcom/geely/hvac/adapter/MainPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 406
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 407
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->tab:Lcom/geely/hvac/component/MainTab;

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutMainBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/MainTab;->setUpWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 408
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->tab:Lcom/geely/hvac/component/MainTab;

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/MainTab;->setTabIndex(I)V

    .line 409
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mAdapter:Lcom/geely/hvac/adapter/MainPagerAdapter;

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceSupported()Landroidx/databinding/ObservableInt;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/geely/hvac/adapter/MainPagerAdapter;->setItemSize(I)V

    .line 410
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainTabIndexChangeListener:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 411
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceSupported()Landroidx/databinding/ObservableInt;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mFragranceSupportListener:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 412
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/geely/hvac/activity/GlyMainActivity$5;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/GlyMainActivity$5;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 418
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 419
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_1
    return-void
.end method

.method private isHotZone(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutMainBinding;->pull:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutMainBinding;->pull:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x33

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInOfBounds(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 463
    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 466
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutMainBinding;->pull:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isOutOfBounds(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutMainBinding;->pull:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$-Y2vXaWfcZJHzx1aOAZdMC5tUDI(Lcom/geely/hvac/activity/GlyMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->startOpenAnimate()V

    return-void
.end method

.method public static synthetic lambda$0rqjPa7lVI-_bSV-43f3__7LwfQ(Lcom/geely/hvac/activity/GlyMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->startCloseAnimation()V

    return-void
.end method

.method private moveToBack()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/geely/hvac/utils/CommonUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->startCloseAnimation()V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$0rqjPa7lVI-_bSV-43f3__7LwfQ;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$0rqjPa7lVI-_bSV-43f3__7LwfQ;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {p0, v0}, Lcom/geely/hvac/activity/GlyMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private resetAnimateState()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->bg:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 364
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 365
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 366
    iget v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentStartTopMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 367
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resetCloseAnimate()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseBgAlphaAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseBgAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseContentAlphaAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseContentAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseTranslateAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseTranslateAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method private resetOpenAnimate()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenBgAlphaAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenBgAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenContentAlphaAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenContentAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenTranslateAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenTranslateAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method private restoreAnimateState()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mLifeEvent:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mLifeEvent:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "restoreAnimateState yes"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->bg:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 374
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 375
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 376
    iget v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentEndTopMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 377
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "restoreAnimateState no"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setPageTab(Landroid/content/Intent;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "isSwitchTab"
        }
    .end annotation

    const-string v0, "enter_hvac_page"

    const/4 v1, -0x1

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 105
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent hvacPage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-ltz v0, :cond_6

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceSupported()Landroidx/databinding/ObservableInt;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string p2, "onNewIntent fragranceSupported false"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const-string v2, "enter_seat_page"

    .line 115
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x4

    const-string v3, ","

    const-string v4, "start from vr ,bug no seat tab showing"

    if-ne v2, p1, :cond_3

    .line 118
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLocationTabIndex()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    .line 125
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLocationTabIndex()I

    move-result v2

    .line 126
    iget-object v5, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSeatLocationTabIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eq v2, v1, :cond_4

    .line 128
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    if-eqz p2, :cond_6

    .line 137
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutMainBinding;->tab:Lcom/geely/hvac/component/MainTab;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/MainTab;->setTabIndex(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private startCloseAnimation()V
    .locals 9

    .line 258
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->resetOpenAnimate()V

    .line 259
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->resetCloseAnimate()V

    .line 260
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 261
    iget-object v3, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutMainBinding;->bg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getAlpha()F

    move-result v3

    aput v3, v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseBgAlphaAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x9b

    .line 262
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 263
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseBgAlphaAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0xc3

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 264
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseBgAlphaAnimation:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$PgfvaVXzd3M5KAk6TTbZz0ZLoQw;

    invoke-direct {v7, p0}, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$PgfvaVXzd3M5KAk6TTbZz0ZLoQw;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 284
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseBgAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    new-array v2, v0, [F

    .line 286
    iget-object v7, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v7, v7, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getAlpha()F

    move-result v7

    aput v7, v2, v1

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseContentAlphaAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x57

    .line 287
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 288
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseContentAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 289
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseContentAlphaAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$VlXst2lR81lZyRks5qjbIpdykTc;

    invoke-direct {v4, p0}, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$VlXst2lR81lZyRks5qjbIpdykTc;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseContentAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 294
    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    iput v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentStartTopMargin:I

    :cond_0
    new-array v0, v0, [I

    .line 297
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    aput v2, v0, v1

    iget v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentStartTopMargin:I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseTranslateAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdd

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 299
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$4fXRIt30XAB4PKmCZBjIt6cx3WY;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$4fXRIt30XAB4PKmCZBjIt6cx3WY;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 305
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mCloseTranslateAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 306
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "startCloseAnimation over"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startOpenAnimate()V
    .locals 7

    .line 209
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "startOpenAnimate"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->resetCloseAnimate()V

    .line 211
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->resetOpenAnimate()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 212
    iget-object v2, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutMainBinding;->bg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenBgAlphaAnimation:Landroid/animation/ValueAnimator;

    .line 215
    new-instance v5, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$ohFbym66NjHM8JoH-YjwEBulJAA;

    invoke-direct {v5, p0}, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$ohFbym66NjHM8JoH-YjwEBulJAA;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenBgAlphaAnimation:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/geely/hvac/activity/GlyMainActivity$2;

    invoke-direct {v5, p0}, Lcom/geely/hvac/activity/GlyMainActivity$2;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenBgAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v1, v0, [F

    .line 228
    iget-object v5, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v5, v5, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getAlpha()F

    move-result v5

    aput v5, v1, v3

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenContentAlphaAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x57

    .line 229
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 230
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenContentAlphaAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x9b

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 231
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenContentAlphaAnimation:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$bzXvbwq_6HzkbjG9-wAQE4mzE_Y;

    invoke-direct {v5, p0}, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$bzXvbwq_6HzkbjG9-wAQE4mzE_Y;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenContentAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 235
    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iput v3, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentEndTopMargin:I

    .line 237
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v5, 0x400

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 238
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 240
    iput v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentEndTopMargin:I

    :goto_0
    new-array v0, v0, [I

    .line 242
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    aput v1, v0, v3

    iget v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentEndTopMargin:I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenTranslateAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xaf

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 244
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenTranslateAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 246
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$ebqBv6Y91zKFn7-sygbV9A4wCuU;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$ebqBv6Y91zKFn7-sygbV9A4wCuU;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mOpenTranslateAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 254
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "startOpenAnimate over"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 476
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->moveToBack()V

    return-void
.end method

.method public synthetic lambda$onResume$6$GlyMainActivity()V
    .locals 3

    .line 320
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isDisplayIVIClick()Landroidx/databinding/ObservableBoolean;

    .line 322
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/geely/hvac/data/GlySensorsData;->registerSuperProperties(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic lambda$startCloseAnimation$3$GlyMainActivity(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 265
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 266
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->bg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 269
    invoke-static {}, Lcom/geely/hvac/GlyAcManager;->getInstance()Lcom/geely/hvac/GlyAcManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/geely/hvac/GlyAcManager;->isStartLauncherByDisplayId(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_0

    .line 271
    invoke-static {}, Lcom/geely/hvac/GlyAcManager;->getInstance()Lcom/geely/hvac/GlyAcManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/hvac/GlyAcManager;->jumpToHome()V

    goto :goto_0

    .line 273
    :cond_0
    invoke-static {}, Lcom/geely/hvac/GlyAcManager;->getInstance()Lcom/geely/hvac/GlyAcManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/hvac/GlyAcManager;->jumpToPSDHome()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 276
    invoke-virtual {p0, p1}, Lcom/geely/hvac/activity/GlyMainActivity;->moveTaskToBack(Z)Z

    :goto_0
    const/4 p1, 0x0

    .line 278
    invoke-virtual {p0, p1, p1}, Lcom/geely/hvac/activity/GlyMainActivity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$startCloseAnimation$4$GlyMainActivity(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startCloseAnimation$5$GlyMainActivity(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 301
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 302
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topMargin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$startOpenAnimate$0$GlyMainActivity(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->bg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startOpenAnimate$1$GlyMainActivity(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startOpenAnimate$2$GlyMainActivity(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 247
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 248
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 249
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 250
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutMainBinding;->contentWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onAutoHide()V
    .locals 1

    .line 481
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->startCloseAnimation()V

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mIsHide:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 328
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/AutoHideActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isDisplayIVIClick()Landroidx/databinding/ObservableBoolean;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 161
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/AutoHideActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    .line 162
    iput-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mLifeEvent:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->translucentStatus()V

    .line 165
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/hvac/databinding/LayoutMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    .line 166
    invoke-virtual {p1}, Lcom/geely/hvac/databinding/LayoutMainBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$-Y2vXaWfcZJHzx1aOAZdMC5tUDI;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$-Y2vXaWfcZJHzx1aOAZdMC5tUDI;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 167
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutMainBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0600dd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mContentStartTopMargin:I

    .line 169
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 170
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {p1, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 171
    invoke-virtual {p1, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 173
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainActivityLifecycleObserver()Landroidx/lifecycle/DefaultLifecycleObserver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 174
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    invoke-virtual {p1}, Lcom/geely/hvac/databinding/LayoutMainBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/hvac/activity/GlyMainActivity;->setContentView(Landroid/view/View;)V

    .line 176
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/activity/GlyMainActivity;->setPageTab(Landroid/content/Intent;Z)V

    .line 177
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->initMainBinding()V

    .line 178
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p1, p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setActivity(Landroid/app/Activity;)V

    .line 179
    invoke-static {}, Lcom/geely/hvac/GlyAcManager;->getInstance()Lcom/geely/hvac/GlyAcManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/hvac/GlyAcManager;->getAcInterfaceManager()Lcom/geely/hvac/GlyAcInterfaceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

    .line 180
    invoke-virtual {p1, v0}, Lcom/geely/hvac/GlyAcInterfaceManager;->setAcVisibilityListener(Lcom/geely/hvac/provider/AcVisibilityListener;)V

    .line 181
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->checkStoragePermission()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 352
    invoke-super {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->onDestroy()V

    .line 353
    invoke-virtual {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 354
    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy: displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-static {}, Lcom/geely/hvac/GlyAcManager;->getInstance()Lcom/geely/hvac/GlyAcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/GlyAcManager;->getAcInterfaceManager()Lcom/geely/hvac/GlyAcInterfaceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/GlyAcInterfaceManager;->setAcVisibilityListener(Lcom/geely/hvac/provider/AcVisibilityListener;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainTabIndexChangeListener:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 359
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceSupported()Landroidx/databinding/ObservableInt;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mFragranceSupportListener:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/AutoHideActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 97
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/activity/GlyMainActivity;->setPageTab(Landroid/content/Intent;Z)V

    .line 99
    iput-object v1, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mLifeEvent:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->startOpenAnimate()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 334
    invoke-super {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->onPause()V

    .line 335
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPanelVisible()Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 336
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 311
    invoke-super {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->onResume()V

    .line 312
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->restoreAnimateState()V

    .line 314
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPanelVisible()Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 315
    iget-boolean v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mIsHide:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->regetCarModeUserMode()V

    :cond_0
    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mIsHide:Z

    .line 319
    sget-object v0, Lcom/geely/hvac/utils/Executor;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$w6bVSQanDblAegwvyS-j5uWqyF4;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$w6bVSQanDblAegwvyS-j5uWqyF4;-><init>(Lcom/geely/hvac/activity/GlyMainActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->onStart()V

    .line 144
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 341
    invoke-super {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->onStop()V

    .line 342
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    .line 343
    iput-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mLifeEvent:Ljava/lang/String;

    .line 344
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->resetAnimateState()V

    .line 346
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->pull:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->scrollTo(II)V

    .line 347
    iget-object v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainBinding;->pull:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->upY:I

    .line 443
    invoke-direct {p0, v0}, Lcom/geely/hvac/activity/GlyMainActivity;->isOutOfBounds(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->downY:I

    invoke-direct {p0, v0}, Lcom/geely/hvac/activity/GlyMainActivity;->isOutOfBounds(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->moveToBack()V

    .line 446
    :cond_1
    iget v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->downY:I

    invoke-direct {p0, v0}, Lcom/geely/hvac/activity/GlyMainActivity;->isHotZone(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->upY:I

    invoke-direct {p0, v0}, Lcom/geely/hvac/activity/GlyMainActivity;->isInOfBounds(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    invoke-direct {p0}, Lcom/geely/hvac/activity/GlyMainActivity;->moveToBack()V

    :cond_2
    const/4 v0, 0x0

    .line 449
    iput v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->downY:I

    .line 450
    iput v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->upY:I

    goto :goto_0

    .line 439
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/geely/hvac/activity/GlyMainActivity;->downY:I

    .line 453
    :goto_0
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/AutoHideActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
