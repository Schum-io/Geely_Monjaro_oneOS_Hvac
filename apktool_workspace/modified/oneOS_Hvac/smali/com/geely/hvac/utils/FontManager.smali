.class public Lcom/geely/hvac/utils/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/utils/FontManager$FontManagerHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlibabaPuhuiMedium:Landroid/graphics/Typeface;

.field private mAlibabaPuhuiRegular:Landroid/graphics/Typeface;

.field private volatile mInitFlag:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-class v0, Lcom/geely/hvac/utils/FontManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/utils/FontManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/hvac/utils/FontManager$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/geely/hvac/utils/FontManager;-><init>()V

    return-void
.end method

.method private checkInit()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/geely/hvac/utils/FontManager;->mInitFlag:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 37
    monitor-enter p0

    .line 38
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/hvac/utils/FontManager;->mInitFlag:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/geely/hvac/utils/FontManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/hvac/utils/FontManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 46
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/geely/hvac/utils/FontManager;
    .locals 1

    .line 23
    invoke-static {}, Lcom/geely/hvac/utils/FontManager$FontManagerHolder;->access$100()Lcom/geely/hvac/utils/FontManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getmAlibabaPuhuiMedium()Landroid/graphics/Typeface;
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/geely/hvac/utils/FontManager;->checkInit()V

    .line 52
    iget-object v0, p0, Lcom/geely/hvac/utils/FontManager;->mAlibabaPuhuiMedium:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getmAlibabaPuhuiRegular()Landroid/graphics/Typeface;
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/geely/hvac/utils/FontManager;->checkInit()V

    .line 57
    iget-object v0, p0, Lcom/geely/hvac/utils/FontManager;->mAlibabaPuhuiRegular:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/utils/FontManager;->mAlibabaPuhuiMedium:Landroid/graphics/Typeface;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/utils/FontManager;->mAlibabaPuhuiRegular:Landroid/graphics/Typeface;

    .line 30
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/utils/FontManager;->mInitFlag:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
