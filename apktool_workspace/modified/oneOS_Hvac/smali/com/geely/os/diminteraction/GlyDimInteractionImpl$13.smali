.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;
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

    .line 1597
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onInteractionAction$0(ILcom/geely/os/diminteraction/IGlyVendorInformation;Lcom/geely/os/diminteraction/IGlyVendorInteractionCallback;)V
    .locals 0

    .line 1614
    invoke-interface {p2, p0, p1}, Lcom/geely/os/diminteraction/IGlyVendorInteractionCallback;->onInteractionAction(ILcom/geely/os/diminteraction/IGlyVendorInformation;)V

    return-void
.end method


# virtual methods
.method public onInteractionAction(ILcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "iVendorInformation"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1603
    :cond_0
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInformation;)V

    .line 1614
    iget-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object p2

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$13$SSCBgRnABMj9CusN6dT4nyoHoh8;

    invoke-direct {v1, p1, v0}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$13$SSCBgRnABMj9CusN6dT4nyoHoh8;-><init>(ILcom/geely/os/diminteraction/IGlyVendorInformation;)V

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
