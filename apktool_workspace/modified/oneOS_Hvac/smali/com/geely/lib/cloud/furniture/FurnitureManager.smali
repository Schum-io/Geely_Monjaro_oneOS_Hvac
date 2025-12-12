.class public Lcom/geely/lib/cloud/furniture/FurnitureManager;
.super Ljava/lang/Object;
.source "FurnitureManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "FurnitureManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/furniture/IFurniture;


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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p2}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mService:Lcom/geely/lib/cloud/furniture/IFurniture;

    return-void
.end method


# virtual methods
.method public getJDAuthInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "terminalId",
            "userQrcode",
            "callback"
        }
    .end annotation

    const-string v0, "FurnitureManager"

    const-string v1, "getJDAuthInfo"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mService:Lcom/geely/lib/cloud/furniture/IFurniture;

    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Lcom/geely/lib/cloud/furniture/FurnitureManager$6;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/furniture/FurnitureManager$6;-><init>(Lcom/geely/lib/cloud/furniture/FurnitureManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/furniture/IFurniture;->getJDAuthInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 200
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getJDLoginQrcode(Lcom/geely/lib/cloud/furniture/bean/JDQrcodeParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "jdQrcodeParam",
            "callback"
        }
    .end annotation

    const-string v0, "FurnitureManager"

    const-string v1, "getJDLoginQrcode"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mService:Lcom/geely/lib/cloud/furniture/IFurniture;

    if-eqz v1, :cond_0

    .line 154
    new-instance v0, Lcom/geely/lib/cloud/furniture/FurnitureManager$5;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/furniture/FurnitureManager$5;-><init>(Lcom/geely/lib/cloud/furniture/FurnitureManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/furniture/IFurniture;->getJDLoginQrcode(Lcom/geely/lib/cloud/furniture/bean/JDQrcodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 171
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getJDUnboundAccount(Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "jdAccountParam",
            "callback"
        }
    .end annotation

    const-string v0, "FurnitureManager"

    const-string v1, "getJDUnboundAccount"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mService:Lcom/geely/lib/cloud/furniture/IFurniture;

    if-eqz v1, :cond_0

    .line 212
    new-instance v0, Lcom/geely/lib/cloud/furniture/FurnitureManager$7;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/furniture/FurnitureManager$7;-><init>(Lcom/geely/lib/cloud/furniture/FurnitureManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/furniture/IFurniture;->getJDUnboundAccount(Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 229
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getSmartHomeCardList(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "terminalId",
            "callback"
        }
    .end annotation

    const-string v0, "FurnitureManager"

    const-string v1, "getSmartHomeCardList"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mService:Lcom/geely/lib/cloud/furniture/IFurniture;

    if-eqz v1, :cond_0

    .line 41
    new-instance v0, Lcom/geely/lib/cloud/furniture/FurnitureManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/furniture/FurnitureManager$1;-><init>(Lcom/geely/lib/cloud/furniture/FurnitureManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/furniture/IFurniture;->getSmartHomeCardList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getSmartHomeDeviceControl(Lcom/geely/lib/cloud/furniture/bean/DeviceParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "deviceParam",
            "callback"
        }
    .end annotation

    const-string v0, "FurnitureManager"

    const-string v1, "getSmartHomeDeviceControl"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mService:Lcom/geely/lib/cloud/furniture/IFurniture;

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Lcom/geely/lib/cloud/furniture/FurnitureManager$4;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/furniture/FurnitureManager$4;-><init>(Lcom/geely/lib/cloud/furniture/FurnitureManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/furniture/IFurniture;->getSmartHomeDeviceControl(Lcom/geely/lib/cloud/furniture/bean/DeviceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 142
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getSmartHomeSceneAction(Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sceneActionParam",
            "callback"
        }
    .end annotation

    const-string v0, "FurnitureManager"

    const-string v1, "getSmartHomeSceneAction"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mService:Lcom/geely/lib/cloud/furniture/IFurniture;

    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Lcom/geely/lib/cloud/furniture/FurnitureManager$3;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/furniture/FurnitureManager$3;-><init>(Lcom/geely/lib/cloud/furniture/FurnitureManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/furniture/IFurniture;->getSmartHomeSceneAction(Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 114
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getSmartHomeSceneList(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "terminalId",
            "callback"
        }
    .end annotation

    const-string v0, "FurnitureManager"

    const-string v1, "getSmartHomeSceneList"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mService:Lcom/geely/lib/cloud/furniture/IFurniture;

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Lcom/geely/lib/cloud/furniture/FurnitureManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/furniture/FurnitureManager$2;-><init>(Lcom/geely/lib/cloud/furniture/FurnitureManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/furniture/IFurniture;->getSmartHomeSceneList(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 86
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
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

    .line 33
    invoke-static {p1}, Lcom/geely/lib/cloud/furniture/IFurniture$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/furniture/IFurniture;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/FurnitureManager;->mService:Lcom/geely/lib/cloud/furniture/IFurniture;

    :cond_0
    return-void
.end method
