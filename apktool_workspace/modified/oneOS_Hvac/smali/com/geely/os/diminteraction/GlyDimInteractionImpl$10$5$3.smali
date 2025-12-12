.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$3;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IServiceArea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->getServiceAreaInfo()Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IServiceArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;

.field final synthetic val$serviceArea:Lcom/geely/os/diminteraction/IGlyServiceArea;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;Lcom/geely/os/diminteraction/IGlyServiceArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$serviceArea"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1165
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$3;->this$2:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$3;->val$serviceArea:Lcom/geely/os/diminteraction/IGlyServiceArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaDistance()I
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$3;->val$serviceArea:Lcom/geely/os/diminteraction/IGlyServiceArea;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyServiceArea;->getAreaDistance()I

    move-result v0

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$3;->val$serviceArea:Lcom/geely/os/diminteraction/IGlyServiceArea;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyServiceArea;->getAreaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAreaType()I
    .locals 1

    .line 1168
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$3;->val$serviceArea:Lcom/geely/os/diminteraction/IGlyServiceArea;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyServiceArea;->getAreaType()I

    move-result v0

    return v0
.end method

.method public getEtaTime()I
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$3;->val$serviceArea:Lcom/geely/os/diminteraction/IGlyServiceArea;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyServiceArea;->getEtaTime()I

    move-result v0

    return v0
.end method
