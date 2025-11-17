.class public Lcom/geely/lib/cloud/feedback/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedbackManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/feedback/IFeedback;


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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p2}, Lcom/geely/lib/cloud/feedback/IFeedback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/feedback/IFeedback;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/FeedbackManager;->mService:Lcom/geely/lib/cloud/feedback/IFeedback;

    return-void
.end method


# virtual methods
.method public getWorkOrderList(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "classifyID",
            "vin",
            "callback"
        }
    .end annotation

    const-string v0, "FeedbackManager"

    const-string v1, "getWorkOrderList"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/feedback/FeedbackManager;->mService:Lcom/geely/lib/cloud/feedback/IFeedback;

    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Lcom/geely/lib/cloud/feedback/FeedbackManager$1;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/feedback/FeedbackManager$1;-><init>(Lcom/geely/lib/cloud/feedback/FeedbackManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/feedback/IFeedback;->getWorkOrderList(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getWorkOrderPost(Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "workOrderPostParam",
            "callback"
        }
    .end annotation

    const-string v0, "FeedbackManager"

    const-string v1, "getWorkOrderPost"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/feedback/FeedbackManager;->mService:Lcom/geely/lib/cloud/feedback/IFeedback;

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Lcom/geely/lib/cloud/feedback/FeedbackManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/feedback/FeedbackManager$2;-><init>(Lcom/geely/lib/cloud/feedback/FeedbackManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/feedback/IFeedback;->getWorkOrderPost(Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
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

    .line 29
    invoke-static {p1}, Lcom/geely/lib/cloud/feedback/IFeedback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/feedback/IFeedback;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/FeedbackManager;->mService:Lcom/geely/lib/cloud/feedback/IFeedback;

    :cond_0
    return-void
.end method
