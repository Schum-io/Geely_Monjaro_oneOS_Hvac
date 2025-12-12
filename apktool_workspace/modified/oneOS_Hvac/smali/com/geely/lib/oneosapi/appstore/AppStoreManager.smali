.class public Lcom/geely/lib/oneosapi/appstore/AppStoreManager;
.super Ljava/lang/Object;
.source "AppStoreManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStoreManager"


# instance fields
.field private mService:Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->initAppStoreManager(Landroid/os/IBinder;)V

    return-void
.end method

.method private initAppStoreManager(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->mService:Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;

    :cond_0
    return-void
.end method

.method private serviceIsNull()V
    .locals 2

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->TAG:Ljava/lang/String;

    const-string v1, "AppStoreServiceIsNull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->mService:Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;->cancelDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public getUnfinishedApp()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/appstore/bean/AppStoreTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->mService:Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;->getAllPendingDownloadApp()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->serviceIsNull()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public registerTaskCallBack(Lcom/geely/lib/oneosapi/appstore/IAppStoreTaskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iAppStoreCallback"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->mService:Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;->registerTaskCallBack(Lcom/geely/lib/oneosapi/appstore/IAppStoreTaskCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public setService(Landroid/os/IBinder;)V
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
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->initAppStoreManager(Landroid/os/IBinder;)V

    return-void
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->mService:Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;->startDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public stopDownload(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->mService:Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;->stopDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public unregisterTaskCallBack(Lcom/geely/lib/oneosapi/appstore/IAppStoreTaskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iAppStoreCallback"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->mService:Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/appstore/IAppStoreInterface;->unregisterTaskCallBack(Lcom/geely/lib/oneosapi/appstore/IAppStoreTaskCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;->serviceIsNull()V

    :goto_0
    return-void
.end method
