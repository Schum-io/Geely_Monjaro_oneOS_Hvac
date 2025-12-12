.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->updateAddresses(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;

.field final synthetic val$iGlyAddress:Lcom/geely/os/diminteraction/IGlyAddress;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$iGlyAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1228
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;->val$iGlyAddress:Lcom/geely/os/diminteraction/IGlyAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressName()Ljava/lang/String;
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;->val$iGlyAddress:Lcom/geely/os/diminteraction/IGlyAddress;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyAddress;->getAddressName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;->val$iGlyAddress:Lcom/geely/os/diminteraction/IGlyAddress;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyAddress;->getCityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()J
    .locals 2

    .line 1246
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;->val$iGlyAddress:Lcom/geely/os/diminteraction/IGlyAddress;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyAddress;->getDistance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFullAddress()Ljava/lang/String;
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;->val$iGlyAddress:Lcom/geely/os/diminteraction/IGlyAddress;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1241
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;->val$iGlyAddress:Lcom/geely/os/diminteraction/IGlyAddress;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyAddress;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;->val$iGlyAddress:Lcom/geely/os/diminteraction/IGlyAddress;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyAddress;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method
