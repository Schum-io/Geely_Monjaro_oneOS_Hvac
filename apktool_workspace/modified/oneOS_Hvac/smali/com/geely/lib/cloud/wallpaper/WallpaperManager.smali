.class public Lcom/geely/lib/cloud/wallpaper/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperManager"


# instance fields
.field private mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;


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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p2}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;->mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    return-void
.end method


# virtual methods
.method public getQueryList(Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "queryListParam",
            "callback"
        }
    .end annotation

    const-string v0, "WallpaperManager"

    const-string v1, "getQueryList"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;->mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    if-eqz v1, :cond_0

    .line 35
    new-instance v0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$1;-><init>(Lcom/geely/lib/cloud/wallpaper/WallpaperManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/wallpaper/IWallpaper;->getQueryList(Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getQueryOne(Lcom/geely/lib/cloud/wallpaper/bean/QueryOneParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "queryOneParam",
            "callback"
        }
    .end annotation

    const-string v0, "WallpaperManager"

    const-string v1, "getQueryOne"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;->mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$2;-><init>(Lcom/geely/lib/cloud/wallpaper/WallpaperManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/wallpaper/IWallpaper;->getQueryOne(Lcom/geely/lib/cloud/wallpaper/bean/QueryOneParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getStsAccess(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "sysKey",
            "callback"
        }
    .end annotation

    const-string v0, "WallpaperManager"

    const-string v1, "getStsAccess"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;->mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$6;

    invoke-direct {v1, p0, p2}, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$6;-><init>(Lcom/geely/lib/cloud/wallpaper/WallpaperManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/geely/lib/cloud/wallpaper/IWallpaper;->getStsAccess(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService == null"

    .line 189
    invoke-interface {p2, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public postStsSave(Lcom/geely/lib/cloud/wallpaper/bean/StsSaveParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "stsSaveParam",
            "callback"
        }
    .end annotation

    const-string v0, "WallpaperManager"

    const-string v1, "postStsSave"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;->mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    if-eqz v0, :cond_0

    .line 199
    new-instance v1, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$7;

    invoke-direct {v1, p0, p2}, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$7;-><init>(Lcom/geely/lib/cloud/wallpaper/WallpaperManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/geely/lib/cloud/wallpaper/IWallpaper;->postStsSave(Lcom/geely/lib/cloud/wallpaper/bean/StsSaveParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService == null"

    .line 216
    invoke-interface {p2, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V

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

    .line 26
    invoke-static {p1}, Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;->mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    :cond_0
    return-void
.end method

.method public userFaceAdd(Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "faceParam",
            "callback"
        }
    .end annotation

    const-string v0, "WallpaperManager"

    const-string/jumbo v1, "userFaceAdd"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;->mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    if-eqz v1, :cond_0

    .line 118
    new-instance v0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$4;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$4;-><init>(Lcom/geely/lib/cloud/wallpaper/WallpaperManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/wallpaper/IWallpaper;->userFaceAdd(Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 135
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public userFaceRemove(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "userId",
            "faceId",
            "callback"
        }
    .end annotation

    const-string v0, "WallpaperManager"

    const-string v1, "getQueryOne"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;->mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    if-eqz v1, :cond_0

    .line 145
    new-instance v0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$5;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$5;-><init>(Lcom/geely/lib/cloud/wallpaper/WallpaperManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/wallpaper/IWallpaper;->userFaceRemove(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 162
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public userFaceShow(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "userId",
            "callback"
        }
    .end annotation

    const-string v0, "WallpaperManager"

    const-string/jumbo v1, "userFaceShow"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;->mService:Lcom/geely/lib/cloud/wallpaper/IWallpaper;

    if-eqz v1, :cond_0

    .line 91
    new-instance v0, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$3;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/wallpaper/WallpaperManager$3;-><init>(Lcom/geely/lib/cloud/wallpaper/WallpaperManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/wallpaper/IWallpaper;->userFaceShow(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
