.class public Lcom/geely/hvac/view/SeatLottieAnimationView;
.super Lcom/geely/livewallpager/lotties/LottieAnimationView;
.source "SeatLottieAnimationView.java"


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

    .line 20
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;-><init>(Landroid/content/Context;)V

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

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic lambda$setAnimationPath$0(Ljava/lang/String;Lcom/geely/livewallpager/lotties/LottieImageAsset;)Landroid/graphics/Bitmap;
    .locals 1

    .line 37
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getFileName()Ljava/lang/String;

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

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public synthetic lambda$setAnimationPath$1$SeatLottieAnimationView(Ljava/lang/Runnable;Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p2}, Lcom/geely/hvac/view/SeatLottieAnimationView;->setComposition(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    .line 48
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setAnimationPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/geely/livewallpager/lotties/LottieListener;)V
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
            "Lcom/geely/livewallpager/lotties/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 34
    :try_start_0
    new-instance v0, Lcom/geely/hvac/view/-$$Lambda$SeatLottieAnimationView$GhvgYZxq42oqIHg2jxe574TpeY8;

    invoke-direct {v0, p2}, Lcom/geely/hvac/view/-$$Lambda$SeatLottieAnimationView$GhvgYZxq42oqIHg2jxe574TpeY8;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/geely/hvac/view/SeatLottieAnimationView;->setImageAssetDelegate(Lcom/geely/livewallpager/lotties/ImageAssetDelegate;)V

    .line 44
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 45
    invoke-static {p2, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/geely/hvac/view/-$$Lambda$SeatLottieAnimationView$8-qIbjlN1qqqa4Mvwtfx3c11v6A;

    invoke-direct {p2, p0, p3}, Lcom/geely/hvac/view/-$$Lambda$SeatLottieAnimationView$8-qIbjlN1qqqa4Mvwtfx3c11v6A;-><init>(Lcom/geely/hvac/view/SeatLottieAnimationView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lcom/geely/livewallpager/lotties/LottieTask;->addListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    .line 50
    invoke-virtual {p1, p4}, Lcom/geely/livewallpager/lotties/LottieTask;->addFailureListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
