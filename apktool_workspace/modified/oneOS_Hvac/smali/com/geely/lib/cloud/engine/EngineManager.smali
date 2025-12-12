.class public Lcom/geely/lib/cloud/engine/EngineManager;
.super Ljava/lang/Object;
.source "EngineManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field public static final TAG:Ljava/lang/String; = "EngineManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/engine/IEngine;


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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p2}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/engine/IEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    return-void
.end method


# virtual methods
.method public deleteBatchCreation(Lcom/geely/lib/cloud/engine/bean/DeleteBatchCreationParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "deleteBatchCreationParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "deleteBatchCreation"

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 441
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$18;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$18;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->deleteBatchCreation(Lcom/geely/lib/cloud/engine/bean/DeleteBatchCreationParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 457
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public deleteFavourite(Lcom/geely/lib/cloud/engine/bean/DeleteFavouriteParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "deleteFavouriteParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "deleteFavourite"

    .line 417
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 419
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$17;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$17;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->deleteFavourite(Lcom/geely/lib/cloud/engine/bean/DeleteFavouriteParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 435
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAbility(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getAbility"

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 351
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$14;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/engine/EngineManager$14;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getAbility(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 367
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getConfig(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getConfig"

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 374
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$15;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/engine/EngineManager$15;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getConfig(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 390
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCreationAdd(Lcom/geely/lib/cloud/engine/bean/SceneParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sceneParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getCreationAdd"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 282
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$11;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$11;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getCreationAdd(Lcom/geely/lib/cloud/engine/bean/SceneParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 298
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCreationDelete(Lcom/geely/lib/cloud/engine/bean/SceneIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sceneIdParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getCreationDelete"

    .line 257
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 259
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$10;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$10;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getCreationDelete(Lcom/geely/lib/cloud/engine/bean/SceneIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 275
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCreationList(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getCreationList"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$9;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/engine/EngineManager$9;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getCreationList(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 252
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCreationPublish(Lcom/geely/lib/cloud/engine/bean/PublishParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "publishParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getCreationPublish"

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 328
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$13;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$13;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getCreationPublish(Lcom/geely/lib/cloud/engine/bean/PublishParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 344
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCreationUpdate(Lcom/geely/lib/cloud/engine/bean/SceneParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sceneParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getCreationUpdate"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 305
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$12;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$12;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getCreationUpdate(Lcom/geely/lib/cloud/engine/bean/SceneParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 321
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getFavoriteDelete(Lcom/geely/lib/cloud/engine/bean/SceneIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sceneIdParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getFavoriteDelete"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 213
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$8;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$8;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getFavoriteDelete(Lcom/geely/lib/cloud/engine/bean/SceneIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 229
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getFavoriteInsert(Lcom/geely/lib/cloud/engine/bean/SceneIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sceneIdParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getFavoriteInsert"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 190
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$7;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$7;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getFavoriteInsert(Lcom/geely/lib/cloud/engine/bean/SceneIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 206
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getFavoriteList(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getFavoriteList"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$5;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/engine/EngineManager$5;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getFavoriteList(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 160
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getFavoriteUpdate(Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "updateFavouriteParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getFavoriteUpdate"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 167
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$6;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$6;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getFavoriteUpdate(Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 183
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getLabelList(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getLabelList"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 397
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$16;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/engine/EngineManager$16;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getLabelList(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 413
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getSceneDetail(Lcom/geely/lib/cloud/engine/bean/SceneCodeParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sceneCodeParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getSceneDetail"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 121
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$4;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$4;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getSceneDetail(Lcom/geely/lib/cloud/engine/bean/SceneCodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getSceneList(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getVehicleCloudUpdateReport"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$3;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/engine/EngineManager$3;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getSceneList(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 114
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getTheme(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getTheme"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 463
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$19;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/engine/EngineManager$19;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getTheme(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 479
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getVehicleCloudCheckUpdate(Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "checkUpdateParam",
            "callback"
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getVehicleCloudCheckUpdate"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$1;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getVehicleCloudCheckUpdate(Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getVehicleCloudUpdateReport(Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "updateReportParam",
            "callback"
        }
    .end annotation

    const-string v0, "EngineManager"

    const-string v1, "getVehicleCloudUpdateReport"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Lcom/geely/lib/cloud/engine/EngineManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/engine/EngineManager$2;-><init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/engine/IEngine;->getVehicleCloudUpdateReport(Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

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

    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/engine/IEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/engine/EngineManager;->mService:Lcom/geely/lib/cloud/engine/IEngine;

    :cond_0
    return-void
.end method
