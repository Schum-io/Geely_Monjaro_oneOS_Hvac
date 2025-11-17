.class public Lcom/geely/hvac/component/BlowWindAnimate;
.super Lcom/geely/livewallpager/lotties/LottieAnimationView;
.source "BlowWindAnimate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlowWindAnimate"


# instance fields
.field private mActivityVisible:Z

.field private volatile mAnimateEnable:Z

.field private volatile mCurrentResPath:Ljava/lang/String;

.field private mPagerItemVisible:Z


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

    .line 70
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mCurrentResPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mAnimateEnable:Z

    .line 42
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mActivityVisible:Z

    .line 46
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mPagerItemVisible:Z

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/BlowWindAnimate;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mCurrentResPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mAnimateEnable:Z

    .line 42
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mActivityVisible:Z

    .line 46
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mPagerItemVisible:Z

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BlowWindAnimate;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 32
    iput-object p3, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mCurrentResPath:Ljava/lang/String;

    const/4 p3, 0x0

    .line 37
    iput-boolean p3, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mAnimateEnable:Z

    .line 42
    iput-boolean p3, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mActivityVisible:Z

    .line 46
    iput-boolean p3, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mPagerItemVisible:Z

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BlowWindAnimate;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/component/BlowWindAnimate;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->getAnimateEnable()Z

    move-result p0

    return p0
.end method

.method public static bindActivityVisibility(Lcom/geely/hvac/component/BlowWindAnimate;Z)V
    .locals 0
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

    .line 52
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimate;->setActivityVisible(Z)V

    return-void
.end method

.method public static bindBlowWindAnimateRes(Lcom/geely/hvac/component/BlowWindAnimate;Ljava/lang/String;)V
    .locals 0
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

    .line 66
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimate;->setCurrentResPath(Ljava/lang/String;)V

    return-void
.end method

.method public static bindPagerItemVisible(Lcom/geely/hvac/component/BlowWindAnimate;Z)V
    .locals 0
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

    .line 59
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimate;->setPagerItemVisible(Z)V

    return-void
.end method

.method private checkRes(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 208
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/animate.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 210
    sget-object v1, Lcom/geely/hvac/component/BlowWindAnimate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRes: res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    sget-object p1, Lcom/geely/hvac/component/BlowWindAnimate;->TAG:Ljava/lang/String;

    const-string v0, "checkRes: res:false"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method private getAnimateEnable()Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mActivityVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mPagerItemVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mCurrentResPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimate;->checkRes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    const/4 p1, -0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimate;->setRepeatCount(I)V

    return-void
.end method

.method private updateAnimateEnable()V
    .locals 4

    .line 134
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->getAnimateEnable()Z

    move-result v0

    .line 135
    sget-object v1, Lcom/geely/hvac/component/BlowWindAnimate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAnimateEnable, newEnableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAnimateEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mAnimateEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget-boolean v1, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mAnimateEnable:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 139
    :cond_0
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mAnimateEnable:Z

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->playAnimation()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->pauseAnimation()V

    :goto_0
    return-void
.end method

.method private updateAnimateRes(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentResPath"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/animate.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimate;->checkRes(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p1, 0x8

    .line 153
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimate;->setVisibility(I)V

    .line 154
    sget-object p1, Lcom/geely/hvac/component/BlowWindAnimate;->TAG:Ljava/lang/String;

    const-string v0, "updateAnimateRes, res not bukeyong"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mCurrentResPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    sget-object p1, Lcom/geely/hvac/component/BlowWindAnimate;->TAG:Ljava/lang/String;

    const-string v0, "updateAnimateRes, same res"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_1
    iput-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mCurrentResPath:Ljava/lang/String;

    .line 164
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/geely/hvac/component/BlowWindAnimate$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/hvac/component/BlowWindAnimate$1;-><init>(Lcom/geely/hvac/component/BlowWindAnimate;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimate;->setImageAssetDelegate(Lcom/geely/livewallpager/lotties/ImageAssetDelegate;)V

    .line 178
    new-instance p1, Lcom/geely/hvac/component/BlowWindAnimate$2;

    invoke-direct {p1, p0, v1}, Lcom/geely/hvac/component/BlowWindAnimate$2;-><init>(Lcom/geely/hvac/component/BlowWindAnimate;Ljava/io/FileInputStream;)V

    invoke-static {v1, p1}, Lcom/geely/livewallpager/lotties/LottieComposition$Factory;->fromInputStream(Ljava/io/InputStream;Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;)Lcom/geely/livewallpager/lotties/Cancellable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->onAttachedToWindow()V

    .line 99
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->updateAnimateEnable()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 104
    invoke-super {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->onDetachedFromWindow()V

    .line 105
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->updateAnimateEnable()V

    return-void
.end method

.method public setActivityVisible(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityVisible"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivityVisible, activityVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mActivityVisible:Z

    .line 111
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->updateAnimateEnable()V

    return-void
.end method

.method public setCurrentResPath(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentResPath"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentResPath: currentResPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimate;->updateAnimateRes(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->updateAnimateEnable()V

    return-void
.end method

.method public setPagerItemVisible(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pagerItemVisible"
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPagerItemVisible: pagerItemVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimate;->mPagerItemVisible:Z

    .line 117
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->updateAnimateEnable()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setVisibility(I)V

    .line 92
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility, visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimate;->updateAnimateEnable()V

    return-void
.end method
