.class public Lcom/geely/hvac/util/AnimationUtil;
.super Ljava/lang/RuntimeException;
.source "AnimationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationUtil"

.field private static mAnimationStop:Ljava/lang/Boolean;

.field private static mImageView:Landroid/widget/ImageView;

.field private static translateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .line 16
    sget-object v0, Lcom/geely/hvac/util/AnimationUtil;->mAnimationStop:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 16
    sput-object p0, Lcom/geely/hvac/util/AnimationUtil;->mAnimationStop:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$102(Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    .line 16
    sput-object p0, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method static synthetic access$200()Landroid/widget/ImageView;
    .locals 1

    .line 16
    sget-object v0, Lcom/geely/hvac/util/AnimationUtil;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static cancelTranslateAnimation(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationStop"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 89
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/geely/hvac/util/AnimationUtil;->mAnimationStop:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public static cleanTranslateAnimation()V
    .locals 2

    .line 97
    sget-object v0, Lcom/geely/hvac/util/AnimationUtil;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 99
    sget-object v0, Lcom/geely/hvac/util/AnimationUtil;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static translationImages(Landroid/widget/ImageView;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "key",
            "animationStop"
        }
    .end annotation

    const-string v0, "AnimationUtil"

    .line 26
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Lcom/geely/hvac/util/AnimationUtil;->mAnimationStop:Ljava/lang/Boolean;

    .line 27
    sput-object p0, Lcom/geely/hvac/util/AnimationUtil;->mImageView:Landroid/widget/ImageView;

    const/4 p0, 0x0

    :try_start_0
    const-string p2, "hmiX"

    .line 32
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "hmiY"

    .line 33
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move p2, p0

    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move p1, p0

    .line 38
    :goto_1
    sget-object v1, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    if-nez v1, :cond_0

    .line 39
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p2, p2

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1, p1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    goto :goto_2

    .line 42
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 43
    sget-object p1, Lcom/geely/hvac/util/AnimationUtil;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u53d6\u6d88\u52a8\u753b\u5f02\u5e38="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :goto_2
    sget-object p1, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 49
    sget-object p1, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, p0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 50
    sget-object p1, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 51
    sget-object p1, Lcom/geely/hvac/util/AnimationUtil;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    sget-object p0, Lcom/geely/hvac/util/AnimationUtil;->mImageView:Landroid/widget/ImageView;

    sget-object p1, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 53
    sget-object p0, Lcom/geely/hvac/util/AnimationUtil;->mImageView:Landroid/widget/ImageView;

    sget-object p1, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    sget-object p0, Lcom/geely/hvac/util/AnimationUtil;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance p1, Lcom/geely/hvac/util/AnimationUtil$1;

    invoke-direct {p1}, Lcom/geely/hvac/util/AnimationUtil$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
