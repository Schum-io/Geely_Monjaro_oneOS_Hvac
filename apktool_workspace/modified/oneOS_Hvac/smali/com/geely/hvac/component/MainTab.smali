.class public Lcom/geely/hvac/component/MainTab;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MainTab.java"


# instance fields
.field private final ANIMATE_TIME:J

.field private final TAG:Ljava/lang/String;

.field private mBinding:Lcom/geely/hvac/databinding/LayoutMainTabBinding;

.field private final mFragranceAvailable:Landroidx/databinding/ObservableBoolean;

.field private mIndicatorStartX:I

.field private mIndicatorWidth:I

.field private mItemWidth:I

.field private final mMainTabSeatAvailable:Landroidx/databinding/ObservableBoolean;

.field private final mTabIndex:Landroidx/databinding/ObservableInt;

.field private mViewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/MainTab;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x12c

    .line 27
    iput-wide v0, p0, Lcom/geely/hvac/component/MainTab;->ANIMATE_TIME:J

    .line 28
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/MainTab;->mFragranceAvailable:Landroidx/databinding/ObservableBoolean;

    .line 30
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/MainTab;->mMainTabSeatAvailable:Landroidx/databinding/ObservableBoolean;

    .line 31
    iput v1, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    .line 32
    iput v1, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorWidth:I

    .line 33
    iput v1, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorStartX:I

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/MainTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/MainTab;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x12c

    .line 27
    iput-wide v0, p0, Lcom/geely/hvac/component/MainTab;->ANIMATE_TIME:J

    .line 28
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/MainTab;->mFragranceAvailable:Landroidx/databinding/ObservableBoolean;

    .line 30
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/MainTab;->mMainTabSeatAvailable:Landroidx/databinding/ObservableBoolean;

    .line 31
    iput v1, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    .line 32
    iput v1, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorWidth:I

    .line 33
    iput v1, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorStartX:I

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/MainTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/hvac/component/MainTab;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x12c

    .line 27
    iput-wide v0, p0, Lcom/geely/hvac/component/MainTab;->ANIMATE_TIME:J

    .line 28
    new-instance p3, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    .line 29
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/MainTab;->mFragranceAvailable:Landroidx/databinding/ObservableBoolean;

    .line 30
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p3, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/MainTab;->mMainTabSeatAvailable:Landroidx/databinding/ObservableBoolean;

    .line 31
    iput v0, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    .line 32
    iput v0, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorWidth:I

    .line 33
    iput v0, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorStartX:I

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/MainTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/component/MainTab;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/geely/hvac/component/MainTab;->mBinding:Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/hvac/component/MainTab;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/geely/hvac/component/MainTab;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorStartX:I

    return p0
.end method

.method static synthetic access$300(Lcom/geely/hvac/component/MainTab;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/geely/hvac/component/MainTab;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geely/hvac/component/MainTab;)Landroidx/databinding/ObservableInt;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    return-object p0
.end method

.method public static bindFragranceAvailable(Lcom/geely/hvac/component/MainTab;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "available"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/MainTab;->setFragranceAvailable(Z)V

    return-void
.end method

.method public static bindMainTabSeatAvailable(Lcom/geely/hvac/component/MainTab;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "available"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/MainTab;->setMainTabSeatAvailable(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/MainTab;->mBinding:Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    .line 87
    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->setTab(Lcom/geely/hvac/component/MainTab;)V

    .line 88
    invoke-virtual {p0}, Lcom/geely/hvac/component/MainTab;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060188

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    .line 89
    invoke-virtual {p0}, Lcom/geely/hvac/component/MainTab;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060184

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorWidth:I

    .line 90
    iget p2, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorStartX:I

    .line 91
    iget-object p1, p0, Lcom/geely/hvac/component/MainTab;->mBinding:Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 92
    iget p2, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    iget-object v0, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    mul-int/2addr p2, v0

    iget v0, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorStartX:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    return-void
.end method

.method private reportData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ac_Perfume_Click_ev"

    .line 143
    invoke-static {p1}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "ac_Seat_Click_ev"

    .line 140
    invoke-static {p1}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "ac_FrontAC_Click_ev"

    .line 137
    invoke-static {p1}, Lcom/geely/hvac/data/GlySensorsData;->track(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private select(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x2

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 159
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/MainTab;->reportData(I)V

    .line 163
    iget-object v1, p0, Lcom/geely/hvac/component/MainTab;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 172
    iget-object v1, p0, Lcom/geely/hvac/component/MainTab;->mBinding:Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v1}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-ne p1, v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab;->mMainTabSeatAvailable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget v0, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorStartX:I

    iget v2, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 179
    :cond_1
    iget v0, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorStartX:I

    iget v2, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    :goto_0
    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 183
    iget-object p1, p0, Lcom/geely/hvac/component/MainTab;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 185
    iget-object p1, p0, Lcom/geely/hvac/component/MainTab;->mBinding:Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setMainTabSeatAvailable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "available"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/MainTab;->setTabIndex(I)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/geely/hvac/component/MainTab;->mMainTabSeatAvailable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v1, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 67
    iget-object v1, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/geely/hvac/component/MainTab;->mBinding:Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 69
    iget v1, p0, Lcom/geely/hvac/component/MainTab;->mItemWidth:I

    iget-object v2, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    sub-int/2addr v2, v0

    mul-int/2addr v1, v2

    iget v0, p0, Lcom/geely/hvac/component/MainTab;->mIndicatorStartX:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 70
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab;->mBinding:Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getFragranceAvailable()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab;->mFragranceAvailable:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getMainTabSeatAvailable()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab;->mMainTabSeatAvailable:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getTabIndex()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09001c

    if-eq v0, v1, :cond_2

    const v1, 0x7f090114

    if-eq v0, v1, :cond_1

    const v1, 0x7f090294

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/MainTab;->select(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 121
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/MainTab;->select(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/MainTab;->select(I)V

    .line 126
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public setFragranceAvailable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "available"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/MainTab;->setTabIndex(I)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/MainTab;->mFragranceAvailable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/MainTab;->select(I)V

    .line 130
    iget-object p1, p0, Lcom/geely/hvac/component/MainTab;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTabIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/geely/hvac/component/MainTab;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUpWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPager"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/geely/hvac/component/MainTab;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 204
    new-instance v0, Lcom/geely/hvac/component/MainTab$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/component/MainTab$1;-><init>(Lcom/geely/hvac/component/MainTab;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method
