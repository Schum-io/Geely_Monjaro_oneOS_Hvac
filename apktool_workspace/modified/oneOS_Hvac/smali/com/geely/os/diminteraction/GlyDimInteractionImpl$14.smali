.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyVendorInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->getVendorInteraction()Lcom/geely/os/diminteraction/IGlyVendorInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1621
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerVendorInteractionCallback(Lcom/geely/os/diminteraction/IGlyVendorInteractionCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1624
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVendorInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1626
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVendorInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;->registerVendorInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInteractionCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unRegisterVendorInteractionCallback(Lcom/geely/os/diminteraction/IGlyVendorInteractionCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1633
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVendorInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1635
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVendorInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;->registerVendorInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInteractionCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateVendorInformation(Lcom/geely/os/diminteraction/IGlyVendorInformation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "information"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1643
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;Lcom/geely/os/diminteraction/IGlyVendorInformation;)V

    .line 1654
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;->updateVendorInformation(Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
