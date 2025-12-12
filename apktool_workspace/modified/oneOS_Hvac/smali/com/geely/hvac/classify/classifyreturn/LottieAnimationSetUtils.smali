.class public Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;
.super Ljava/lang/Object;
.source "LottieAnimationSetUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LottieAnimationSetUtils"

.field private static mCancel:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->mCancel:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$oneLottieAnimationSet$0(Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 30
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u52a8\u753b\u64ad\u653e\u5b8c1\u6b21  = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LottieAnimationSetUtils"

    invoke-static {v0, p2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cancelAnimation()V

    const/16 p2, 0x8

    .line 33
    invoke-virtual {p0, p2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 34
    invoke-virtual {p1, p0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$stopLottieAnimationSet$1(Lcom/geely/livewallpager/lotties/LottieAnimationView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    sget-object p1, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->mCancel:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cancelAnimation()V

    const/16 p1, 0x8

    .line 69
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static oneLottieAnimationSet(Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lottieImages",
            "seatBg",
            "key"
        }
    .end annotation

    const/16 v0, 0x8

    .line 24
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setVisibility(I)V

    const-string v0, "json"

    .line 26
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const-string v0, "images"

    .line 27
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimation()V

    .line 29
    new-instance p2, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$fFu-T5Q_D5Xr6Uai0Pmi1fwiTKM;

    invoke-direct {p2, p0, p1}, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$fFu-T5Q_D5Xr6Uai0Pmi1fwiTKM;-><init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;)V

    invoke-virtual {p0, p2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LottieAnimationSetUtils"

    invoke-static {p1, p0}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static startLottieAnimationSet(Lcom/geely/livewallpager/lotties/LottieAnimationView;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lottieImages",
            "key"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->mCancel:Ljava/lang/Boolean;

    .line 50
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setVisibility(I)V

    const-string v0, "json"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const-string v0, "images"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimation()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LottieAnimationSetUtils"

    invoke-static {p1, p0}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static stopLottieAnimationSet(Lcom/geely/livewallpager/lotties/LottieAnimationView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lottieImages",
            "cancel"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->mCancel:Ljava/lang/Boolean;

    .line 65
    new-instance p1, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$vNM0nNmRqPgzpRw37MLlTMdpMq4;

    invoke-direct {p1, p0}, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$vNM0nNmRqPgzpRw37MLlTMdpMq4;-><init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
