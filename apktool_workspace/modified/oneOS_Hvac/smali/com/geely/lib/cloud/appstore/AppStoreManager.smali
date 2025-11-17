.class public Lcom/geely/lib/cloud/appstore/AppStoreManager;
.super Ljava/lang/Object;
.source "AppStoreManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStoreManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/appstore/IAppStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppStoreManager"

    const-string v1, "AppStoreManager create"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p2}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    return-void
.end method


# virtual methods
.method public getAppInstallAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "appVersionParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppInstallAdd"

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 324
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$13;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$13;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppInstallAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 340
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreBatchCheckUpdate(Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pdsnAppListParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreBatchCheckUpdate"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$4;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$4;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreBatchCheckUpdate(Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 133
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreCategory(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "pdsnParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreCategory"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$5;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$5;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreCategory(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 156
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreCategoryList(Lcom/geely/lib/cloud/appstore/bean/PdsnIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "pdsnIdParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreCategoryList"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 163
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$6;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$6;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreCategoryList(Lcom/geely/lib/cloud/appstore/bean/PdsnIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 179
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreDetails(Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "vinPackageParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreDetails"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 209
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$8;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$8;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreDetails(Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 225
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreDownRanking(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pdsnParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreDownRanking"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 70
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$2;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreDownRanking(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 87
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreDownUp(Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "appPackageParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreDownUp"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 232
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$9;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$9;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreDownUp(Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 248
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreGameHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "vinVersionParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreGameHome"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 255
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$10;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$10;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreGameHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 271
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreGameSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "vinKeyParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreGameSearch"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 278
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$11;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$11;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreGameSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 294
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreGroupList(Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "idPdsnParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreGroupList"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 94
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$3;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$3;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreGroupList(Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 110
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "pdsnKeyParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoreSearch"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$7;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$7;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 202
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppStoresHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pasnVersionParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppStoresHome"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$1;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppStoresHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 63
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAppVersionAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "appVersionParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getAppVersionAdd"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 301
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager$12;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/appstore/AppStoreManager$12;-><init>(Lcom/geely/lib/cloud/appstore/AppStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/appstore/IAppStore;->getAppVersionAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 317
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getNewAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "pdsnKeyNewParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AppStoreManager"

    const-string v1, "getNewAppStoreSearch"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_0

    .line 346
    invoke-static {p2}, Lcom/geely/lib/cloud/common/CommonUtil;->getDataCallBack(Lcom/geely/lib/cloud/listener/OperationListener;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/appstore/IAppStore;->getNewAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 348
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
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

    const-string v0, "AppStoreManager"

    const-string v1, "AppStoreManager setService"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 39
    invoke-static {p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/appstore/IAppStore;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/AppStoreManager;->mService:Lcom/geely/lib/cloud/appstore/IAppStore;

    :cond_0
    return-void
.end method
