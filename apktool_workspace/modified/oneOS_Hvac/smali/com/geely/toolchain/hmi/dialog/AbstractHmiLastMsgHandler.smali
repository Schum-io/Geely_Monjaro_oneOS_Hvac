.class public abstract Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;
.super Landroid/os/Handler;
.source "AbstractHmiLastMsgHandler.java"


# instance fields
.field private count:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->count:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized clearAll()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 53
    :try_start_0
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->count:I

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract handleLastMessage(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation
.end method

.method public final declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->count:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->handleLastMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "count\u6570\u5f02\u5e38"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized increaseCount()V
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final sendMsg()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->sendMsgDelayed(J)V

    return-void
.end method

.method public final sendMsgDelayed(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->increaseCount()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
