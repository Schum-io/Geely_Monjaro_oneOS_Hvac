.class public Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;
.super Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener$Stub;
.source "BaseRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioStateListenerImpl"
.end annotation


# instance fields
.field private final isPsdCallback:Z

.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;)V
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
    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;Z)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener$Stub;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    return-void
.end method


# virtual methods
.method public onCarouselPlayStart(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "succeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onCarouselPlayStart(Z)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCarouserPlayStop(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onCarouserPlayStop(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCarouserWaiting(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frequency",
            "leftTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onCarouserWaiting(IJ)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCollectionStationListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequencyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onCollectionStationListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCollectionStationListReachesMax()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onCollectionStationListReachesMax()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCurrentBand(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "band"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onCurrentBand(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCurrentFrequency(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onCurrentFrequency(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onOpenRadioResult(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "succeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onOpenRadioResult(Z)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRadioClosed(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "succeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onRadioClosed(Z)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRadioError(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onRadioError(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRadioMuteState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onRadioMuteState(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRadioNameListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequencyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onRadioNameListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRadioStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onRadioStatusChanged(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onScanStarted(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onScanStarted(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onScanStationListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequencyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onScanStationListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onScanStopped(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "succeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onScanStopped(Z)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSeekStarted(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onSeekStarted(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSeekStopped(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "succeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onSeekStopped(Z)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSignalQualityChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onSignalQualityChanged(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStationFrequency(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;

    iget-object v1, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;

    .line 5
    invoke-interface {v2, p1}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;->onStationFrequency(I)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "BaseRadioManager"

    const-string p3, "onTransact: "

    .line 3
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
