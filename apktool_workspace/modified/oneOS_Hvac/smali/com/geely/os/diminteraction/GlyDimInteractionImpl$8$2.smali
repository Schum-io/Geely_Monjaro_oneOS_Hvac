.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;->updatePlaylist(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;

.field final synthetic val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;Lcom/geely/os/diminteraction/IGlyMedia;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$iGlyMedia"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 702
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtwork()Landroid/net/Uri;
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFavoriteState()I
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getFavoriteState()I

    move-result v0

    return v0
.end method

.method public getLyric()Landroid/net/Uri;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getLyric()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getLyricContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaPath()Landroid/net/Uri;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getMediaPath()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingItemPositionInQueue()I
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getPlayingItemPositionInQueue()I

    move-result v0

    return v0
.end method

.method public getRadioFrequency()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getRadioFrequency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRadioStationName()Ljava/lang/String;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getRadioStationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getSourceType()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8$2;->val$iGlyMedia:Lcom/geely/os/diminteraction/IGlyMedia;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyMedia;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
