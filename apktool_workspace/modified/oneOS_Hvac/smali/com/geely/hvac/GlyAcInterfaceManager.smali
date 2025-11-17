.class public Lcom/geely/hvac/GlyAcInterfaceManager;
.super Ljava/lang/Object;
.source "GlyAcInterfaceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlyAcInterfaceManager"


# instance fields
.field private final HIGH_ELEVATION:F

.field private final LOW_ELEVATION:F

.field private mAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

.field private mAppCtx:Landroid/content/Context;

.field private mMainBinding:Lcom/geely/hvac/databinding/LayoutMainBinding;

.field private mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

.field private mRootLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->mAppCtx:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->mRootLayout:Landroid/widget/FrameLayout;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 32
    iput v0, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->LOW_ELEVATION:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 33
    iput v0, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->HIGH_ELEVATION:F

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/GlyAcInterfaceManager;)Lcom/geely/hvac/provider/AcVisibilityListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->mAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->mAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    invoke-interface {v0, v1}, Lcom/geely/hvac/provider/AcVisibilityListener;->onInVisible(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->mAppCtx:Landroid/content/Context;

    .line 43
    new-instance p1, Lcom/geely/hvac/GlyAcInterfaceManager$1;

    invoke-direct {p1, p0}, Lcom/geely/hvac/GlyAcInterfaceManager$1;-><init>(Lcom/geely/hvac/GlyAcInterfaceManager;)V

    invoke-static {p1}, Lcom/geely/hvac/utils/ToastUtil;->setToastUtilViewCreate(Lcom/geely/hvac/utils/ToastUtilViewCreate;)V

    .line 60
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 61
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 63
    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object p1, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 66
    new-instance p1, Lcom/geely/hvac/GlyAcInterfaceManager$2;

    invoke-direct {p1, p0}, Lcom/geely/hvac/GlyAcInterfaceManager$2;-><init>(Lcom/geely/hvac/GlyAcInterfaceManager;)V

    invoke-static {p1}, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->setAcVisibilityListener(Lcom/geely/hvac/provider/AcVisibilityListener;)V

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

    .line 86
    sget-object v0, Lcom/geely/hvac/GlyAcInterfaceManager;->TAG:Ljava/lang/String;

    const-string v1, "reCreate View"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public resetHideRunnable()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->mAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 95
    invoke-interface {v0, v1}, Lcom/geely/hvac/provider/AcVisibilityListener;->onVisible(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAcVisibilityListener(Lcom/geely/hvac/provider/AcVisibilityListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acVisibilityListener"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/geely/hvac/GlyAcInterfaceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcVisibilityListener, listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/geely/hvac/GlyAcInterfaceManager;->mAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 100
    sget-object v0, Lcom/geely/hvac/GlyAcInterfaceManager;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    const-class v2, Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/geely/hvac/GlyAcApp;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
