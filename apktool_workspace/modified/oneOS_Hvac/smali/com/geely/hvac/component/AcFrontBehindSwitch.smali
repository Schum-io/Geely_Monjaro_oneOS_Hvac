.class public Lcom/geely/hvac/component/AcFrontBehindSwitch;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "AcFrontBehindSwitch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AcFrontBehindSwitch"


# instance fields
.field currentResPath:Ljava/lang/String;

.field private mActivityVisible:Z

.field private mBehindStaticPicBgRes:I

.field private volatile mCurrentResPath:Ljava/lang/String;

.field private mFrontStaticPicBgRes:I

.field private mIsFront:Z


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

    .line 78
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mCurrentResPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mIsFront:Z

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mActivityVisible:Z

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mCurrentResPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mIsFront:Z

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mActivityVisible:Z

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 38
    iput-object p3, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mCurrentResPath:Ljava/lang/String;

    const/4 p3, 0x1

    .line 39
    iput-boolean p3, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mIsFront:Z

    const/4 p3, 0x0

    .line 40
    iput-boolean p3, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mActivityVisible:Z

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/component/AcFrontBehindSwitch;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mCurrentResPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bindAcFrontBehindSwitchFront(Lcom/geely/hvac/component/AcFrontBehindSwitch;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "front"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAcFrontBehindSwitchFront, front:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setFront(Z)V

    return-void
.end method

.method public static bindAcFrontBehindSwitchPath(Lcom/geely/hvac/component/AcFrontBehindSwitch;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "path"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAcFrontBehindSwitchPath, path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iput-object p1, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->currentResPath:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setRes()V

    return-void
.end method

.method public static bindActivityVisible(Lcom/geely/hvac/component/AcFrontBehindSwitch;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "visible"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindActivityVisible, visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iput-boolean p1, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mActivityVisible:Z

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setRes()V

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->clear()V

    :goto_0
    return-void
.end method

.method private clear()V
    .locals 1

    const/16 v0, 0x8

    .line 59
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setVisibility(I)V

    .line 60
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->cancelAnimation()V

    .line 61
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->clearComposition()V

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

    if-nez p2, :cond_0

    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/geely/hvac/R$styleable;->AcFrontBehindSwitch:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 97
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mBehindStaticPicBgRes:I

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mFrontStaticPicBgRes:I

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    sget-object p1, Lcom/geely/hvac/component/AcFrontBehindSwitch;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init, mBehindStaticPicBgRes:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mBehindStaticPicBgRes:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", mFrontStaticPicBgRes:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mFrontStaticPicBgRes:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private updateAnimateRes()V
    .locals 3

    .line 152
    :try_start_0
    invoke-static {}, Lcom/geely/hvac/utils/DayNightUtil;->isLight()Z

    move-result v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->currentResPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "light"

    goto :goto_0

    :cond_0
    const-string v0, "night"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/animate.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x8

    .line 157
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setVisibility(I)V

    .line 158
    sget-object v0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->TAG:Ljava/lang/String;

    const-string v1, "updateAnimateRes, res not bukeyong"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0, v2}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setVisibility(I)V

    .line 167
    iput-object v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mCurrentResPath:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/geely/hvac/component/AcFrontBehindSwitch$2;

    invoke-direct {v1, p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch$2;-><init>(Lcom/geely/hvac/component/AcFrontBehindSwitch;)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 185
    iget-object v1, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mCurrentResPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    .line 186
    new-instance v2, Lcom/geely/hvac/component/-$$Lambda$AcFrontBehindSwitch$xlp17nXV7KA1NiafUegqyU-tuLw;

    invoke-direct {v2, p0, v0}, Lcom/geely/hvac/component/-$$Lambda$AcFrontBehindSwitch$xlp17nXV7KA1NiafUegqyU-tuLw;-><init>(Lcom/geely/hvac/component/AcFrontBehindSwitch;Ljava/io/FileInputStream;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$updateAnimateRes$0$AcFrontBehindSwitch(Ljava/io/FileInputStream;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 187
    invoke-virtual {p0, p2}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 188
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->cancelAnimation()V

    .line 189
    iget-boolean p2, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mIsFront:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 190
    invoke-virtual {p0, p2}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setProgress(F)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 192
    invoke-virtual {p0, p2}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setProgress(F)V

    .line 195
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setFront(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFront"
        }
    .end annotation

    .line 124
    iput-boolean p1, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mIsFront:Z

    .line 125
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    new-array p1, v0, [F

    .line 130
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-array p1, v0, [F

    .line 132
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 134
    :goto_0
    new-instance v0, Lcom/geely/hvac/component/AcFrontBehindSwitch$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch$1;-><init>(Lcom/geely/hvac/component/AcFrontBehindSwitch;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setRes()V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->updateAnimateRes()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 105
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mFrontStaticPicBgRes:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->mBehindStaticPicBgRes:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 109
    sget-object v2, Lcom/geely/hvac/component/AcFrontBehindSwitch;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVisibility, frontV:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", behindV:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 111
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 112
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 114
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 115
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    sget-object v0, Lcom/geely/hvac/component/AcFrontBehindSwitch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility, \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/geely/hvac/utils/StackPrinter;->getExceptionStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
