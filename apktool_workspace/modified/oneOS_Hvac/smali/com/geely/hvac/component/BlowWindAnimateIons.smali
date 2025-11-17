.class public Lcom/geely/hvac/component/BlowWindAnimateIons;
.super Lcom/geely/hvac/component/BlowWindAnimateBasic;
.source "BlowWindAnimateIons.java"


# static fields
.field private static final LOTTIE_PREFIX:Ljava/lang/String; = "lottie/"


# instance fields
.field currentResPath:Ljava/lang/String;

.field mActivityVisible:Z

.field private mIsGclean:Z

.field mPagerVisible:Z

.field secondPartAnimatorListener:Landroid/animation/AnimatorListenerAdapter;


# direct methods
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

    .line 68
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimateBasic;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mPagerVisible:Z

    .line 64
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mActivityVisible:Z

    .line 149
    new-instance v0, Lcom/geely/hvac/component/BlowWindAnimateIons$2;

    invoke-direct {v0, p0}, Lcom/geely/hvac/component/BlowWindAnimateIons$2;-><init>(Lcom/geely/hvac/component/BlowWindAnimateIons;)V

    iput-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->secondPartAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BlowWindAnimateBasic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mPagerVisible:Z

    .line 64
    iput-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mActivityVisible:Z

    .line 149
    new-instance v0, Lcom/geely/hvac/component/BlowWindAnimateIons$2;

    invoke-direct {v0, p0}, Lcom/geely/hvac/component/BlowWindAnimateIons$2;-><init>(Lcom/geely/hvac/component/BlowWindAnimateIons;)V

    iput-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->secondPartAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BlowWindAnimateIons;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/BlowWindAnimateBasic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 63
    iput-boolean p3, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mPagerVisible:Z

    .line 64
    iput-boolean p3, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mActivityVisible:Z

    .line 149
    new-instance p3, Lcom/geely/hvac/component/BlowWindAnimateIons$2;

    invoke-direct {p3, p0}, Lcom/geely/hvac/component/BlowWindAnimateIons$2;-><init>(Lcom/geely/hvac/component/BlowWindAnimateIons;)V

    iput-object p3, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->secondPartAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BlowWindAnimateIons;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/component/BlowWindAnimateIons;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->findAnimatePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bindActivityVisible(Lcom/geely/hvac/component/BlowWindAnimateIons;Z)V
    .locals 2
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

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindActivityVisible, visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlowWindAnimateBasic"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mActivityVisible:Z

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->loadAnimate()V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->onPageVisiChanged()V

    return-void
.end method

.method public static bindLottiePath(Lcom/geely/hvac/component/BlowWindAnimateIons;Ljava/lang/String;)V
    .locals 2
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

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindLottieAniPath, path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlowWindAnimateBasic"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->currentResPath:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->loadAnimate()V

    return-void
.end method

.method public static bindPagerVisible(Lcom/geely/hvac/component/BlowWindAnimateIons;Z)V
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

    .line 50
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mPagerVisible:Z

    .line 51
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->onPageVisiChanged()V

    return-void
.end method

.method public static bindVisible(Lcom/geely/hvac/component/BlowWindAnimateIons;Z)V
    .locals 2
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

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindVisible, visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlowWindAnimateBasic"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 25
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setVisibility(I)V

    .line 26
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/component/BlowWindAnimateIons$1;

    invoke-direct {v1, p1, p0}, Lcom/geely/hvac/component/BlowWindAnimateIons$1;-><init>(ZLcom/geely/hvac/component/BlowWindAnimateIons;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private findAnimatePath()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/0/hvac/lottie/light/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->currentResPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mIsGclean:Z

    if-eqz v1, :cond_0

    const-string v1, "_gclean"

    goto :goto_0

    :cond_0
    const-string v1, "_ions"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    const-string p1, "BlowWindAnimateBasic"

    const-string p2, "init, attr is null"

    .line 84
    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/geely/hvac/R$styleable;->BlowWindAnimateIons:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mIsGclean:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method getActivityVisibility()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mActivityVisible:Z

    return v0
.end method

.method getPageVisibility()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->mPagerVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$loadAnimate$0$BlowWindAnimateIons()V
    .locals 2

    const-string v0, "BlowWindAnimateBasic"

    const-string/jumbo v1, "\u52a8\u753b\u52a0\u8f7d\u6210\u529f"

    .line 137
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setRepeatCount(I)V

    .line 139
    iget-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->secondPartAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 140
    iget-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->secondPartAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->playAnimation()V

    return-void
.end method

.method public synthetic lambda$loadAnimate$1$BlowWindAnimateIons(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setNextVisiReloadAnimate(Z)V

    const-string v0, "BlowWindAnimateBasic"

    .line 144
    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadAnimate()V
    .locals 6

    .line 103
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->getPageVisibility()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "BlowWindAnimateBasic"

    if-nez v0, :cond_0

    const-string v0, "getPageVisibility:false"

    .line 104
    invoke-static {v2, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setNextVisiReloadAnimate(Z)V

    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->findAnimatePath()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setNextVisiReloadAnimate(Z)V

    return-void

    :cond_1
    const-string v3, "getPageVisibility:true"

    .line 115
    invoke-static {v2, v3}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v3, p0, Lcom/geely/hvac/component/BlowWindAnimateIons;->currentResPath:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v0, "currentResPath null!"

    .line 118
    invoke-static {v2, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 122
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/animate.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/images/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setNextVisiReloadAnimate(Z)V

    return-void

    .line 131
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 132
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setNextVisiReloadAnimate(Z)V

    return-void

    .line 135
    :cond_4
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->cancelAnimation()V

    .line 136
    new-instance v1, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$weJd5ZP4zURRQf4PjPxwrxohaPA;

    invoke-direct {v1, p0}, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$weJd5ZP4zURRQf4PjPxwrxohaPA;-><init>(Lcom/geely/hvac/component/BlowWindAnimateIons;)V

    new-instance v2, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$uq-r-u0IUJJul6g8Zo3e93-kmTY;

    invoke-direct {v2, p0}, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$uq-r-u0IUJJul6g8Zo3e93-kmTY;-><init>(Lcom/geely/hvac/component/BlowWindAnimateIons;)V

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setAnimationPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/airbnb/lottie/LottieListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 172
    invoke-super {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->setVisibility(I)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BlowWindAnimateBasic"

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
