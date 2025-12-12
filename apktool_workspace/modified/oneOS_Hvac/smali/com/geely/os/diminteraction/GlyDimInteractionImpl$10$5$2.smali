.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$2;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IHighwayExitInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->getHighwayExitInfo()Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IHighwayExitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;

.field final synthetic val$iGlyHighwayExitInfo:Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$iGlyHighwayExitInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1135
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$2;->this$2:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$2;->val$iGlyHighwayExitInfo:Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEtaDistance()I
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$2;->val$iGlyHighwayExitInfo:Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;->getEtaDistance()I

    move-result v0

    return v0
.end method

.method public getEtaTime()I
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$2;->val$iGlyHighwayExitInfo:Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;->getEtaTime()I

    move-result v0

    return v0
.end method

.method public getExitDirection()Ljava/lang/String;
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$2;->val$iGlyHighwayExitInfo:Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;->getExitDirection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitNumber()Ljava/lang/String;
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$2;->val$iGlyHighwayExitInfo:Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;->getExitNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
