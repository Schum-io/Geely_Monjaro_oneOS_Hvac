.class public abstract Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "AutoBlowAnimateAbs.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mAutoOn:Z

.field protected mCurrentAnimateRes:Ljava/lang/String;

.field protected mLightRes:Ljava/lang/String;

.field protected mNightRes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->mAutoOn:Z

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

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->mAutoOn:Z

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

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->mAutoOn:Z

    return-void
.end method

.method public static bindAnimateRes(Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "light",
            "night"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->setAnimateRes(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bindAutoState(Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "on"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->setAutoState(Z)V

    return-void
.end method

.method private setAnimateRes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "light",
            "night"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->mLightRes:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->mNightRes:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/hvac/utils/UiUtil;->isLight(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->mLightRes:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->mNightRes:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->mCurrentAnimateRes:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->updateAnimateRes()V

    return-void
.end method

.method private setAutoState(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 53
    iput-boolean p1, p0, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->mAutoOn:Z

    .line 54
    invoke-virtual {p0}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->updateAutoState()V

    return-void
.end method


# virtual methods
.method protected abstract updateAnimateRes()V
.end method

.method protected abstract updateAutoState()V
.end method
