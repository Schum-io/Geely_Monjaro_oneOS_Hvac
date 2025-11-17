.class public Lcom/geely/lib/cloud/download/IDownload$Default;
.super Ljava/lang/Object;
.source "IDownload.java"

# interfaces
.implements Lcom/geely/lib/cloud/download/IDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/download/IDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadFile(Lcom/geely/lib/cloud/download/bean/TaskEntity;Lcom/geely/lib/cloud/IDownloadCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    return-void
.end method
