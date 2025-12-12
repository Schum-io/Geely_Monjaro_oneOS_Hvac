.class public Lcom/geely/lib/oneosapi/navi/NaviManager$2;
.super Lcom/geely/lib/oneosapi/navi/INaviEventNotify$Stub;
.source "NaviManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/navi/NaviManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviManager;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$2;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/INaviEventNotify$Stub;-><init>()V

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public onNaviNotify(Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;)V
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
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x65

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$2;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$800(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
