.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyMediaInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->getMediaInteraction()Lcom/geely/os/diminteraction/IGlyMediaInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 547
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setMediaInteractionCallback(Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iMediaInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMediaInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$800(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iMediaInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMediaInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;->setMediaInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMediaInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public unsetMediaInteractionCallback(Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iMediaInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMediaInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$800(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 560
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iMediaInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMediaInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;->unsetMediaInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMediaInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public updateCurrentProgress(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;->updateCurrentProgress(J)V

    return-void
.end method

.method public updateCurrentSourceType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceType"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;->updateCurrentSourceType(I)V

    return-void
.end method

.method public updateExtensionInfo(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensionInfo"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;->updateExtensionInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method public updateMediaMuteState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;->updateMediaMuteState(I)V

    return-void
.end method

.method public updateMediaSourceTypeList([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceTypeList"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;->updateMediaSourceTypeList([I)V

    return-void
.end method

.method public updatePlaybackInfo(Lcom/geely/os/diminteraction/IGlyPlaybackInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackInfo"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 592
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;Lcom/geely/os/diminteraction/IGlyPlaybackInfo;)V

    .line 693
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;->updatePlaybackInfo(Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IPlaybackInfo;)V

    :cond_0
    return-void
.end method

.method public updatePlaylist(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceType",
            "playlist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/geely/os/diminteraction/IGlyMedia;",
            ">;)V"
        }
    .end annotation

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 701
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/os/diminteraction/IGlyMedia;

    .line 702
    new-instance v2, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;

    invoke-direct {v2, p0, v1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;Lcom/geely/os/diminteraction/IGlyMedia;)V

    .line 773
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    :cond_0
    iget-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;->updatePlaylist(ILjava/util/List;)V

    return-void
.end method
