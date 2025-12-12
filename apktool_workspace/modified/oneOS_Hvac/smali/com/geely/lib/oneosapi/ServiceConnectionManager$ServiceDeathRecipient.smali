.class public Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field private final mListenerBinder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "listenerBinder"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const-string v0, "ServiceConnection"

    const-string v2, "binderDied--retry binder"

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {v0, v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$202(Lcom/geely/lib/oneosapi/ServiceConnectionManager;I)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$700(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$700(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$700(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$800(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V

    .line 9
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {v0, v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$300(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Z)V

    return-void
.end method
