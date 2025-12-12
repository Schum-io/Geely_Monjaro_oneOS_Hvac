.class public Lcom/geely/hvac/component/SeatTab;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SeatTab.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatTab"


# instance fields
.field private ACTIVITY_VISIBLE_FOR_THE_TIME:Z

.field private mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

.field private final mItems:[Landroid/view/View;

.field private final mLines:[Landroid/view/View;

.field private mOnTabChangeListener:Lcom/geely/hvac/component/intf/SeatTabChangeListener;

.field private mSelectTop:Landroidx/databinding/ObservableInt;

.field private final mTabIndex:Landroidx/databinding/ObservableInt;

.field private model:Lcom/geely/hvac/viewmodel/AppMainViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 41
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x5

    new-array v2, v0, [Landroid/view/View;

    .line 33
    iput-object v2, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    new-array v0, v0, [Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mLines:[Landroid/view/View;

    .line 35
    new-instance v0, Landroidx/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mSelectTop:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/geely/hvac/component/SeatTab;->ACTIVITY_VISIBLE_FOR_THE_TIME:Z

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/SeatTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x5

    new-array v2, v0, [Landroid/view/View;

    .line 33
    iput-object v2, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    new-array v0, v0, [Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mLines:[Landroid/view/View;

    .line 35
    new-instance v0, Landroidx/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mSelectTop:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/geely/hvac/component/SeatTab;->ACTIVITY_VISIBLE_FOR_THE_TIME:Z

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p3, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    const/4 p3, 0x5

    new-array v1, p3, [Landroid/view/View;

    .line 33
    iput-object v1, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    new-array p3, p3, [Landroid/view/View;

    .line 34
    iput-object p3, p0, Lcom/geely/hvac/component/SeatTab;->mLines:[Landroid/view/View;

    .line 35
    new-instance p3, Landroidx/databinding/ObservableInt;

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatTab;->mSelectTop:Landroidx/databinding/ObservableInt;

    const/4 p3, 0x1

    .line 38
    iput-boolean p3, p0, Lcom/geely/hvac/component/SeatTab;->ACTIVITY_VISIBLE_FOR_THE_TIME:Z

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatTab;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatTab",
            "tabIndex"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/geely/hvac/component/SeatTab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSeatTabIndex: tabIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/SeatTab;->setTabIndex(I)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatTab;Lcom/geely/hvac/component/intf/SeatTabChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatTab",
            "listener"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mOnTabChangeListener:Lcom/geely/hvac/component/intf/SeatTabChangeListener;

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
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

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    .line 101
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 102
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 103
    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object p1, p0, Lcom/geely/hvac/component/SeatTab;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 105
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 106
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->setTab(Lcom/geely/hvac/component/SeatTab;)V

    .line 108
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->item0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 109
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->item1:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v0, p1, p2

    .line 110
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->item2:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x2

    aput-object v0, p1, v2

    .line 111
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->item3:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x3

    aput-object v0, p1, v3

    .line 112
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->item4:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x4

    aput-object v0, p1, v4

    .line 114
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mLines:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->line0:Landroid/view/View;

    aput-object v0, p1, v1

    .line 115
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mLines:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->line1:Landroid/view/View;

    aput-object v0, p1, p2

    .line 116
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mLines:[Landroid/view/View;

    iget-object p2, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->line2:Landroid/view/View;

    aput-object p2, p1, v2

    .line 117
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mLines:[Landroid/view/View;

    iget-object p2, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->line3:Landroid/view/View;

    aput-object p2, p1, v3

    .line 119
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->item0:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$SeatTab$vLqPTer2EvF50dAxNwcgzpE2sy8;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$SeatTab$vLqPTer2EvF50dAxNwcgzpE2sy8;-><init>(Lcom/geely/hvac/component/SeatTab;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getSelectTop()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mSelectTop:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public getTabIndex()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public isLineVisible(II)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lineIndex",
            "selectTop"
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/geely/hvac/component/SeatTab;->mLines:[Landroid/view/View;

    aget-object v1, v1, p1

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 138
    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0604aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/lit8 v4, p2, -0xa

    add-int v5, p2, v3

    add-int/lit8 v5, v5, 0xa

    .line 141
    sget-object v6, Lcom/geely/hvac/component/SeatTab;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLineVisible: lineIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",selectTop:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v7, ",lineTop:"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v7, ",minTop:"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v7, ",maxTop:"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v7, ",height:"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v7, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object v7, v7, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->llContainer:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-static {v6, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object p2, p0, Lcom/geely/hvac/component/SeatTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatTabBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->llContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr p2, v1

    if-ge p2, v3, :cond_0

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the line is the last view:  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    if-lt v2, v4, :cond_1

    if-gt v2, v5, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public itemClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    .line 185
    :goto_0
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {p1}, Landroidx/databinding/ObservableInt;->get()I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    .line 190
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    aget-object p1, p1, v0

    .line 191
    iget-object v1, p0, Lcom/geely/hvac/component/SeatTab;->mSelectTop:Landroidx/databinding/ObservableInt;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/databinding/ObservableInt;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    :goto_1
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 197
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTab;->mOnTabChangeListener:Lcom/geely/hvac/component/intf/SeatTabChangeListener;

    if-eqz p1, :cond_1

    .line 198
    invoke-interface {p1, v0}, Lcom/geely/hvac/component/intf/SeatTabChangeListener;->onTabChange(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090165
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic lambda$init$0$SeatTab()V
    .locals 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    iget-object v1, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    aget-object v0, v0, v1

    .line 122
    iget-object v1, p0, Lcom/geely/hvac/component/SeatTab;->mSelectTop:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 123
    iget-object v1, p0, Lcom/geely/hvac/component/SeatTab;->mSelectTop:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/databinding/ObservableInt;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTabIndex(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabIndex"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/geely/hvac/component/SeatTab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeatTabSeatTabSeatTab  tabIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ACTIVITY_VISIBLE_FOR_THE_TIME \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/hvac/component/SeatTab;->ACTIVITY_VISIBLE_FOR_THE_TIME:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/geely/hvac/component/SeatTab;->ACTIVITY_VISIBLE_FOR_THE_TIME:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/geely/hvac/component/SeatTab;->ACTIVITY_VISIBLE_FOR_THE_TIME:Z

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSeatTabItem0 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/geely/hvac/component/SeatTab;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatTabItem0()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  isSeatTabItem1   : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v3, :cond_1

    iget-object v4, p0, Lcom/geely/hvac/component/SeatTab;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatTabItem1()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatTabItem0()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatTabItem1()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatTabItem2()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const/4 p1, 0x4

    .line 79
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mOnTabChangeListener:Lcom/geely/hvac/component/intf/SeatTabChangeListener;

    if-eqz v0, :cond_6

    .line 80
    invoke-interface {v0, p1}, Lcom/geely/hvac/component/intf/SeatTabChangeListener;->onTabChange(I)V

    goto :goto_1

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    if-ne v0, p1, :cond_6

    return-void

    .line 89
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mItems:[Landroid/view/View;

    aget-object p1, v0, p1

    .line 93
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTab;->mSelectTop:Landroidx/databinding/ObservableInt;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
