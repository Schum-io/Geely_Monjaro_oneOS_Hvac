.class public interface abstract Lcom/geely/lib/oneosapi/appstore/IAppStoreTaskCallback;
.super Ljava/lang/Object;
.source "IAppStoreTaskCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/appstore/IAppStoreTaskCallback$Stub;,
        Lcom/geely/lib/oneosapi/appstore/IAppStoreTaskCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAppTaskExecutionStatusChanged(Lcom/geely/lib/oneosapi/appstore/bean/AppStoreTaskInfo;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskInfoList",
            "stastus"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAppTaskOperationStatusChanged(Lcom/geely/lib/oneosapi/appstore/bean/AppStoreTaskInfo;IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskInfoList",
            "type",
            "isSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
