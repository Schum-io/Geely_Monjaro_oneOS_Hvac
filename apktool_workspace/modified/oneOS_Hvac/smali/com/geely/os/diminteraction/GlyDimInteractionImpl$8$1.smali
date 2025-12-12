.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IPlaybackInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->updatePlaybackInfo(Lcom/geely/os/diminteraction/IGlyPlaybackInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;

.field final synthetic val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;Lcom/geely/os/diminteraction/IGlyPlaybackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$playbackInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 592
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtwork()Landroid/net/Uri;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLyricSentence()Ljava/lang/String;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getCurrentLyricSentence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFavoriteState()I
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getFavoriteState()I

    move-result v0

    return v0
.end method

.method public getLoopMode()I
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getLoopMode()I

    move-result v0

    return v0
.end method

.method public getLyric()Landroid/net/Uri;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getLyric()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getLyricContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaPath()Landroid/net/Uri;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getMediaPath()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getNextArtwork()Landroid/net/Uri;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getNextArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackStatus()I
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getPlaybackStatus()I

    move-result v0

    return v0
.end method

.method public getPlayingItemPositionInQueue()I
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getPlayingItemPositionInQueue()I

    move-result v0

    return v0
.end method

.method public getPreviousArtwork()Landroid/net/Uri;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getPreviousArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRadioFrequency()Ljava/lang/String;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getRadioFrequency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRadioMode()I
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getRadioMode()I

    move-result v0

    return v0
.end method

.method public getRadioStationName()Ljava/lang/String;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getRadioStationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getSourceType()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$1;->val$playbackInfo:Lcom/geely/os/diminteraction/IGlyPlaybackInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyPlaybackInfo;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
