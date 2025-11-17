.class public Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SeatSetDetailViewModel.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mLeft1TypeIndex:Landroidx/databinding/ObservableInt;

.field private final mLeft2TypeIndex:Landroidx/databinding/ObservableInt;

.field private mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

.field private final mOnTabChangeListener:Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;

.field private final mRight1TypeIndex:Landroidx/databinding/ObservableInt;

.field private final mRight2TypeIndex:Landroidx/databinding/ObservableInt;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mLeft1TypeIndex:Landroidx/databinding/ObservableInt;

    .line 24
    new-instance v0, Landroidx/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mLeft2TypeIndex:Landroidx/databinding/ObservableInt;

    .line 25
    new-instance v0, Landroidx/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mRight1TypeIndex:Landroidx/databinding/ObservableInt;

    .line 26
    new-instance v0, Landroidx/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mRight2TypeIndex:Landroidx/databinding/ObservableInt;

    .line 27
    new-instance v0, Lcom/geely/hvac/viewmodel/-$$Lambda$SeatSetDetailViewModel$vbUEjf5wdXGFhxwpS8RF2q7aMdU;

    invoke-direct {v0, p0}, Lcom/geely/hvac/viewmodel/-$$Lambda$SeatSetDetailViewModel$vbUEjf5wdXGFhxwpS8RF2q7aMdU;-><init>(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)V

    iput-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mOnTabChangeListener:Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;

    .line 48
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 49
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 50
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 53
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarSupport()Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    new-instance v1, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel$1;

    invoke-direct {v1, p0}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel$1;-><init>(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)V

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 63
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupport()Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    new-instance v1, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel$2;

    invoke-direct {v1, p0}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel$2;-><init>(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)V

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)Landroidx/databinding/ObservableInt;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mLeft1TypeIndex:Landroidx/databinding/ObservableInt;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)Landroidx/databinding/ObservableInt;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mLeft2TypeIndex:Landroidx/databinding/ObservableInt;

    return-object p0
.end method


# virtual methods
.method public formatSeatSetLabel(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatSeatSetLabel, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x7f10006a

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1000c5

    goto :goto_0

    :cond_1
    const v0, 0x7f100069

    goto :goto_0

    :cond_2
    const v0, 0x7f1000c4

    .line 98
    :cond_3
    :goto_0
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/geely/hvac/GlyAcApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLeft1TypeIndex()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mLeft1TypeIndex:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public getLeft2TypeIndex()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mLeft2TypeIndex:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public getOnTabChangeListener()Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mOnTabChangeListener:Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;

    return-object v0
.end method

.method public getRight1TypeIndex()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mRight1TypeIndex:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public getRight2TypeIndex()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mRight2TypeIndex:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public getSeatTypeVisibility(IIIIII)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seatIndex",
            "left1Index",
            "left2Index",
            "right1Index",
            "right2Index",
            "targetIndex"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return v0

    :cond_0
    if-ne p5, p6, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    if-ne p4, p6, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    if-ne p3, p6, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    if-ne p2, p6, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method

.method public getTagByIndex(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 p1, 0x40

    return p1

    :cond_1
    const/16 p1, 0x10

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    return v0
.end method

.method public getTypeSelectType(IIIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seatIndex",
            "left1Index",
            "left2Index",
            "right1Index",
            "right2Index"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p5

    :cond_1
    return p4

    :cond_2
    return p3

    :cond_3
    return p2
.end method

.method public isTypeAvailable(IIIIIIIIIIIIIIIIIIIIIII)Z
    .locals 4
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            "right2HeightSupport",
            "left1LumbarLengthSupport",
            "left1LumbarHeightSupport",
            "right1LumbarLengthSupport",
            "right1LumbarHeightSupport",
            "left2LumbarLengthSupport",
            "left2LumbarHeightSupport",
            "right2LumbarLengthSupport",
            "right2LumbarHeightSupport",
            "left1CushionExtensionSupport",
            "left1CushionTitlSupport",
            "right1CushionExtensionSupport",
            "right1CushionTitlSupport",
            "left1Support",
            "right1Support"
        }
    .end annotation

    move v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-static {p8}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p9}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-static/range {p16 .. p16}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p17 .. p17}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 147
    :cond_3
    invoke-static {p6}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p7}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 148
    invoke-static/range {p14 .. p14}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static/range {p15 .. p15}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    .line 142
    :cond_6
    invoke-static {p4}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p5}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 143
    invoke-static/range {p12 .. p12}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static/range {p13 .. p13}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 144
    invoke-static/range {p20 .. p20}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static/range {p21 .. p21}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 145
    invoke-static/range {p23 .. p23}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1

    .line 137
    :cond_9
    invoke-static {p2}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p3}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 138
    invoke-static {p10}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p11}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 139
    invoke-static/range {p18 .. p18}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static/range {p19 .. p19}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 140
    invoke-static/range {p22 .. p22}, Lcom/geely/hvac/utils/AdaptUtil;->isFunctionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    return v1
.end method

.method public synthetic lambda$new$0$SeatSetDetailViewModel(I)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatDetailPositionIndex()Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mRight2TypeIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mRight1TypeIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mLeft2TypeIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->mLeft1TypeIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    :goto_0
    return-void
.end method
