.class public Lcom/geely/lib/oneosapi/navi/NaviManager$1;
.super Lcom/geely/lib/oneosapi/navi/INaviObserver$Stub;
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

.field private uuid:Ljava/lang/String;


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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$1;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/INaviObserver$Stub;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$1;->uuid:Ljava/lang/String;

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

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$1;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public onNaviAPICallback(Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbackModel"
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

    const/16 v1, 0x64

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$1;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$800(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
