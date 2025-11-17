.class public Lcom/geely/hvac/GlyAcApp;
.super Landroid/app/Application;
.source "GlyAcApp.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# static fields
.field private static final TAG:Ljava/lang/String; = "GlyAcApp"

.field public static isPSDSave:Z

.field private static mInstance:Lcom/geely/hvac/GlyAcApp;


# instance fields
.field private final mViewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 88
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/GlyAcApp;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/geely/hvac/GlyAcApp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/geely/hvac/GlyAcApp;
    .locals 1

    .line 31
    sget-object v0, Lcom/geely/hvac/GlyAcApp;->mInstance:Lcom/geely/hvac/GlyAcApp;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/geely/hvac/utils/ActivityManager;->init(Landroid/app/Application;)V

    .line 59
    sget-object v0, Lcom/geely/hvac/utils/Executor;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/geely/hvac/-$$Lambda$GlyAcApp$KM44NsN1cPnsL8D6dSp_ycFVVGE;

    invoke-direct {v1, p0}, Lcom/geely/hvac/-$$Lambda$GlyAcApp$KM44NsN1cPnsL8D6dSp_ycFVVGE;-><init>(Lcom/geely/hvac/GlyAcApp;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    :try_start_0
    invoke-static {}, Lcom/geely/hvac/GlyAcManager;->getInstance()Lcom/geely/hvac/GlyAcManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/geely/hvac/GlyAcManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/geely/hvac/GlyAcApp;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/geely/hvac/utils/StackPrinter;->getExceptionStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/geely/hvac/GlyAcApp;->TAG:Ljava/lang/String;

    const-string v1, "attachBaseContext"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 38
    sput-object p0, Lcom/geely/hvac/GlyAcApp;->mInstance:Lcom/geely/hvac/GlyAcApp;

    return-void
.end method

.method public clearViewModel()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/geely/hvac/GlyAcApp;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    return-void
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/geely/hvac/GlyAcApp;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public synthetic lambda$init$0$GlyAcApp()V
    .locals 2

    .line 61
    sget-object v0, Lcom/geely/hvac/GlyAcApp;->TAG:Ljava/lang/String;

    const-string v1, "flavor:kx11a2"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-static {p0}, Lcom/geely/hvac/data/GlySensorsData;->init(Landroid/content/Context;)V

    .line 63
    invoke-static {p0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->getInstance(Landroid/content/Context;)Lcom/geely/lib/oneosapi/OneOSApiManager;

    move-result-object v0

    new-instance v1, Lcom/geely/hvac/GlyAcApp$1;

    invoke-direct {v1, p0}, Lcom/geely/hvac/GlyAcApp$1;-><init>(Lcom/geely/hvac/GlyAcApp;)V

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->init(Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 44
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    sget-object v0, Lcom/geely/hvac/GlyAcApp;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {p1}, Lcom/geely/hvac/utils/ConfigurationChangedDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    invoke-static {}, Lcom/geely/hvac/GlyAcManager;->getInstance()Lcom/geely/hvac/GlyAcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/GlyAcManager;->getAcInterfaceManager()Lcom/geely/hvac/GlyAcInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/hvac/GlyAcInterfaceManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 52
    sget-object v0, Lcom/geely/hvac/GlyAcApp;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 54
    invoke-direct {p0}, Lcom/geely/hvac/GlyAcApp;->init()V

    return-void
.end method
