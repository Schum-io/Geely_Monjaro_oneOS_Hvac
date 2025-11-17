.class public Lcom/geely/lib/cloud/assistant/AssistantManager;
.super Ljava/lang/Object;
.source "AssistantManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AssistantManager"


# instance fields
.field private mService:Lcom/geely/lib/cloud/assistant/IAssistant;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 1
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

    const-string p1, "AssistantManager"

    const-string v0, "AssistantManager create"

    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p2}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/assistant/AssistantManager;->mService:Lcom/geely/lib/cloud/assistant/IAssistant;

    return-void
.end method


# virtual methods
.method public getDrivingPositions(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "startTime",
            "endTime",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AssistantManager"

    const-string v1, "getDrivingPositions"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/geely/lib/cloud/assistant/AssistantManager;->mService:Lcom/geely/lib/cloud/assistant/IAssistant;

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Lcom/geely/lib/cloud/assistant/AssistantManager$4;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/assistant/AssistantManager$4;-><init>(Lcom/geely/lib/cloud/assistant/AssistantManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/assistant/IAssistant;->getDrivingPositions(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 121
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getModel1001(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AssistantManager"

    const-string v1, "getModel1001"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/geely/lib/cloud/assistant/AssistantManager;->mService:Lcom/geely/lib/cloud/assistant/IAssistant;

    if-eqz v1, :cond_0

    .line 58
    new-instance v0, Lcom/geely/lib/cloud/assistant/AssistantManager$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/assistant/AssistantManager$2;-><init>(Lcom/geely/lib/cloud/assistant/AssistantManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/assistant/IAssistant;->getModel1001(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 75
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getModel1002(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AssistantManager"

    const-string v1, "getModel1002"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/geely/lib/cloud/assistant/AssistantManager;->mService:Lcom/geely/lib/cloud/assistant/IAssistant;

    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Lcom/geely/lib/cloud/assistant/AssistantManager$3;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/assistant/AssistantManager$3;-><init>(Lcom/geely/lib/cloud/assistant/AssistantManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/assistant/IAssistant;->getModel1002(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 98
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getModelList(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AssistantManager"

    const-string v1, "getModelList"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v1, p0, Lcom/geely/lib/cloud/assistant/AssistantManager;->mService:Lcom/geely/lib/cloud/assistant/IAssistant;

    if-eqz v1, :cond_0

    .line 35
    new-instance v0, Lcom/geely/lib/cloud/assistant/AssistantManager$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/assistant/AssistantManager$1;-><init>(Lcom/geely/lib/cloud/assistant/AssistantManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/assistant/IAssistant;->getModelList(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 52
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

    const-string v0, "AssistantManager"

    const-string v1, "AssistantManager setService"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 28
    invoke-static {p1}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/assistant/AssistantManager;->mService:Lcom/geely/lib/cloud/assistant/IAssistant;

    :cond_0
    return-void
.end method
