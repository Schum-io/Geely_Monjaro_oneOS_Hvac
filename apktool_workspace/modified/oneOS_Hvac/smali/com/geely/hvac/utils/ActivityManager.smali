.class public Lcom/geely/hvac/utils/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/utils/ActivityManager$ActivityManagerHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mAppCtx:Landroid/content/Context;

.field private mVisibleActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/geely/hvac/utils/ActivityManager$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/utils/ActivityManager$1;-><init>(Lcom/geely/hvac/utils/ActivityManager;)V

    iput-object v0, p0, Lcom/geely/hvac/utils/ActivityManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$002(Lcom/geely/hvac/utils/ActivityManager;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/geely/hvac/utils/ActivityManager;->mVisibleActivityRef:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$100(Lcom/geely/hvac/utils/ActivityManager;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/geely/hvac/utils/ActivityManager;->activities:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/geely/hvac/utils/ActivityManager;
    .locals 1

    .line 69
    sget-object v0, Lcom/geely/hvac/utils/ActivityManager$ActivityManagerHolder;->INSTANCE:Lcom/geely/hvac/utils/ActivityManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentVisibleActivities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/geely/hvac/utils/ActivityManager;->activities:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/geely/hvac/utils/ActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activities size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/hvac/utils/ActivityManager;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/geely/hvac/utils/ActivityManager;->activities:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentVisibleActivity()Landroid/app/Activity;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/geely/hvac/utils/ActivityManager;->mVisibleActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentVisibleActivityOrContext()Landroid/content/Context;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/geely/hvac/utils/ActivityManager;->mVisibleActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/utils/ActivityManager;->mAppCtx:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/utils/ActivityManager;->mAppCtx:Landroid/content/Context;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/utils/ActivityManager;->activities:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/geely/hvac/utils/ActivityManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
