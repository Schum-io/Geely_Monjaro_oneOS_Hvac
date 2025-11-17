.class public Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;
.super Ljava/lang/Object;
.source "RecommendationManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/recommendation/RecommendationManager$WithdrawCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendationManager"


# instance fields
.field private mAnalyticsManager:Lcom/geely/lib/oneosapi/recommendation/manager/AnalyticsManager;

.field private mContext:Landroid/content/Context;

.field private mCsdManager:Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;

.field private mPsdManager:Lcom/geely/lib/oneosapi/recommendation/manager/PsdManager;

.field private mService:Lcom/geely/lib/oneosapi/recommendation/IRecommendService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "binder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-direct {p0, p2}, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->initRecommendationManger(Landroid/os/IBinder;)V

    return-void
.end method

.method private initAnalyticsManager()V
    .locals 0

    return-void
.end method

.method private initCsdManager()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCsdManager() called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mService:Lcom/geely/lib/oneosapi/recommendation/IRecommendService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecommendationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mCsdManager:Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mService:Lcom/geely/lib/oneosapi/recommendation/IRecommendService;

    invoke-interface {v2}, Lcom/geely/lib/oneosapi/recommendation/IRecommendService;->getCsdManager()Lcom/geely/lib/oneosapi/recommendation/ICsdManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/recommendation/ICsdManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mCsdManager:Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initPsdManager()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPsdManager() called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mService:Lcom/geely/lib/oneosapi/recommendation/IRecommendService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecommendationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mPsdManager:Lcom/geely/lib/oneosapi/recommendation/manager/PsdManager;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/geely/lib/oneosapi/recommendation/manager/PsdManager;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mService:Lcom/geely/lib/oneosapi/recommendation/IRecommendService;

    invoke-interface {v2}, Lcom/geely/lib/oneosapi/recommendation/IRecommendService;->getPsdManager()Lcom/geely/lib/oneosapi/recommendation/IPsdManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/geely/lib/oneosapi/recommendation/manager/PsdManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/recommendation/IPsdManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mPsdManager:Lcom/geely/lib/oneosapi/recommendation/manager/PsdManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initRecommendationManger(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/recommendation/IRecommendService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/recommendation/IRecommendService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mService:Lcom/geely/lib/oneosapi/recommendation/IRecommendService;

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->initCsdManager()V

    .line 3
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->initPsdManager()V

    .line 4
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->initAnalyticsManager()V

    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mService:Lcom/geely/lib/oneosapi/recommendation/IRecommendService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCsdManager()Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mCsdManager:Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;

    return-object v0
.end method

.method public getPsdManager()Lcom/geely/lib/oneosapi/recommendation/manager/PsdManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mPsdManager:Lcom/geely/lib/oneosapi/recommendation/manager/PsdManager;

    return-object v0
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setService: ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecommendationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->initRecommendationManger(Landroid/os/IBinder;)V

    return-void
.end method

.method public subscribeWithdrawCallback(Lcom/geely/lib/oneosapi/recommendation/RecommendationManager$WithdrawCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mService:Lcom/geely/lib/oneosapi/recommendation/IRecommendService;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/recommendation/IRecommendService;->subscribeWithdrawCallback(Lcom/geely/lib/oneosapi/recommendation/callback/IWithdrawCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unSubscribeWithdrawCallback(Lcom/geely/lib/oneosapi/recommendation/RecommendationManager$WithdrawCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;->mService:Lcom/geely/lib/oneosapi/recommendation/IRecommendService;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/recommendation/IRecommendService;->unSubscribeWithdrawCallback(Lcom/geely/lib/oneosapi/recommendation/callback/IWithdrawCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
