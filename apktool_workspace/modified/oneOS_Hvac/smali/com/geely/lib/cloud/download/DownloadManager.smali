.class public Lcom/geely/lib/cloud/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/download/IDownload;


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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DownloadManager"

    const-string v1, "DownloadManager create"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iput-object p1, p0, Lcom/geely/lib/cloud/download/DownloadManager;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {p2}, Lcom/geely/lib/cloud/download/IDownload$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/download/IDownload;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/download/DownloadManager;->mService:Lcom/geely/lib/cloud/download/IDownload;

    return-void
.end method


# virtual methods
.method public getDownloadFile(Lcom/geely/lib/cloud/download/bean/TaskEntity;Lcom/geely/lib/cloud/IDownloadCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "taskEntity",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "DownloadManager"

    const-string v1, "getDownloadFile"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v1, p0, Lcom/geely/lib/cloud/download/DownloadManager;->mService:Lcom/geely/lib/cloud/download/IDownload;

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1, p1, p2}, Lcom/geely/lib/cloud/download/IDownload;->getDownloadFile(Lcom/geely/lib/cloud/download/bean/TaskEntity;Lcom/geely/lib/cloud/IDownloadCallBack;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 37
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

    const-string v0, "DownloadManager"

    const-string v1, "DownloadManager setService"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 28
    invoke-static {p1}, Lcom/geely/lib/cloud/download/IDownload$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/download/IDownload;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/download/DownloadManager;->mService:Lcom/geely/lib/cloud/download/IDownload;

    :cond_0
    return-void
.end method
