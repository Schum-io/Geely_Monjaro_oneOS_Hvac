.class public Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;
.super Landroid/os/Handler;
.source "NaviManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/navi/NaviManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncHandler"
.end annotation


# instance fields
.field public weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/geely/lib/oneosapi/navi/NaviManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "naviManager",
            "looper"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Landroid/os/Looper;Lcom/geely/lib/oneosapi/navi/NaviManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/NaviManager;

    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 38
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    .line 39
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/service/RspLaunchMap;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/service/RspLaunchMap;-><init>()V

    .line 40
    invoke-virtual {v0, v2}, Lcom/geely/lib/oneosapi/navi/model/service/RspLaunchMap;->setMapLaunchedType(I)V

    .line 41
    invoke-interface {p1, v0}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    goto/16 :goto_0

    .line 42
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    .line 43
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$700(Lcom/geely/lib/oneosapi/navi/NaviManager;ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    goto/16 :goto_0

    .line 44
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    .line 45
    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$500(Lcom/geely/lib/oneosapi/navi/NaviManager;)I

    move-result v1

    invoke-static {v0, v1, v2, p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$600(Lcom/geely/lib/oneosapi/navi/NaviManager;IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    goto/16 :goto_0

    .line 46
    :pswitch_4
    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$400(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/INaviEventListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;

    .line 48
    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$400(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/INaviEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;->getNaviBaseModel()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/INaviEventListener;->onNaviEvent(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    goto/16 :goto_0

    .line 49
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;

    .line 50
    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;->getNaviBaseModel()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    move-result-object p1

    .line 51
    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$000(Lcom/geely/lib/oneosapi/navi/NaviManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->getCallbackId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    const-string v2, "NaviManager"

    if-eqz v1, :cond_1

    .line 53
    instance-of v3, p1, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;

    const-string v4, "---\u51fa\u53c2\uff1a"

    if-eqz v3, :cond_0

    .line 54
    check-cast p1, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;

    .line 55
    invoke-interface {v1, p1}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V

    .line 56
    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$100(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v1, p1}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    .line 59
    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$200(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$300(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAPICallbacks not find callbackId,current result callbackId is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->getCallbackId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
