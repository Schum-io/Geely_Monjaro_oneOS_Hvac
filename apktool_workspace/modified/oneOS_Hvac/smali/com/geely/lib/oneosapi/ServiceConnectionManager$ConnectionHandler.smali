.class public Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;
.super Landroid/os/Handler;
.source "ServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;


# direct methods
.method private constructor <init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Landroid/os/Looper;)V
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

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Landroid/os/Looper;Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;-><init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
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
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {v0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$1100(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Landroid/os/Message;)V

    goto :goto_0

    .line 12
    :pswitch_1
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$1000(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V

    goto :goto_0

    .line 15
    :pswitch_2
    iget-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ConnectionHandler;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->bindService()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
