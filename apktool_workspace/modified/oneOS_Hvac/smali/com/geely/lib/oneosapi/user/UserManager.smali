.class public Lcom/geely/lib/oneosapi/user/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/user/UserManager$LaunchLoginResultCallback;,
        Lcom/geely/lib/oneosapi/user/UserManager$ThirdAppAuthCallback;,
        Lcom/geely/lib/oneosapi/user/UserManager$AutoAccountInfo;,
        Lcom/geely/lib/oneosapi/user/UserManager$AuthorizeCallback;,
        Lcom/geely/lib/oneosapi/user/UserManager$FeedbackListener;,
        Lcom/geely/lib/oneosapi/user/UserManager$ScanQRCodeListener;,
        Lcom/geely/lib/oneosapi/user/UserManager$BaseLoginCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/oneosapi/user/IUserService;


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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/geely/lib/oneosapi/user/IUserService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/IUserService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

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
.method public deleteHistoricalAccountInfo(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "isClearData"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->deleteHistoricalAccountInfo(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string p2, "deleteHistoricalAccountInfo: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public fastLogin(Lcom/geely/lib/oneosapi/user/bean/UserInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->fastLogin(Lcom/geely/lib/oneosapi/user/bean/UserInfo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "fastLogin: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->getAccessToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "getAccessToken: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountInfo()Lcom/geely/lib/oneosapi/user/bean/AccountInfo;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->getAccountInfo()Lcom/geely/lib/oneosapi/user/bean/AccountInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "getAccountInfo: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommonData(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->getCommonData(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "getCommonData: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentUserProfile()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->getCurrentUserProfile()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "getCurrentUserProfile: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "M1"

    return-object v0
.end method

.method public getEmergencyMobile()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->getEmergencyMobile()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "setEmergencyMobile: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHistoricalAccountInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/user/bean/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->getHistoricalAccountInfo()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "getHistoricalAccountInfo: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginQrcode(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/UserManager$ScanQRCodeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "symbol",
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->getLoginQrcode(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/IScanQRCodeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "UserManager"

    const-string p2, "getLoginQrcode: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getLoginUser()Lcom/geely/lib/oneosapi/user/bean/UserInfo;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->getLoginUser()Lcom/geely/lib/oneosapi/user/bean/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "getLoginUser: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPolicyContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "docType",
            "docVersion"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->getPolicyContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string p2, "getPolicyContent: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSourceAccountInfo()Lcom/geely/lib/oneosapi/user/bean/SourceAccountInfo;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->getSourceAccountInfo()Lcom/geely/lib/oneosapi/user/bean/SourceAccountInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "getSourceAccountInfo: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->getToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "getToken: "

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAuthorizationStatus(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/UserManager$AuthorizeCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brandCode",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->getUserAuthorizationStatus(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/IAuthorizeCallback;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string p2, "getUserAuthorizationStatus: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getUserProfileName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->getUserProfileName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "getUserProfileName: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public hasLogin()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->hasLogin()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "hasLogin: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public hideBackView()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->hideBackView()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "hideBackView: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isAutoAccountAuthorized(Lcom/geely/lib/oneosapi/user/UserManager$AuthorizeCallback;)Z
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->isAutoAccountAuthorized(Lcom/geely/lib/oneosapi/user/IAuthorizeCallback;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "isAutoAccountAuthorized: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public isBackShow()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->isBackShow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "isBackShow: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isConnectService()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isThirdAppAuthorized(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/UserManager$ThirdAppAuthCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brandCode",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->isThirdAppAuthorized(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/IThirdAppAuthCallback;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string p2, "isThirdAppAuthorized: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public launchLogin()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->launchLogin()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "launchLogin: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public launchLoginForResult(Ljava/lang/String;ILcom/geely/lib/oneosapi/user/UserManager$LaunchLoginResultCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "requestCode",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1, p2, p3}, Lcom/geely/lib/oneosapi/user/IUserService;->launchLoginForResult(Ljava/lang/String;ILcom/geely/lib/oneosapi/user/ILaunchLoginResultCallback;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string p2, "launchLoginForResult: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public launchLoginWithParam(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "appName",
            "isBack"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1, p2, p3}, Lcom/geely/lib/oneosapi/user/IUserService;->launchLoginWithParam(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p1, "UserManager"

    const-string p2, "launchLoginWithParam: service is not alive"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public launchToFeedbackContent(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBack"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->launchToFeedbackContent(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "launchToUserFeedback: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public launchToLogin(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBack"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->launchToLogin(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "launchToLogin: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public launchToUserFeedback(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBack"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->launchToUserFeedback(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "launchToUserFeedback: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public login(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->login(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "login: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public logout()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->logout()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "logout: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public notifyTokenExpired()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->notifyTokenExpired()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "notifyTokenExpired: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public refreshToken()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->refreshToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "refreshToken: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public refreshUserInfo()Lcom/geely/lib/oneosapi/user/bean/UserInfo;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->refreshUserInfo()Lcom/geely/lib/oneosapi/user/bean/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "refreshUserInfo: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public restartRecognition()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->restartRecognition()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "restartRecognition: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public saveUserProfile(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userProfile"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->saveUserProfile(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string/jumbo v0, "userProfile: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public sendAutoAccountInfo(Lcom/geely/lib/oneosapi/user/UserManager$AutoAccountInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "AutoAccountInfo"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->sendAutoAccountInfo(Lcom/geely/lib/oneosapi/user/IAutoAccountInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "UserManager"

    const-string v0, "sendAutoAccountInfo: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCommonData(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->setCommonData(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string p2, "setCommonData: service is not alive"

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentUserProfile(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentProfile"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->setCurrentUserProfile(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "setCurrentUserProfile: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setEmergencyMobile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobile"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->setEmergencyMobile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "UserManager"

    const-string v0, "setEmergencyMobile: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLoginCallback(Lcom/geely/lib/oneosapi/user/UserManager$BaseLoginCallBack;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoginCallback getCallingPid\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->setLoginCallback(Lcom/geely/lib/oneosapi/user/ILoginCallback;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "setLoginCallback: service is not alive"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
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

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/user/IUserService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/IUserService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    :cond_0
    return-void
.end method

.method public showBackView()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->showBackView()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "showBackView: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public startRecognition()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/user/IUserService;->startRecognition()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "UserManager"

    const-string v1, "startRecognition: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public submitFeedback(Lcom/geely/lib/oneosapi/user/UserManager$FeedbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->submitFeedback(Lcom/geely/lib/oneosapi/user/IFeedbackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "submitFeedback: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterLoginCallback(Lcom/geely/lib/oneosapi/user/UserManager$BaseLoginCallBack;)Z
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/user/UserManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/user/UserManager;->mService:Lcom/geely/lib/oneosapi/user/IUserService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->unregisterLoginCallback(Lcom/geely/lib/oneosapi/user/ILoginCallback;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, "UserManager"

    const-string v0, "unregisterLoginCallback: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
