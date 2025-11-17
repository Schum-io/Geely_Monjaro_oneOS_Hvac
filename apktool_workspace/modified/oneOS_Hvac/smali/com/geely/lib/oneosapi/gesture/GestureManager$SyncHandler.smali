.class public Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;
.super Landroid/os/Handler;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/gesture/GestureManager;
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
            "Lcom/geely/lib/oneosapi/gesture/GestureManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/geely/lib/oneosapi/gesture/GestureManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gestureManager",
            "looper"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/geely/lib/oneosapi/gesture/GestureManager;Landroid/os/Looper;Lcom/geely/lib/oneosapi/gesture/GestureManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;-><init>(Lcom/geely/lib/oneosapi/gesture/GestureManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/gesture/GestureManager;

    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/geely/lib/oneosapi/gesture/GestureManager;->access$000(Lcom/geely/lib/oneosapi/gesture/GestureManager;)Lcom/geely/lib/oneosapi/gesture/IGestureNotifyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/geely/lib/oneosapi/gesture/GestureModel;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGestureNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/gesture/GestureModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GestureManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v0}, Lcom/geely/lib/oneosapi/gesture/GestureManager;->access$000(Lcom/geely/lib/oneosapi/gesture/GestureManager;)Lcom/geely/lib/oneosapi/gesture/IGestureNotifyListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/gesture/IGestureNotifyListener;->onGestureNotify(Lcom/geely/lib/oneosapi/gesture/GestureModel;)V

    :cond_1
    :goto_0
    return-void
.end method
