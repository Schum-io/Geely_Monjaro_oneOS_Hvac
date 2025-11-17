.class public Lcom/geely/lib/oneosapi/gesture/GestureManager$1;
.super Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback$Stub;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/gesture/GestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/gesture/GestureManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/gesture/GestureManager;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager$1;->this$0:Lcom/geely/lib/oneosapi/gesture/GestureManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getUID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public onGestureNotify(Lcom/geely/lib/oneosapi/gesture/GestureModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifyModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager$1;->this$0:Lcom/geely/lib/oneosapi/gesture/GestureManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/gesture/GestureManager;->access$200(Lcom/geely/lib/oneosapi/gesture/GestureManager;)Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
