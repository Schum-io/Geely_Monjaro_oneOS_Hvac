.class public Lcom/geely/lib/oneosapi/navi/NaviManager$3;
.super Lcom/geely/lib/oneosapi/navi/IServerCallback$Stub;
.source "NaviManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/NaviManager;->connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

.field public final synthetic val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$naviAPICallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/IServerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1000(Lcom/geely/lib/oneosapi/navi/NaviManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initFailed(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1500(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNaviServer---->initFailed(),errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " packageName= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NaviManager"

    invoke-virtual {v0, v1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p2}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1200(Lcom/geely/lib/oneosapi/navi/NaviManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1402(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/INaviServer;)Lcom/geely/lib/oneosapi/navi/INaviServer;

    const v0, 0x186a2

    const/16 v1, 0x3e9

    if-eq p1, v0, :cond_1

    const v0, 0x186a3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    .line 18
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x69

    .line 19
    iput v0, p1, Landroid/os/Message;->what:I

    .line 20
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 21
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$800(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    new-instance p1, Lcom/geely/lib/oneosapi/navi/model/service/RspMapStatus;

    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    invoke-direct {p1, v0}, Lcom/geely/lib/oneosapi/navi/model/service/RspMapStatus;-><init>(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    .line 24
    invoke-virtual {p1, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 25
    sget-object v0, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->APP_FINISH:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->getCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/geely/lib/oneosapi/navi/model/service/RspMapStatus;->setMapStatus(I)V

    .line 26
    new-instance v0, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;->setNaviBaseModel(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    .line 29
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v1, 0x65

    .line 30
    iput v1, p1, Landroid/os/Message;->what:I

    .line 31
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$800(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    :cond_2
    :goto_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initSuccess(Lcom/geely/lib/oneosapi/navi/INaviServer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviservice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1100(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNaviServer---->initSuccess() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NaviManager"

    invoke-virtual {v0, v2, v1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1200(Lcom/geely/lib/oneosapi/navi/NaviManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1302(Lcom/geely/lib/oneosapi/navi/NaviManager;I)I

    .line 4
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v1, p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1402(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/INaviServer;)Lcom/geely/lib/oneosapi/navi/INaviServer;

    .line 5
    new-instance p1, Lcom/geely/lib/oneosapi/navi/-$$Lambda$NaviManager$3$2cRq8y4DQLma4KRuChfyrm7VYqI;

    invoke-direct {p1, p0}, Lcom/geely/lib/oneosapi/navi/-$$Lambda$NaviManager$3$2cRq8y4DQLma4KRuChfyrm7VYqI;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager$3;)V

    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/threadpool/ThreadManager;->execute(Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$800(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    move-result-object p1

    const/16 v1, 0x68

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v1, 0x6a

    .line 14
    iput v1, p1, Landroid/os/Message;->what:I

    .line 15
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$800(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
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

.method public synthetic lambda$initSuccess$0$NaviManager$3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1600(Lcom/geely/lib/oneosapi/navi/NaviManager;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$3;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1700(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSuccess----> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "thread name :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NaviManager"

    invoke-virtual {v1, v2, v0}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
