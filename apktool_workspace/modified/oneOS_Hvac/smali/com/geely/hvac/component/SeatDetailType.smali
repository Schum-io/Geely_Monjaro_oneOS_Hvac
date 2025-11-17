.class public Lcom/geely/hvac/component/SeatDetailType;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SeatDetailType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

.field private final mIndex:Landroidx/databinding/ObservableInt;

.field private final mIndicatorTop:Landroidx/databinding/ObservableInt;

.field private final mItems:[Landroid/view/View;

.field private final mLines:[Landroid/view/View;

.field private mOnTabChangeListener:Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndex:Landroidx/databinding/ObservableInt;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndicatorTop:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mItems:[Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 31
    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mLines:[Landroid/view/View;

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/SeatDetailType;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndex:Landroidx/databinding/ObservableInt;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndicatorTop:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mItems:[Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 31
    iput-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mLines:[Landroid/view/View;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatDetailType;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/hvac/component/SeatDetailType;->TAG:Ljava/lang/String;

    .line 28
    new-instance p3, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndex:Landroidx/databinding/ObservableInt;

    .line 29
    new-instance p3, Landroidx/databinding/ObservableInt;

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndicatorTop:Landroidx/databinding/ObservableInt;

    const/4 p3, 0x4

    new-array p3, p3, [Landroid/view/View;

    .line 30
    iput-object p3, p0, Lcom/geely/hvac/component/SeatDetailType;->mItems:[Landroid/view/View;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/view/View;

    .line 31
    iput-object p3, p0, Lcom/geely/hvac/component/SeatDetailType;->mLines:[Landroid/view/View;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatDetailType;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatDetailType;ILcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "index",
            "listener"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/SeatDetailType;->select(I)V

    .line 45
    iput-object p2, p0, Lcom/geely/hvac/component/SeatDetailType;->mOnTabChangeListener:Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    .line 73
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 74
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 75
    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 77
    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->setMainModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 78
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->setModel(Lcom/geely/hvac/component/SeatDetailType;)V

    .line 79
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mItems:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->item0:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 80
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mItems:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->item1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    aput-object v0, p1, p2

    .line 81
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mItems:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->item2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v2, 0x2

    aput-object v0, p1, v2

    .line 82
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mItems:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->item3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v2, 0x3

    aput-object v0, p1, v2

    .line 84
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mLines:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->line0:Landroid/view/View;

    aput-object v0, p1, v1

    .line 85
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mLines:[Landroid/view/View;

    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->line1:Landroid/view/View;

    aput-object v0, p1, p2

    .line 88
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$SeatDetailType$M3FTvNFIMGNc1b31ddRu6UMSqfU;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$SeatDetailType$M3FTvNFIMGNc1b31ddRu6UMSqfU;-><init>(Lcom/geely/hvac/component/SeatDetailType;)V

    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/SeatDetailType;->post(Ljava/lang/Runnable;)Z

    .line 91
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->line0:Landroid/view/View;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$SeatDetailType$4FvJUZPryINFaBQsHc53Myo5C3o;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$SeatDetailType$4FvJUZPryINFaBQsHc53Myo5C3o;-><init>(Lcom/geely/hvac/component/SeatDetailType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 95
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndicatorTop:Landroidx/databinding/ObservableInt;

    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatDetailType;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060474

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method public static isBackrestSideSupportAvailable(III)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seatDetailPosition",
            "left1Support",
            "right1Support"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    invoke-static {p2}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    return p0

    .line 208
    :cond_1
    invoke-static {p1}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    return p0
.end method

.method public static isCushionAvailable(IIIII)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seatDetailPosition",
            "left1CushionExtensionSupport",
            "left1CushionTitlSupport",
            "right1CushionExtensionSupport",
            "right1CushionTitlSupport"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_0

    return v0

    .line 188
    :cond_0
    invoke-static {p3}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p4}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .line 186
    :cond_3
    invoke-static {p1}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p2}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0
.end method

.method public static isLegSupportAvailable(IIIIIIIII)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seatDetailPosition",
            "left1LengthSupport",
            "left1HeightSupport",
            "right1LengthSupport",
            "right1HeightSupport",
            "left2LengthSupport",
            "left2HeightSupport",
            "right2LengthSupport",
            "right2HeightSupport"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_9

    if-eq p0, v1, :cond_6

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    return v0

    .line 141
    :cond_0
    invoke-static {p7}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p8}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .line 139
    :cond_3
    invoke-static {p5}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p6}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0

    .line 137
    :cond_6
    invoke-static {p3}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {p4}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    return v0

    .line 135
    :cond_9
    invoke-static {p1}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_a

    invoke-static {p2}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    return v0
.end method

.method public static isLumbarAvailable(IIIIIIIII)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seatDetailPosition",
            "left1LumbarLengthSupport",
            "left1LumbarHeightSupport",
            "right1LumbarLengthSupport",
            "right1LumbarHeightSupport",
            "left2LumbarLengthSupport",
            "left2LumbarHeightSupport",
            "right2LumbarLengthSupport",
            "right2LumbarHeightSupport"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_9

    if-eq p0, v1, :cond_6

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    return v0

    .line 168
    :cond_0
    invoke-static {p7}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p8}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .line 166
    :cond_3
    invoke-static {p5}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p6}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0

    .line 164
    :cond_6
    invoke-static {p3}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {p4}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    return v0

    .line 162
    :cond_9
    invoke-static {p1}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-nez p0, :cond_a

    invoke-static {p2}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    return v0
.end method

.method private select(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/SeatDetailType;->select(IZ)V

    return-void
.end method

.method private select(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "force"
        }
    .end annotation

    const/4 v0, 0x4

    if-gt p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 224
    iget-object p2, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {p2}, Landroidx/databinding/ObservableInt;->get()I

    move-result p2

    if-ne p2, p1, :cond_1

    return-void

    .line 227
    :cond_1
    iget-object p2, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 228
    iget-object p2, p0, Lcom/geely/hvac/component/SeatDetailType;->mOnTabChangeListener:Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;

    if-eqz p2, :cond_2

    .line 229
    invoke-interface {p2, p1}, Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;->onChange(I)V

    .line 231
    :cond_2
    iget-object p2, p0, Lcom/geely/hvac/component/SeatDetailType;->mItems:[Landroid/view/View;

    aget-object p1, p2, p1

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatDetailType;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060474

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 233
    iget-object p2, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndicatorTop:Landroidx/databinding/ObservableInt;

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 234
    iget-object p2, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p2}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 235
    iput p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 236
    iget-object p1, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getIndex()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndex:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public getIndicatorTop()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndicatorTop:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public isLineActive(II)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "indicatorTop"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/geely/hvac/component/SeatDetailType;->mLines:[Landroid/view/View;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 101
    iget-object v1, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v1}, Lcom/geely/hvac/component/ViewWithBackground;->getHeight()I

    move-result v1

    add-int/lit8 v2, p2, -0xa

    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0xa

    .line 104
    iget-object v4, p0, Lcom/geely/hvac/component/SeatDetailType;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLineActive, lineTop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",indicatorHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",minTop:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",maxTop:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",indicatorTop:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p1, v2, :cond_0

    if-gt p1, v3, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public synthetic lambda$init$0$SeatDetailType()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/SeatDetailType;->select(IZ)V

    return-void
.end method

.method public synthetic lambda$init$1$SeatDetailType()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndicatorTop:Landroidx/databinding/ObservableInt;

    iget-object v1, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v1}, Lcom/geely/hvac/component/ViewWithBackground;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 93
    iget-object v0, p0, Lcom/geely/hvac/component/SeatDetailType;->mIndicatorTop:Landroidx/databinding/ObservableInt;

    iget-object v1, p0, Lcom/geely/hvac/component/SeatDetailType;->mBinding:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v1}, Lcom/geely/hvac/component/ViewWithBackground;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 251
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/SeatDetailType;->select(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    .line 248
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/SeatDetailType;->select(I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    .line 245
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/SeatDetailType;->select(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/SeatDetailType;->select(I)V

    .line 257
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090165
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
