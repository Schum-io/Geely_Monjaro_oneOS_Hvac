.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyAddress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;->onDoInteractionAction(ILcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;

.field final synthetic val$iAddress:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$iAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 792
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;->val$iAddress:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressName()Ljava/lang/String;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;->val$iAddress:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;->getAddressName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;->val$iAddress:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;->getCityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()J
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;->val$iAddress:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;->getDistance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFullAddress()Ljava/lang/String;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;->val$iAddress:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;->val$iAddress:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;->val$iAddress:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method
