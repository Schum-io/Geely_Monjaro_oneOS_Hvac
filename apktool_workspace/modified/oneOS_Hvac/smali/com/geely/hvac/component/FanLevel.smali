.class public Lcom/geely/hvac/component/FanLevel;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FanLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FanLevel"


# instance fields
.field private listener:Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;

.field private mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

.field private final mCurrentLevel:Landroidx/databinding/ObservableInt;

.field private final mDisableAlpha:F

.field private final mEnable:Landroidx/databinding/ObservableBoolean;

.field private mIsAutoFan:Z

.field private mIsHvacOn:Z

.field private mListener:Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;

.field private final mMaxFanLevel:Landroidx/databinding/ObservableInt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/geely/hvac/component/FanLevel;->mIsAutoFan:Z

    .line 25
    iput-boolean v0, p0, Lcom/geely/hvac/component/FanLevel;->mIsHvacOn:Z

    .line 26
    new-instance v1, Landroidx/databinding/ObservableInt;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mMaxFanLevel:Landroidx/databinding/ObservableInt;

    .line 27
    new-instance v1, Landroidx/databinding/ObservableInt;

    invoke-direct {v1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    .line 29
    new-instance v2, Landroidx/databinding/ObservableBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    const v2, 0x3f19999a    # 0.6f

    .line 30
    iput v2, p0, Lcom/geely/hvac/component/FanLevel;->mDisableAlpha:F

    .line 31
    new-instance v2, Lcom/geely/hvac/component/FanLevel$1;

    invoke-direct {v2, p0}, Lcom/geely/hvac/component/FanLevel$1;-><init>(Lcom/geely/hvac/component/FanLevel;)V

    iput-object v2, p0, Lcom/geely/hvac/component/FanLevel;->mListener:Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;

    .line 146
    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->listener:Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;

    .line 150
    invoke-direct {p0, p1, v1, v0}, Lcom/geely/hvac/component/FanLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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

    .line 154
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/geely/hvac/component/FanLevel;->mIsAutoFan:Z

    .line 25
    iput-boolean v0, p0, Lcom/geely/hvac/component/FanLevel;->mIsHvacOn:Z

    .line 26
    new-instance v1, Landroidx/databinding/ObservableInt;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mMaxFanLevel:Landroidx/databinding/ObservableInt;

    .line 27
    new-instance v1, Landroidx/databinding/ObservableInt;

    invoke-direct {v1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    .line 29
    new-instance v2, Landroidx/databinding/ObservableBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    const v2, 0x3f19999a    # 0.6f

    .line 30
    iput v2, p0, Lcom/geely/hvac/component/FanLevel;->mDisableAlpha:F

    .line 31
    new-instance v2, Lcom/geely/hvac/component/FanLevel$1;

    invoke-direct {v2, p0}, Lcom/geely/hvac/component/FanLevel$1;-><init>(Lcom/geely/hvac/component/FanLevel;)V

    iput-object v2, p0, Lcom/geely/hvac/component/FanLevel;->mListener:Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;

    .line 146
    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->listener:Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;

    .line 155
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/component/FanLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/geely/hvac/component/FanLevel;->mIsAutoFan:Z

    .line 25
    iput-boolean v0, p0, Lcom/geely/hvac/component/FanLevel;->mIsHvacOn:Z

    .line 26
    new-instance v1, Landroidx/databinding/ObservableInt;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mMaxFanLevel:Landroidx/databinding/ObservableInt;

    .line 27
    new-instance v1, Landroidx/databinding/ObservableInt;

    invoke-direct {v1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    .line 29
    new-instance v1, Landroidx/databinding/ObservableBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    const v1, 0x3f19999a    # 0.6f

    .line 30
    iput v1, p0, Lcom/geely/hvac/component/FanLevel;->mDisableAlpha:F

    .line 31
    new-instance v1, Lcom/geely/hvac/component/FanLevel$1;

    invoke-direct {v1, p0}, Lcom/geely/hvac/component/FanLevel$1;-><init>(Lcom/geely/hvac/component/FanLevel;)V

    iput-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mListener:Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;

    .line 146
    iput-object v0, p0, Lcom/geely/hvac/component/FanLevel;->listener:Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/FanLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/geely/hvac/component/FanLevel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/geely/hvac/component/FanLevel;IZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FanLevel;->callBackLevel(IZ)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/FanLevel;ZIZILcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;)V
    .locals 0
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
            "fanLevel",
            "isAutoFan",
            "maxFanLevel",
            "isHvacOn",
            "currentLevel",
            "listener"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/FanLevel;->setAutoFan(Z)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/geely/hvac/component/FanLevel;->setMaxFanLevel(I)V

    .line 77
    invoke-virtual {p0, p3}, Lcom/geely/hvac/component/FanLevel;->setHvacState(Z)V

    .line 78
    invoke-virtual {p0, p4}, Lcom/geely/hvac/component/FanLevel;->setCurrentLevel(I)V

    .line 79
    iput-object p5, p0, Lcom/geely/hvac/component/FanLevel;->listener:Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;

    return-void
.end method

.method public static bindEnable(Lcom/geely/hvac/component/FanLevel;Z)V
    .locals 0
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

    .line 86
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FanLevel;->setEnable(Z)V

    return-void
.end method

.method private callBackLevel(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "isTouch"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->listener:Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p1, p2}, Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;->onChanged(IZ)V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 164
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    .line 165
    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->setView(Lcom/geely/hvac/component/FanLevel;)V

    .line 167
    iget-object p1, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->add:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p3, Lcom/geely/hvac/component/-$$Lambda$FanLevel$fX_lQOdrlMUgoKz8yuA--CNBpHU;

    invoke-direct {p3, p0}, Lcom/geely/hvac/component/-$$Lambda$FanLevel$fX_lQOdrlMUgoKz8yuA--CNBpHU;-><init>(Lcom/geely/hvac/component/FanLevel;)V

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p1, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->reduce:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p3, Lcom/geely/hvac/component/-$$Lambda$FanLevel$c8GrMYEUYMElJwtkex2_ue5apqY;

    invoke-direct {p3, p0}, Lcom/geely/hvac/component/-$$Lambda$FanLevel$c8GrMYEUYMElJwtkex2_ue5apqY;-><init>(Lcom/geely/hvac/component/FanLevel;)V

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-direct {p0}, Lcom/geely/hvac/component/FanLevel;->updateAddReduceEnable()V

    .line 203
    iget-boolean p1, p0, Lcom/geely/hvac/component/FanLevel;->mIsAutoFan:Z

    invoke-virtual {p0, p1, p2}, Lcom/geely/hvac/component/FanLevel;->setAutoFan(ZZ)V

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

    .line 90
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 92
    invoke-direct {p0}, Lcom/geely/hvac/component/FanLevel;->updateAddReduceEnable()V

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {p1}, Landroidx/databinding/ObservableInt;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/FanLevel;->setCurrentLevel(I)V

    :cond_0
    return-void
.end method

.method private updateAddReduceEnable()V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 105
    :goto_0
    iget-object v3, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->reduce:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    invoke-virtual {v3, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    .line 107
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    iget-object v3, p0, Lcom/geely/hvac/component/FanLevel;->mMaxFanLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 108
    :goto_2
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->add:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getCurrentLevel()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public getEnable()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getListener()Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mListener:Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;

    return-object v0
.end method

.method public getMaxFanLevel()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mMaxFanLevel:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public synthetic lambda$init$0$FanLevel(Landroid/view/View;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/geely/hvac/util/ClickUtils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    iget-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mMaxFanLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 175
    iget-object v2, p0, Lcom/geely/hvac/component/FanLevel;->mMaxFanLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 176
    iget-object v2, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->add:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 178
    :cond_3
    iget-boolean v2, p0, Lcom/geely/hvac/component/FanLevel;->mIsHvacOn:Z

    if-eqz v2, :cond_4

    .line 179
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/FanLevel;->setCurrentLevel(I)V

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/geely/hvac/component/FanLevel;->listener:Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;

    invoke-interface {v2, v0, v1}, Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;->addReduceFanLevelChanged(IZ)V

    .line 183
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$init$1$FanLevel(Landroid/view/View;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    .line 188
    :cond_0
    invoke-static {}, Lcom/geely/hvac/util/ClickUtils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_3

    .line 192
    iget-object v1, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->reduce:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 194
    :cond_3
    iget-boolean v1, p0, Lcom/geely/hvac/component/FanLevel;->mIsHvacOn:Z

    if-eqz v1, :cond_4

    .line 195
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/FanLevel;->setCurrentLevel(I)V

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/geely/hvac/component/FanLevel;->listener:Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;->addReduceFanLevelChanged(IZ)V

    .line 199
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public setAutoFan(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoFan"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/geely/hvac/component/FanLevel;->setAutoFan(ZZ)V

    return-void
.end method

.method public setAutoFan(ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "autoFan",
            "forceUpdate"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/geely/hvac/utils/DayNightUtil;->isLight()Z

    move-result v0

    .line 113
    sget-object v1, Lcom/geely/hvac/component/FanLevel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoFan, autoFan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",forceUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsAutoFan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/geely/hvac/component/FanLevel;->mIsAutoFan:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isLight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 114
    iget-boolean p2, p0, Lcom/geely/hvac/component/FanLevel;->mIsAutoFan:Z

    if-ne p2, p1, :cond_0

    return-void

    .line 117
    :cond_0
    iput-boolean p1, p0, Lcom/geely/hvac/component/FanLevel;->mIsAutoFan:Z

    .line 119
    iget-object p2, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->add:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lottie/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "light"

    const-string v4, "night"

    if-eqz v0, :cond_1

    move-object v5, v3

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "auto_fan_64"

    const-string v7, "fan_64"

    if-eqz p1, :cond_2

    move-object v8, v6

    goto :goto_1

    :cond_2
    move-object v8, v7

    :goto_1
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "/animate.json"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 120
    iget-object p2, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->add:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_3

    move-object v9, v3

    goto :goto_2

    :cond_3
    move-object v9, v4

    :goto_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_4

    move-object v9, v6

    goto :goto_3

    :cond_4
    move-object v9, v7

    :goto_3
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "/images"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->reduce:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_5

    move-object v10, v3

    goto :goto_4

    :cond_5
    move-object v10, v4

    :goto_4
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_6

    move-object v10, v6

    goto :goto_5

    :cond_6
    move-object v10, v7

    :goto_5
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/geely/hvac/component/FanLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->reduce:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move-object v3, v4

    :goto_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move-object v6, v7

    :goto_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentLevel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newLevel"
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/geely/hvac/component/FanLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentLevel, level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mCurrentLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 139
    iget-object p1, p0, Lcom/geely/hvac/component/FanLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/geely/hvac/component/FanLevel;->updateAddReduceEnable()V

    return-void
.end method

.method public setHvacState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isHvacOn"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/geely/hvac/component/FanLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHvacState, isHvacOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iput-boolean p1, p0, Lcom/geely/hvac/component/FanLevel;->mIsHvacOn:Z

    return-void
.end method

.method public setMaxFanLevel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxFanLevel"
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/geely/hvac/component/FanLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxFanLevel, level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/geely/hvac/component/FanLevel;->mMaxFanLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 132
    invoke-direct {p0}, Lcom/geely/hvac/component/FanLevel;->updateAddReduceEnable()V

    return-void
.end method
