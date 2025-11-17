.class public abstract Lcom/geely/hvac/component/SeatFeatureLevel;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SeatFeatureLevel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatFeatureLevel"


# instance fields
.field private mAnimatePath:Ljava/lang/String;

.field private mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

.field private mDisableResId:I

.field private final mEnable:Landroidx/databinding/ObservableBoolean;

.field private mLevel:I

.field private mLevel0LightPath:Ljava/lang/String;

.field private mLevel0NightPath:Ljava/lang/String;

.field private mLevel1LightPath:Ljava/lang/String;

.field private mLevel1NightPath:Ljava/lang/String;

.field private mLevel2LightPath:Ljava/lang/String;

.field private mLevel2NightPath:Ljava/lang/String;

.field private mLevel3LightPath:Ljava/lang/String;

.field private mLevel3NightPath:Ljava/lang/String;

.field private mViewFroze:Lcom/geely/hvac/utils/ViewFroze;


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

    .line 44
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel:I

    .line 41
    new-instance v0, Lcom/geely/hvac/utils/ViewFroze;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/geely/hvac/utils/ViewFroze;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/SeatFeatureLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel:I

    .line 41
    new-instance v0, Lcom/geely/hvac/utils/ViewFroze;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/geely/hvac/utils/ViewFroze;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatFeatureLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    const/4 p3, 0x0

    .line 39
    iput p3, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel:I

    .line 41
    new-instance p3, Lcom/geely/hvac/utils/ViewFroze;

    const/16 v0, 0x1f4

    invoke-direct {p3, v0}, Lcom/geely/hvac/utils/ViewFroze;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatFeatureLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "enable"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/geely/hvac/component/SeatFeatureLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSeatFeatureLevelEnable, enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/SeatFeatureLevel;->setEnabled(Z)V

    return-void
.end method

.method public static bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "level"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/geely/hvac/component/SeatFeatureLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSeatFeatureLevelLevel, level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/SeatFeatureLevel;->setLevel(I)V

    return-void
.end method

.method private getPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "index"
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/geely/hvac/utils/DayNightUtil;->isLight()Z

    move-result p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel0LightPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel0NightPath:Ljava/lang/String;

    :goto_0
    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 136
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel3LightPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel3NightPath:Ljava/lang/String;

    :goto_1
    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 138
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel2LightPath:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel2NightPath:Ljava/lang/String;

    :goto_2
    return-object p1

    :cond_5
    if-eqz p1, :cond_6

    .line 140
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel1LightPath:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel1NightPath:Ljava/lang/String;

    :goto_3
    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    if-nez p2, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    .line 111
    invoke-virtual {v0, p0}, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->setView(Lcom/geely/hvac/component/SeatFeatureLevel;)V

    .line 112
    sget-object v0, Lcom/geely/hvac/R$styleable;->SeatFeatureLevel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel0LightPath:Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel0NightPath:Ljava/lang/String;

    const/4 v0, 0x2

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel1LightPath:Ljava/lang/String;

    const/4 v0, 0x3

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel1NightPath:Ljava/lang/String;

    const/4 v0, 0x4

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel2LightPath:Ljava/lang/String;

    const/4 v0, 0x5

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel2NightPath:Ljava/lang/String;

    const/4 v0, 0x6

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel3LightPath:Ljava/lang/String;

    const/4 v0, 0x7

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel3NightPath:Ljava/lang/String;

    const/16 v0, 0x9

    .line 121
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/16 v1, 0xa

    .line 122
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mDisableResId:I

    const/16 v1, 0x8

    .line 123
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->disableBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 126
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->disableBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/ViewWithBackground;->setRadius(I)V

    .line 127
    iget p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mDisableResId:I

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->disableImg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget p2, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mDisableResId:I

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private updateAnimate()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatFeatureLevel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel:I

    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/SeatFeatureLevel;->getPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mAnimatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    sget-object v1, Lcom/geely/hvac/component/SeatFeatureLevel;->TAG:Ljava/lang/String;

    const-string v2, "setStatus change path"

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    iget-object v1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/animate.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 153
    iput-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mAnimatePath:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_0
    sget-object v0, Lcom/geely/hvac/component/SeatFeatureLevel;->TAG:Ljava/lang/String;

    const-string v1, "setStatus, not change path"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    :goto_0
    sget-object v0, Lcom/geely/hvac/component/SeatFeatureLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnimate, attach:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/geely/hvac/component/SeatFeatureLevel;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/geely/hvac/utils/ViewFroze;->isFroze(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " setProgress(1f)  "

    .line 159
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_1

    :cond_1
    const-string v1, "  playAnimation  "

    .line 162
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getLevelEnable()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method protected abstract levelToIndex(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mBinding:Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/SeatFeatureLevelBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 81
    invoke-direct {p0}, Lcom/geely/hvac/component/SeatFeatureLevel;->updateAnimate()V

    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/SeatFeatureLevel;->levelToIndex(I)I

    move-result p1

    .line 86
    iget v0, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel:I

    if-ne v0, p1, :cond_0

    .line 87
    sget-object v0, Lcom/geely/hvac/component/SeatFeatureLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLevel repeat, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    iput p1, p0, Lcom/geely/hvac/component/SeatFeatureLevel;->mLevel:I

    .line 91
    invoke-direct {p0}, Lcom/geely/hvac/component/SeatFeatureLevel;->updateAnimate()V

    return-void
.end method
