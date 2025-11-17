.class public Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;
.super Lcom/geely/hvac/component/BlowWindAnimateBasic;
.source "BlowWindAnimateEco2Normal.java"


# static fields
.field private static final LOTTIE_PREFIX:Ljava/lang/String; = "lottie/"

.field protected static final TAG:Ljava/lang/String; = "BlowWindAnimateEco2Normal"


# instance fields
.field currentResPath:Ljava/lang/String;

.field ecoState:Ljava/lang/Boolean;

.field mActivityVisible:Z

.field mPagerVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 79
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/BlowWindAnimateBasic;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mPagerVisible:Z

    .line 76
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mActivityVisible:Z

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

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BlowWindAnimateBasic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mPagerVisible:Z

    .line 76
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mActivityVisible:Z

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

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/BlowWindAnimateBasic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mPagerVisible:Z

    .line 76
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mActivityVisible:Z

    return-void
.end method

.method public static bindActivityVisible(Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Z)V
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

    .line 26
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

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

    .line 27
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mActivityVisible:Z

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->loadAnimate()V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->onPageVisiChanged()V

    return-void
.end method

.method public static bindEcoState(Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "ecoState"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindEcoState, ecoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->ecoState:Ljava/lang/Boolean;

    .line 68
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->loadAnimate()V

    return-void
.end method

.method public static bindLottiePath(Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Ljava/lang/String;)V
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

    .line 59
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindLottieAniPath, path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->currentResPath:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->loadAnimate()V

    return-void
.end method

.method public static bindPagerVisible(Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Z)V
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

    .line 36
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindPagerVisible, visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mPagerVisible:Z

    .line 38
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->onPageVisiChanged()V

    return-void
.end method

.method public static bindVisible(Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Z)V
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

    .line 43
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindPagerVisible, visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 44
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setVisibility(I)V

    .line 45
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal$1;

    invoke-direct {v1, p1, p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal$1;-><init>(ZLcom/geely/hvac/component/BlowWindAnimateEco2Normal;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private findAnimatePath()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/0/hvac/"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lottie/"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Lcom/geely/hvac/utils/DayNightUtil;->isLight()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "light/"

    goto :goto_0

    :cond_0
    const-string v1, "night/"

    .line 160
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->currentResPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->ecoState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_eco"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getActivityVisibility()Z
    .locals 3

    .line 97
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityVisibility  --   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mActivityVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    iget-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mActivityVisible:Z

    return v0
.end method

.method getPageVisibility()Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->mPagerVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$loadAnimate$0$BlowWindAnimateEco2Normal()V
    .locals 2

    .line 145
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u52a8\u753b\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 146
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setRepeatCount(I)V

    .line 147
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->playAnimation()V

    return-void
.end method

.method public synthetic lambda$loadAnimate$1$BlowWindAnimateEco2Normal(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setNextVisiReloadAnimate(Z)V

    .line 150
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadAnimate()V
    .locals 6

    .line 103
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->getPageVisibility()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

    const-string v2, "getPageVisibility:false"

    invoke-static {v0, v2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setNextVisiReloadAnimate(Z)V

    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->findAnimatePath()Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v2, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAnimateRes path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "File(path).exists():false"

    .line 112
    invoke-static {v2, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setNextVisiReloadAnimate(Z)V

    return-void

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->currentResPath:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v0, "currentResPath null!"

    .line 118
    invoke-static {v2, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->ecoState:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    const-string v0, "frontWindUpState ecoState null!"

    .line 123
    invoke-static {v2, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 127
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/animate.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/images/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "File(jsonPath).exists():false"

    .line 132
    invoke-static {v2, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setNextVisiReloadAnimate(Z)V

    return-void

    .line 137
    :cond_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v0, "File(imageFolder).exists():false"

    .line 138
    invoke-static {v2, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setNextVisiReloadAnimate(Z)V

    return-void

    .line 143
    :cond_5
    invoke-virtual {p0}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->cancelAnimation()V

    .line 144
    new-instance v1, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateEco2Normal$E1jjycH33g5GRyn4bIbmxiMwCXQ;

    invoke-direct {v1, p0}, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateEco2Normal$E1jjycH33g5GRyn4bIbmxiMwCXQ;-><init>(Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;)V

    new-instance v2, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateEco2Normal$DnPHwCTsIaZWDdt_cb_IU5coCHo;

    invoke-direct {v2, p0}, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateEco2Normal$DnPHwCTsIaZWDdt_cb_IU5coCHo;-><init>(Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;)V

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setAnimationPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/airbnb/lottie/LottieListener;)V

    return-void
.end method
