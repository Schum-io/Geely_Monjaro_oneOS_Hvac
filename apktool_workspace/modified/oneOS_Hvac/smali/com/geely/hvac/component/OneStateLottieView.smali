.class public Lcom/geely/hvac/component/OneStateLottieView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "OneStateLottieView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneStateLottieView"


# instance fields
.field private mLight:Ljava/lang/String;

.field private mNight:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


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

    .line 20
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/OneStateLottieView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/OneStateLottieView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/OneStateLottieView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/geely/hvac/utils/DayNightUtil;->isLight()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/geely/hvac/component/OneStateLottieView;->mLight:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/geely/hvac/component/OneStateLottieView;->mNight:Ljava/lang/String;

    :goto_0
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

    .line 36
    sget-object p1, Lcom/geely/hvac/component/OneStateLottieView;->TAG:Ljava/lang/String;

    const-string p2, "init, attr is null"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/geely/hvac/R$styleable;->OneStateLottieView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/OneStateLottieView;->mNight:Ljava/lang/String;

    const/4 p2, 0x0

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/OneStateLottieView;->mLight:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-direct {p0, p2}, Lcom/geely/hvac/component/OneStateLottieView;->updateAnimate(Z)V

    return-void
.end method

.method private updateAnimate(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animate"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/geely/hvac/component/OneStateLottieView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/geely/hvac/component/OneStateLottieView;->getPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/geely/hvac/component/OneStateLottieView;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iput-object v0, p0, Lcom/geely/hvac/component/OneStateLottieView;->mPath:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/OneStateLottieView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/animate.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/OneStateLottieView;->setAnimation(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/geely/hvac/component/OneStateLottieView;->playAnimation()V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/OneStateLottieView;->setProgress(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/OneStateLottieView;->updateAnimate(Z)V

    .line 69
    invoke-super {p0}, Lcom/airbnb/lottie/LottieAnimationView;->performClick()Z

    move-result v0

    return v0
.end method
