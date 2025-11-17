.class public interface abstract Lcom/geely/lib/cloud/download/IDownload;
.super Ljava/lang/Object;
.source "IDownload.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/download/IDownload$Stub;,
        Lcom/geely/lib/cloud/download/IDownload$Default;
    }
.end annotation


# virtual methods
.method public abstract getDownloadFile(Lcom/geely/lib/cloud/download/bean/TaskEntity;Lcom/geely/lib/cloud/IDownloadCallBack;)V
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
.end method
