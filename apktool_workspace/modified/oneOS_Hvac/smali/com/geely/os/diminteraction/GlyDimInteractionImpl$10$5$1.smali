.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$1;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$ILaneInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->getLaneInfo()[Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$ILaneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;

.field final synthetic val$iGlyLaneInfo:Lcom/geely/os/diminteraction/IGlyLaneInfo;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;Lcom/geely/os/diminteraction/IGlyLaneInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$iGlyLaneInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1108
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$1;->this$2:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$1;->val$iGlyLaneInfo:Lcom/geely/os/diminteraction/IGlyLaneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLaneBackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$1;->val$iGlyLaneInfo:Lcom/geely/os/diminteraction/IGlyLaneInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyLaneInfo;->getLaneBackIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLaneBackIconId()I
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$1;->val$iGlyLaneInfo:Lcom/geely/os/diminteraction/IGlyLaneInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyLaneInfo;->getLaneBackIconId()I

    move-result v0

    return v0
.end method

.method public getLaneNumber()I
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$1;->val$iGlyLaneInfo:Lcom/geely/os/diminteraction/IGlyLaneInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyLaneInfo;->getLaneNumber()I

    move-result v0

    return v0
.end method
