.class public Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;
.super Lcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener$Stub;
.source "BaseMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaStateListenerImpl"
.end annotation


# instance fields
.field private final isPsdCallback:Z

.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "isPsdCallback"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener$Stub;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->isPsdCallback:Z

    return-void
.end method


# virtual methods
.method public onFavorStateChanged(IILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "mediaData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$5;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;IILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLrcLoad(IILjava/lang/String;J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "lrc",
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$6;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$6;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;IILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaDataChanged(IILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "mediaData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;IILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayListChanged(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$4;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;IILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayModeChange(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->access$000(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$7;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayPositionChanged(IIJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "current",
            "total"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    .line 1
    iget-boolean v0, v8, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->isPsdCallback:Z

    iget-object v1, v8, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayStateChanged(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$3;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
