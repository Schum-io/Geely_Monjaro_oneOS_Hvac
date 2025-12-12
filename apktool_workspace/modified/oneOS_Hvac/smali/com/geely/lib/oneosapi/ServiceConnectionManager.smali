.class public Lcom/geely/lib/oneosapi/ServiceConnectionManager;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;,
        Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;,
        Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.geely.service.oneosapi.OneOSApiService"

.field private static final MSG_BIND_SERVICE:I = 0x64

.field private static final MSG_DISCONNECT_BIND_SERVICE:I = 0x66

.field private static final MSG_RETRY_BIND_SERVICE:I = 0x65

.field private static final MSG_SERVICE_ALREADY_CONNECTED:I = 0x67

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.geely.service.oneosapi"

.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ServiceConnection"

.field private static final TIME_DISCONNECT_BIND_SERVICE:I = 0xbb8

.field private static final TIME_RETRY_BIND_SERVICE:I = 0x7d0


# instance fields
.field private apiConnectCallBack:Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

.field private mBinderResult:Z

.field private mConnectionState:I

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceManager:Lcom/geely/lib/oneosapi/IServiceManager;

.field private mServiceManagerCallback:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    .line 150
    new-instance v0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;-><init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 151
    iput-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mContext:Landroid/content/Context;

    .line 152
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;-><init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Landroid/os/Looper;Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    :cond_0
    return-void
.end method

.method public static synthetic access$100(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/IServiceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceManager:Lcom/geely/lib/oneosapi/IServiceManager;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->reBindService()V

    return-void
.end method

.method public static synthetic access$102(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Lcom/geely/lib/oneosapi/IServiceManager;)Lcom/geely/lib/oneosapi/IServiceManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceManager:Lcom/geely/lib/oneosapi/IServiceManager;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->handleServiceAlreadyConnected(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mConnectionState:I

    return p0
.end method

.method public static synthetic access$202(Lcom/geely/lib/oneosapi/ServiceConnectionManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mConnectionState:I

    return p1
.end method

.method public static synthetic access$300(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->updateServiceConnectionChangedCallback(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceManagerCallback:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceManagerCallback:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->apiConnectCallBack:Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->disconnect()V

    return-void
.end method

.method public static synthetic access$900(Lcom/geely/lib/oneosapi/ServiceConnectionManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->updateServiceBinderUpdatedCallback(I)V

    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mConnectionState:I

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mConnectionState:I

    return-void
.end method

.method private handleServiceAlreadyConnected(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;->onServiceConnectionChanged(Z)V

    :cond_0
    return-void
.end method

.method private reBindService()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mConnectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->bindService()V

    :cond_0
    return-void
.end method

.method private updateServiceBinderUpdatedCallback(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binderType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    monitor-enter v0

    const-string v1, "ServiceConnection"

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateServiceBinderUpdatedCallback--binderType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;->onServiceBinderUpdated(I)V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateServiceConnectionChangedCallback(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    monitor-enter v0

    const-string v1, "ServiceConnection"

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateServiceConnectionChangedCallback--binderState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;->onServiceConnectionChanged(Z)V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.geely.service.oneosapi"

    const-string v2, "com.geely.service.oneosapi.OneOSApiService"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mBinderResult:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService  PackageName:com.geely.service.oneosapi,mBinderResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mBinderResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mBinderResult:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public connect()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect mBinderResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mBinderResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mBinderResult:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->apiConnectCallBack:Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;->success()V

    :cond_2
    :goto_0
    return-void
.end method

.method public connect(Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectCallBack"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectCallBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->apiConnectCallBack:Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

    .line 12
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->connect()V

    return-void
.end method

.method public getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceManager:Lcom/geely/lib/oneosapi/IServiceManager;

    return-object v0
.end method

.method public isServiceBound()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public registerServiceConnectionListener(Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string v1, "ServiceConnection"

    .line 3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServiceConnectionListener add listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "ServiceConnection"

    const-string v2, "destroy listener"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->unBindService()V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unBindService()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mBinderResult:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceManagerCallback:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceManager:Lcom/geely/lib/oneosapi/IServiceManager;

    invoke-interface {v1, v0}, Lcom/geely/lib/oneosapi/IServiceManager;->unregisterCallback(Lcom/geely/lib/oneosapi/IServiceManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mConnectionState:I

    .line 11
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mBinderResult:Z

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mHandler:Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public unregisterServiceConnectionListener(Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    monitor-enter v0

    const-string v1, "ServiceConnection"

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeServiceConnectionListener listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
