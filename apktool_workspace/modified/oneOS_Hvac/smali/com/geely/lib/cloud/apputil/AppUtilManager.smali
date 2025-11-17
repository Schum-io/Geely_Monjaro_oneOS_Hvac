.class public Lcom/geely/lib/cloud/apputil/AppUtilManager;
.super Ljava/lang/Object;
.source "AppUtilManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppUtilManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIhu:Ljava/lang/String;

.field private mService:Lcom/geely/lib/cloud/apputil/IAppUtil;

.field private mVin:Ljava/lang/String;


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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mVin:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mIhu:Ljava/lang/String;

    const-string v0, "AppUtilManager"

    const-string v1, "AppUtilManager create"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p2}, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/apputil/IAppUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mService:Lcom/geely/lib/cloud/apputil/IAppUtil;

    return-void
.end method


# virtual methods
.method public getAllData(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "screen",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppUtilManager"

    const-string v1, "getAllData"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mService:Lcom/geely/lib/cloud/apputil/IAppUtil;

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Lcom/geely/lib/cloud/apputil/AppUtilManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/apputil/AppUtilManager$2;-><init>(Lcom/geely/lib/cloud/apputil/AppUtilManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/apputil/IAppUtil;->getAllData(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getIhuCode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppUtilManager"

    const-string v1, "getIhuCode"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mService:Lcom/geely/lib/cloud/apputil/IAppUtil;

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v1}, Lcom/geely/lib/cloud/apputil/IAppUtil;->getIhuCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mIhu:Ljava/lang/String;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ihu : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mIhu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "mService = null"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mIhu:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageByPackage(Lcom/geely/lib/cloud/apputil/bean/MessageParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppUtilManager"

    const-string v1, "getMessageByPackage"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mService:Lcom/geely/lib/cloud/apputil/IAppUtil;

    if-eqz v1, :cond_0

    .line 48
    new-instance v0, Lcom/geely/lib/cloud/apputil/AppUtilManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/apputil/AppUtilManager$1;-><init>(Lcom/geely/lib/cloud/apputil/AppUtilManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/apputil/IAppUtil;->getMessageByPackage(Lcom/geely/lib/cloud/apputil/bean/MessageParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 65
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getNewAllData(Lcom/geely/lib/cloud/apputil/bean/AllDataParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "allDataParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppUtilManager"

    const-string v1, "getNewAllData"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mService:Lcom/geely/lib/cloud/apputil/IAppUtil;

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Lcom/geely/lib/cloud/apputil/AppUtilManager$3;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/apputil/AppUtilManager$3;-><init>(Lcom/geely/lib/cloud/apputil/AppUtilManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/apputil/IAppUtil;->getNewAllData(Lcom/geely/lib/cloud/apputil/bean/AllDataParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 126
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getVinCode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AppUtilManager"

    const-string v1, "getVinCode"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mService:Lcom/geely/lib/cloud/apputil/IAppUtil;

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v1}, Lcom/geely/lib/cloud/apputil/IAppUtil;->getVinCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mVin:Ljava/lang/String;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "mService = null"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mVin:Ljava/lang/String;

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

    const-string v0, "AppUtilManager"

    const-string v1, "AppUtilManager setService"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Lcom/geely/lib/cloud/apputil/IAppUtil$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/apputil/IAppUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/apputil/AppUtilManager;->mService:Lcom/geely/lib/cloud/apputil/IAppUtil;

    :cond_0
    return-void
.end method
