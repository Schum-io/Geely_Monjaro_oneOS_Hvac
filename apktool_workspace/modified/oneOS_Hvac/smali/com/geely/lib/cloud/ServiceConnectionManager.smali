.class Lcom/geely/lib/cloud/ServiceConnectionManager;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;,
        Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.geely.service.cloud.CloudService"

.field private static final MSG_BIND_SERVICE:I = 0x64

.field private static final MSG_DISCONNECT_BIND_SERVICE:I = 0x66

.field private static final MSG_RETRY_BIND_SERVICE:I = 0x65

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.geely.service.cloud"

.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ServiceConnectionManager"

.field private static final TIME_DISCONNECT_BIND_SERVICE:I = 0xbb8

.field private static final TIME_RETRY_BIND_SERVICE:I = 0x7d0


# instance fields
.field private mBinderResult:Z

.field private mConnectionState:I

.field private final mContext:Landroid/content/Context;

.field private mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/listener/ServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceManager:Lcom/geely/lib/cloud/IServiceManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    .line 171
    new-instance v0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/ServiceConnectionManager$1;-><init>(Lcom/geely/lib/cloud/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 44
    iput-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;-><init>(Lcom/geely/lib/cloud/ServiceConnectionManager;Landroid/os/Looper;Lcom/geely/lib/cloud/ServiceConnectionManager$1;)V

    iput-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    :cond_0
    return-void
.end method

.method static synthetic access$102(Lcom/geely/lib/cloud/ServiceConnectionManager;Lcom/geely/lib/cloud/IServiceManager;)Lcom/geely/lib/cloud/IServiceManager;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceManager:Lcom/geely/lib/cloud/IServiceManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/geely/lib/cloud/ServiceConnectionManager;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mConnectionState:I

    return p0
.end method

.method static synthetic access$202(Lcom/geely/lib/cloud/ServiceConnectionManager;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mConnectionState:I

    return p1
.end method

.method static synthetic access$300(Lcom/geely/lib/cloud/ServiceConnectionManager;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->updateServiceConnectionChangedCallback(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/geely/lib/cloud/ServiceConnectionManager;)Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/geely/lib/cloud/ServiceConnectionManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->disconnect()V

    return-void
.end method

.method static synthetic access$600(Lcom/geely/lib/cloud/ServiceConnectionManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->reBindService()V

    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 148
    iget v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mConnectionState:I

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const-string v0, "ServiceConnectionManager"

    const-string v1, "disconnect"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mConnectionState:I

    return-void
.end method

.method private reBindService()V
    .locals 2

    .line 142
    iget v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mConnectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->bindService()V

    :cond_0
    return-void
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

    .line 159
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    const-string v1, "ServiceConnectionManager"

    .line 160
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

    .line 161
    iget-object v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/cloud/listener/ServiceConnectionListener;

    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v2, p1}, Lcom/geely/lib/cloud/listener/ServiceConnectionListener;->onServiceConnectionChanged(Z)V

    goto :goto_0

    .line 168
    :cond_1
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
.method bindService()V
    .locals 4

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.geely.service.cloud"

    const-string v2, "com.geely.service.cloud.CloudService"

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 114
    iget-object v2, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mBinderResult:Z

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mBinderResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnectionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mBinderResult:Z

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    invoke-virtual {v0, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->removeMessages(I)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method connect()V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mBinderResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnectionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mBinderResult:Z

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    invoke-virtual {v0, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->removeMessages(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    invoke-virtual {v0, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->updateServiceConnectionChangedCallback(Z)V

    :goto_0
    return-void
.end method

.method getServiceManager()Lcom/geely/lib/cloud/IServiceManager;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceManager:Lcom/geely/lib/cloud/IServiceManager;

    return-object v0
.end method

.method isServiceBound()Z
    .locals 2

    .line 51
    iget v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method registerServiceConnectionListener(Lcom/geely/lib/cloud/listener/ServiceConnectionListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "ServiceConnectionManager"

    .line 69
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

    .line 70
    iget-object v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
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

.method release()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "ServiceConnectionManager"

    const-string v2, "destroy listener"

    .line 103
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 106
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->unBindService()V

    return-void

    :catchall_0
    move-exception v1

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method unBindService()V
    .locals 2

    .line 126
    iget v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mBinderResult:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "ServiceConnectionManager"

    const-string v1, "unBindService"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mConnectionState:I

    .line 130
    iput-boolean v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mBinderResult:Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mRetryHandler:Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method unregisterServiceConnectionListener(Lcom/geely/lib/cloud/listener/ServiceConnectionListener;)V
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

    .line 93
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    const-string v1, "ServiceConnectionManager"

    .line 94
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

    .line 95
    iget-object v1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager;->mServiceListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
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
