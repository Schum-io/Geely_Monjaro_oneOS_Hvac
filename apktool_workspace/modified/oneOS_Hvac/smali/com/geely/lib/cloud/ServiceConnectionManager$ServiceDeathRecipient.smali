.class Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field private final mListenerBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;


# direct methods
.method constructor <init>(Lcom/geely/lib/cloud/ServiceConnectionManager;Landroid/os/IBinder;)V
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

    .line 218
    iput-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const-string v0, "ServiceConnectionManager"

    const-string v2, "binderDied--retry binder"

    .line 225
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {v0, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$202(Lcom/geely/lib/cloud/ServiceConnectionManager;I)I

    .line 227
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$400(Lcom/geely/lib/cloud/ServiceConnectionManager;)Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$400(Lcom/geely/lib/cloud/ServiceConnectionManager;)Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->removeMessages(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$400(Lcom/geely/lib/cloud/ServiceConnectionManager;)Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 231
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$500(Lcom/geely/lib/cloud/ServiceConnectionManager;)V

    .line 232
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {v0, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$300(Lcom/geely/lib/cloud/ServiceConnectionManager;Z)V

    return-void
.end method
