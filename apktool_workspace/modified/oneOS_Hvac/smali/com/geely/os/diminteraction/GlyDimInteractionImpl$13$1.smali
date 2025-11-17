.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13$1;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyVendorInformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;->onInteractionAction(ILcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;

.field final synthetic val$iVendorInformation:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$iVendorInformation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1603
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13$1;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13$1;->val$iVendorInformation:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13$1;->val$iVendorInformation:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;->getType()I

    move-result v0

    return v0
.end method

.method public getVendorExtras()Landroid/os/Bundle;
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13$1;->val$iVendorInformation:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;->getVendorExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
