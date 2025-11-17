.class public Lcom/geely/hvac/component/BoolStateLottieView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "BoolStateLottieView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BoolStateLottieView"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

.field private mCloseAnimateEnable:Z

.field private mDisableFalseDrawableRes:I

.field private mDisableTrueDrawableRes:I

.field private volatile mEnable:Z

.field private mLightClose:Ljava/lang/String;

.field private mLightOpen:Ljava/lang/String;

.field private mNightClose:Ljava/lang/String;

.field private mNightOpen:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private volatile mStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mEnable:Z

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    .line 25
    iput-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mCloseAnimateEnable:Z

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/BoolStateLottieView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mEnable:Z

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    .line 25
    iput-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mCloseAnimateEnable:Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BoolStateLottieView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 19
    iput-boolean p3, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mEnable:Z

    const/4 p3, 0x0

    .line 20
    iput-boolean p3, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    .line 25
    iput-boolean p3, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mCloseAnimateEnable:Z

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BoolStateLottieView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/BoolStateLottieView;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isOn"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateLottieView;->setStatus(Z)V

    .line 36
    sget-object v0, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindBoolLottieViewState,view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ",isOn:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static bindEnable(Lcom/geely/hvac/component/BoolStateLottieView;Z)V
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

    .line 43
    sget-object v0, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindBoolLottieViewEnable,view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateLottieView;->setEnable(Z)V

    return-void
.end method

.method private getPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/geely/hvac/utils/DayNightUtil;->isLight()Z

    move-result p1

    .line 117
    iget-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mCloseAnimateEnable:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 118
    iget-boolean p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mLightOpen:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mLightClose:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mNightOpen:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mNightClose:Ljava/lang/String;

    :goto_0
    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 120
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mLightOpen:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mNightOpen:Ljava/lang/String;

    :goto_1
    return-object p1
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

    if-nez p2, :cond_0

    .line 64
    sget-object p1, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    const-string p2, "init, attr is null"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    .line 70
    sget-object v0, Lcom/geely/hvac/R$styleable;->BoolStateLottieView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mNightClose:Ljava/lang/String;

    const/4 p2, 0x6

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mNightOpen:Ljava/lang/String;

    const/4 p2, 0x3

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mLightClose:Ljava/lang/String;

    const/4 p2, 0x4

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mLightOpen:Ljava/lang/String;

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mCloseAnimateEnable:Z

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mDisableFalseDrawableRes:I

    const/4 v0, 0x2

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mDisableTrueDrawableRes:I

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-direct {p0}, Lcom/geely/hvac/component/BoolStateLottieView;->updateVisibility()V

    return-void
.end method

.method private updateVisibility()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->img:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-boolean v1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mEnable:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mEnable:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 86
    iget-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/BoolStateLottieView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/geely/hvac/component/BoolStateLottieView;->getPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/animate.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 92
    iput-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mPath:Ljava/lang/String;

    .line 95
    :cond_2
    iget-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_2

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v3, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mCloseAnimateEnable:Z

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/geely/hvac/utils/StackPrinter;->getExceptionStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 105
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 107
    iget-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mDisableTrueDrawableRes:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mDisableFalseDrawableRes:I

    :goto_1
    if-eqz v0, :cond_7

    .line 109
    iget-object v1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->img:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 111
    :cond_7
    sget-object v1, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateVisibility imgResId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public setEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mEnable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateLottieView;->setClickable(Z)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateLottieView;->setFocusable(Z)V

    .line 130
    iput-boolean p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mEnable:Z

    .line 131
    invoke-direct {p0}, Lcom/geely/hvac/component/BoolStateLottieView;->updateVisibility()V

    return-void
.end method

.method public setStatus(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 138
    :cond_0
    iput-boolean p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    .line 140
    iget-boolean p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mEnable:Z

    if-eqz p1, :cond_5

    .line 141
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    sget-object p1, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    const-string v0, "setStatus, is running"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 146
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/BoolStateLottieView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/geely/hvac/component/BoolStateLottieView;->getPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    sget-object v0, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    const-string v1, "setStatus change path"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/animate.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_2
    sget-object v0, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    const-string v1, "setStatus, not change path"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    :goto_0
    sget-object v0, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus, mStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCloseAnimateEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mCloseAnimateEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 158
    iget-boolean p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 159
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 160
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_2

    .line 162
    :cond_3
    iget-boolean p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mCloseAnimateEnable:Z

    if-eqz p1, :cond_4

    .line 163
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 164
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_2

    .line 166
    :cond_4
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 170
    sget-object v0, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/geely/hvac/utils/StackPrinter;->getExceptionStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 173
    :cond_5
    iget-boolean p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mStatus:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mDisableTrueDrawableRes:I

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mDisableFalseDrawableRes:I

    :goto_1
    if-eqz p1, :cond_7

    .line 175
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateLottieView;->mBinding:Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBoolStateLottieViewBinding;->img:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 177
    :cond_7
    sget-object v0, Lcom/geely/hvac/component/BoolStateLottieView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setStatus imgResId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
