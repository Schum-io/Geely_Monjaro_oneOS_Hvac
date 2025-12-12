.class public Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;
.super Ljava/lang/Object;
.source "CsdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager$CsdRecCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CsdManager"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mService:Lcom/geely/lib/oneosapi/recommendation/ICsdManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/recommendation/ICsdManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "service"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;->mService:Lcom/geely/lib/oneosapi/recommendation/ICsdManager;

    return-void
.end method


# virtual methods
.method public getCsdPullInfo(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOpen"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCsdPullInfo ICsdManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;->mService:Lcom/geely/lib/oneosapi/recommendation/ICsdManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CsdManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;->mService:Lcom/geely/lib/oneosapi/recommendation/ICsdManager;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/recommendation/ICsdManager;->getCsdPullInfos(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCsdRecInfo()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCsdRecInfo ICsdManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;->mService:Lcom/geely/lib/oneosapi/recommendation/ICsdManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CsdManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;->mService:Lcom/geely/lib/oneosapi/recommendation/ICsdManager;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/recommendation/ICsdManager;->getCsdRecInfos()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public subscribeCsdRecCallback(Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager$CsdRecCallback;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;->mService:Lcom/geely/lib/oneosapi/recommendation/ICsdManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/recommendation/ICsdManager;->subscribeCsdRecCallback(Lcom/geely/lib/oneosapi/recommendation/callback/ICsdRecCallback;)Z
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

.method public unSubscribeCsdRecCallback(Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager$CsdRecCallback;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/manager/CsdManager;->mService:Lcom/geely/lib/oneosapi/recommendation/ICsdManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/recommendation/ICsdManager;->unSubscribeCsdRecCallback(Lcom/geely/lib/oneosapi/recommendation/callback/ICsdRecCallback;)Z
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
