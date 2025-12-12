.class public Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;
.super Ljava/lang/Object;
.source "MusicAdapterManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicStateListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;


# direct methods
.method private constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)V

    return-void
.end method


# virtual methods
.method public onFavorStateChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "mediaData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->access$200(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;->onFavorStateChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLrcLoad(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "lrc",
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->access$200(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;

    .line 2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;->onLrcLoad(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMediaDataChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "mediaData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->access$200(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;->onMediaDataChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayListChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->access$200(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;->onPlayListChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayModeChange(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "mode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->access$200(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;->onPlayModeChange(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayPositionChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "current",
            "total"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->access$200(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 2
    invoke-interface/range {v2 .. v7}, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;->onPlayPositionChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayStateChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "state"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->access$200(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;->onPlayStateChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;)V

    goto :goto_0

    :cond_0
    return-void
.end method
