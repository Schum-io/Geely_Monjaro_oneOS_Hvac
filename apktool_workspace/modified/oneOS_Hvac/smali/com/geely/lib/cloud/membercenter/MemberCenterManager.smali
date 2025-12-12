.class public Lcom/geely/lib/cloud/membercenter/MemberCenterManager;
.super Ljava/lang/Object;
.source "MemberCenterManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "MemberCenterManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/membercenter/IMemberCenter;


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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MemberCenterManager"

    const-string v1, "MemberCenterManager create"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p2}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;->mService:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    return-void
.end method


# virtual methods
.method public getLoginInfo(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MemberCenterManager"

    :try_start_0
    const-string v1, "getLoginInfo"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;->mService:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$3;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$3;-><init>(Lcom/geely/lib/cloud/membercenter/MemberCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->getLoginInfo(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 127
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getLoginQrCode(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MemberCenterManager"

    :try_start_0
    const-string v1, "getLoginQrCode"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;->mService:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$1;-><init>(Lcom/geely/lib/cloud/membercenter/MemberCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->getLoginQrCode(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getLoginQrCodeStatus(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MemberCenterManager"

    :try_start_0
    const-string v1, "getLoginQrCodeStatus"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;->mService:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$2;-><init>(Lcom/geely/lib/cloud/membercenter/MemberCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->getLoginQrCodeStatus(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 93
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public logout(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "accessToken",
            "refreshToken",
            "callback"
        }
    .end annotation

    const-string v0, "MemberCenterManager"

    :try_start_0
    const-string v1, "logout"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;->mService:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$5;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$5;-><init>(Lcom/geely/lib/cloud/membercenter/MemberCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->logout(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 197
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public refreshToken(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "accessToken",
            "refreshToken",
            "callback"
        }
    .end annotation

    const-string v0, "MemberCenterManager"

    :try_start_0
    const-string v1, "refreshToken"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;->mService:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessToken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;->mService:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    new-instance v1, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$4;

    invoke-direct {v1, p0, p3}, Lcom/geely/lib/cloud/membercenter/MemberCenterManager$4;-><init>(Lcom/geely/lib/cloud/membercenter/MemberCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/geely/lib/cloud/membercenter/IMemberCenter;->refreshToken(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 163
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

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

    const-string v0, "MemberCenterManager"

    const-string v1, "MemberCenterManager setService"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 29
    invoke-static {p1}, Lcom/geely/lib/cloud/membercenter/IMemberCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;->mService:Lcom/geely/lib/cloud/membercenter/IMemberCenter;

    :cond_0
    return-void
.end method
