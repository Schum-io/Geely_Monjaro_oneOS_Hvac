.class Lcom/geely/lib/cloud/ServiceConnectionManager$1;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;


# direct methods
.method constructor <init>(Lcom/geely/lib/cloud/ServiceConnectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

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

    const-string p1, "ServiceConnectionManager"

    if-nez p2, :cond_0

    const-string p2, "onServiceConnected : iBinder is null"

    .line 175
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p2}, Lcom/geely/lib/cloud/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$102(Lcom/geely/lib/cloud/ServiceConnectionManager;Lcom/geely/lib/cloud/IServiceManager;)Lcom/geely/lib/cloud/IServiceManager;

    .line 180
    iget-object v0, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$202(Lcom/geely/lib/cloud/ServiceConnectionManager;I)I

    .line 182
    new-instance v0, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;

    iget-object v3, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-direct {v0, v3, p2}, Lcom/geely/lib/cloud/ServiceConnectionManager$ServiceDeathRecipient;-><init>(Lcom/geely/lib/cloud/ServiceConnectionManager;Landroid/os/IBinder;)V

    .line 183
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string p2, "onServiceConnected--updateServiceConnectionChangedCallback"

    .line 185
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1, v2}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$300(Lcom/geely/lib/cloud/ServiceConnectionManager;Z)V

    goto :goto_0

    :cond_1
    const-string p2, "onServiceConnected--iBinder is died, retry bindservice."

    .line 188
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$202(Lcom/geely/lib/cloud/ServiceConnectionManager;I)I

    .line 190
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$400(Lcom/geely/lib/cloud/ServiceConnectionManager;)Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 191
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$400(Lcom/geely/lib/cloud/ServiceConnectionManager;)Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->removeMessages(I)V

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$400(Lcom/geely/lib/cloud/ServiceConnectionManager;)Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;

    move-result-object p1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, p2, v2, v3}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 194
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$500(Lcom/geely/lib/cloud/ServiceConnectionManager;)V

    .line 195
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1, v1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$300(Lcom/geely/lib/cloud/ServiceConnectionManager;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

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

    const-string p1, "ServiceConnectionManager"

    const-string v0, "onServiceDisconnected"

    .line 205
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$102(Lcom/geely/lib/cloud/ServiceConnectionManager;Lcom/geely/lib/cloud/IServiceManager;)Lcom/geely/lib/cloud/IServiceManager;

    .line 207
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$200(Lcom/geely/lib/cloud/ServiceConnectionManager;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$500(Lcom/geely/lib/cloud/ServiceConnectionManager;)V

    .line 211
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$1;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$300(Lcom/geely/lib/cloud/ServiceConnectionManager;Z)V

    return-void
.end method
