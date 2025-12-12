.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyMedia;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;->onMediaSelected(Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;

.field final synthetic val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;)V
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

    .line 459
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtwork()Landroid/net/Uri;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFavoriteState()I
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getFavoriteState()I

    move-result v0

    return v0
.end method

.method public getLyric()Landroid/net/Uri;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getLyric()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getLyricContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaPath()Landroid/net/Uri;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getMediaPath()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingItemPositionInQueue()I
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getPlayingItemPositionInQueue()I

    move-result v0

    return v0
.end method

.method public getRadioFrequency()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getRadioFrequency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRadioStationName()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getRadioStationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getSourceType()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;->val$iGlyMedia:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
