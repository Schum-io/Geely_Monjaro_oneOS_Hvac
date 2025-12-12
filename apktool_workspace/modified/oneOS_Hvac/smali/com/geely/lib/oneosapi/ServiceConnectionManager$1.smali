.class public Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "iBinder"
        }
    .end annotation

    const-string p1, "ServiceConnection"

    if-nez p2, :cond_0

    const-string p2, "onServiceConnected : iBinder is null"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p2}, Lcom/geely/lib/oneosapi/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$102(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Lcom/geely/lib/oneosapi/IServiceManager;)Lcom/geely/lib/oneosapi/IServiceManager;

    .line 6
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$202(Lcom/geely/lib/oneosapi/ServiceConnectionManager;I)I

    .line 8
    new-instance v0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-direct {v0, v3, p2}, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;-><init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Landroid/os/IBinder;)V

    .line 9
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string p2, "onServiceConnected--updateServiceConnectionChangedCallback"

    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1, v2}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$300(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Z)V

    .line 13
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$400(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;

    move-result-object p1

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    new-instance p2, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;-><init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;)V

    invoke-static {p1, p2}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$402(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$100(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p2}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$400(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/geely/lib/oneosapi/IServiceManager;->registerCallback(Lcom/geely/lib/oneosapi/IServiceManagerCallback;)V

    .line 17
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$600(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$600(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;->success()V

    goto :goto_0

    :cond_2
    const-string p2, "onServiceConnected--iBinder is died, retry bindservice."

    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1, v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$202(Lcom/geely/lib/oneosapi/ServiceConnectionManager;I)I

    .line 23
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$700(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$700(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    :cond_3
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$700(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    move-result-object p1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 27
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$800(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V

    .line 28
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1, v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$300(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Z)V

    .line 29
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$600(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 30
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$600(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;->fail()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 35
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$600(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 36
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$600(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;->fail()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    const-string p1, "ServiceConnection"

    const-string v0, "onServiceDisconnected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$102(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Lcom/geely/lib/oneosapi/IServiceManager;)Lcom/geely/lib/oneosapi/IServiceManager;

    .line 3
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$200(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$800(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V

    .line 7
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$300(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Z)V

    return-void
.end method
