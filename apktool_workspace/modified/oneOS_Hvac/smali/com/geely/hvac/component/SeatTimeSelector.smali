.class public Lcom/geely/hvac/component/SeatTimeSelector;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SeatTimeSelector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatTimeSelector"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;

.field private mEnable:Landroidx/databinding/ObservableBoolean;

.field private mOnLevelChangedListener:Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;

.field private mSelectIndex:Landroidx/databinding/ObservableInt;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private final mViewFroze:Lcom/geely/hvac/utils/ViewFroze;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 63
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mEnable:Landroidx/databinding/ObservableBoolean;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mSelectIndex:Landroidx/databinding/ObservableInt;

    .line 32
    new-instance v0, Lcom/geely/hvac/utils/ViewFroze;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/geely/hvac/utils/ViewFroze;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/SeatTimeSelector;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 68
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mEnable:Landroidx/databinding/ObservableBoolean;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mSelectIndex:Landroidx/databinding/ObservableInt;

    .line 32
    new-instance v0, Lcom/geely/hvac/utils/ViewFroze;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/geely/hvac/utils/ViewFroze;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatTimeSelector;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mEnable:Landroidx/databinding/ObservableBoolean;

    .line 29
    new-instance p3, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mSelectIndex:Landroidx/databinding/ObservableInt;

    .line 32
    new-instance p3, Lcom/geely/hvac/utils/ViewFroze;

    const/16 v0, 0x1f4

    invoke-direct {p3, v0}, Lcom/geely/hvac/utils/ViewFroze;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatTimeSelector;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatTimeSelector;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "level"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/geely/hvac/component/SeatTimeSelector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindTimeLevel, level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatTimeSelector;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/SeatTimeSelector;->levelToIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/SeatTimeSelector;->select(IZ)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatTimeSelector;Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "listener"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/geely/hvac/component/SeatTimeSelector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindTimeLevelChangeListener, listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mOnLevelChangedListener:Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatTimeSelector;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "enable"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/geely/hvac/component/SeatTimeSelector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindTimeEnable, enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatTimeSelector;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/SeatTimeSelector;->setEnable(Z)V

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

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    .line 87
    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;

    .line 89
    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;->setSelector(Lcom/geely/hvac/component/SeatTimeSelector;)V

    .line 90
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 91
    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatTimeSelector;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0603a3

    .line 92
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mSelectIndex:Landroidx/databinding/ObservableInt;

    .line 93
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    .line 94
    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatTimeSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 95
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 96
    iget-object p2, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p2, p1}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private select(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "isFromUser"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mSelectIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mSelectIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 113
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mOnLevelChangedListener:Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 114
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/SeatTimeSelector;->indexToLevel(I)I

    move-result p2

    invoke-interface {v0, p0, p2}, Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;->onLevelChanged(Landroid/view/View;I)V

    .line 118
    :cond_1
    iget-object p2, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p2}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 119
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result v0

    .line 120
    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatTimeSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603a3

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 123
    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatTimeSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/2addr p1, v2

    add-int/2addr v1, p1

    .line 124
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    invoke-virtual {p1}, Lcom/geely/hvac/utils/ViewFroze;->isFroze()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 126
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v2, 0x0

    aput v0, p1, v2

    const/4 v0, 0x1

    aput v1, p1, v0

    .line 132
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/geely/hvac/component/-$$Lambda$SeatTimeSelector$WsroR5fS_iK4JLABOzCe_3RAl4Q;

    invoke-direct {v0, p0, p2}, Lcom/geely/hvac/component/-$$Lambda$SeatTimeSelector$WsroR5fS_iK4JLABOzCe_3RAl4Q;-><init>(Lcom/geely/hvac/component/SeatTimeSelector;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    iget-object p1, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public getEnable()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mEnable:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getSelectIndex()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mSelectIndex:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public indexToLevel(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$select$0$SeatTimeSelector(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 135
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 136
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 137
    iget-object p2, p0, Lcom/geely/hvac/component/SeatTimeSelector;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p2, p1}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public levelToIndex(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09024b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x2

    .line 151
    invoke-direct {p0, p1, v1}, Lcom/geely/hvac/component/SeatTimeSelector;->select(IZ)V

    return-void

    :pswitch_1
    const/4 p1, 0x1

    .line 148
    invoke-direct {p0, p1, v1}, Lcom/geely/hvac/component/SeatTimeSelector;->select(IZ)V

    return-void

    .line 145
    :pswitch_2
    invoke-direct {p0, v1, v1}, Lcom/geely/hvac/component/SeatTimeSelector;->select(IZ)V

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 154
    invoke-direct {p0, p1, v1}, Lcom/geely/hvac/component/SeatTimeSelector;->select(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090197
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
