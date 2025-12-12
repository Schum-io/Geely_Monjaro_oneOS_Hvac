.class Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;
.super Landroid/os/Handler;
.source "ServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/ServiceConnectionManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    .line 238
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/lib/cloud/ServiceConnectionManager;Landroid/os/Looper;Lcom/geely/lib/cloud/ServiceConnectionManager$1;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;-><init>(Lcom/geely/lib/cloud/ServiceConnectionManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 243
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->access$600(Lcom/geely/lib/cloud/ServiceConnectionManager;)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object p1, p0, Lcom/geely/lib/cloud/ServiceConnectionManager$RetryHandler;->this$0:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->bindService()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
