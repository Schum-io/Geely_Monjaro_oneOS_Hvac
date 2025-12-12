.class public abstract Lcom/geely/hvac/component/BlowWindAnimateBasic;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "BlowWindAnimateBasic.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BlowWindAnimateBasic"


# instance fields
.field nextVisiReloadAnimate:Z

.field private visiNeedResumeAni:Z


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

    .line 37
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

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

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic lambda$setAnimationPath$0(Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;
    .locals 1

    .line 114
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method abstract getActivityVisibility()Z
.end method

.method abstract getPageVisibility()Z
.end method

.method public synthetic lambda$setAnimationPath$1$BlowWindAnimateBasic(Ljava/lang/Runnable;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 124
    invoke-virtual {p0, p2}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 125
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method abstract loadAnimate()V
.end method

.method protected onPageVisiChanged()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->getPageVisibility()Z

    move-result v0

    const-string v1, "BlowWindAnimateBasic"

    if-eqz v0, :cond_2

    .line 58
    iget-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateBasic;->nextVisiReloadAnimate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 59
    iput-boolean v2, p0, Lcom/geely/hvac/component/BlowWindAnimateBasic;->nextVisiReloadAnimate:Z

    .line 60
    iput-boolean v2, p0, Lcom/geely/hvac/component/BlowWindAnimateBasic;->visiNeedResumeAni:Z

    .line 61
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->loadAnimate()V

    const-string v0, "loadAnimate:"

    .line 62
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateBasic;->visiNeedResumeAni:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->resumeAnimation()V

    const-string v0, "resumeAnimation:"

    .line 69
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iput-boolean v2, p0, Lcom/geely/hvac/component/BlowWindAnimateBasic;->visiNeedResumeAni:Z

    return-void

    :cond_1
    const-string v0, "getPageVisibility true"

    .line 73
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateBasic;->visiNeedResumeAni:Z

    .line 78
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->pauseAnimation()V

    const-string v0, "pauseAnimation:"

    .line 79
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    :cond_3
    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->getActivityVisibility()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "cancelAnimation"

    .line 83
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->cancelAnimation()V

    .line 85
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->clearComposition()V

    .line 86
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->clearCache(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setAnimationPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/airbnb/lottie/LottieListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "localJsonPath",
            "imagesPath",
            "runnable",
            "throwableLottieListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 111
    :try_start_0
    new-instance v0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$jaYAMonqqwKYiE6uTpqRnj5l0NM;

    invoke-direct {v0, p2}, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$jaYAMonqqwKYiE6uTpqRnj5l0NM;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 121
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 122
    invoke-static {p2, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    .line 123
    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$9tY-AitX5kuggw3LxK_qu87GXE0;

    invoke-direct {p2, p0, p3}, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$9tY-AitX5kuggw3LxK_qu87GXE0;-><init>(Lcom/geely/hvac/component/BlowWindAnimateBasic;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 127
    invoke-virtual {p1, p4}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setNextVisiReloadAnimate(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextVisiReloadAnimate"
        }
    .end annotation

    .line 105
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateBasic;->nextVisiReloadAnimate:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->cancelAnimation()V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateBasic;->nextVisiReloadAnimate:Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->onPageVisiChanged()V

    :goto_0
    return-void
.end method
