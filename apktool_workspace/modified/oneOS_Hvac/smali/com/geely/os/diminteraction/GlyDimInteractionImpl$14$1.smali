.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14$1;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->updateVendorInformation(Lcom/geely/os/diminteraction/IGlyVendorInformation;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;

.field final synthetic val$information:Lcom/geely/os/diminteraction/IGlyVendorInformation;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;Lcom/geely/os/diminteraction/IGlyVendorInformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$information"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1643
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14$1;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14$1;->val$information:Lcom/geely/os/diminteraction/IGlyVendorInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14$1;->val$information:Lcom/geely/os/diminteraction/IGlyVendorInformation;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyVendorInformation;->getType()I

    move-result v0

    return v0
.end method

.method public getVendorExtras()Landroid/os/Bundle;
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14$1;->val$information:Lcom/geely/os/diminteraction/IGlyVendorInformation;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyVendorInformation;->getVendorExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
