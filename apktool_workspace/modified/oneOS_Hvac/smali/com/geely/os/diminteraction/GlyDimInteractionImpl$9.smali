.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInteractionCallback;


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

    .line 786
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDoInteractionAction$0(ILcom/geely/os/diminteraction/IGlyAddress;Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;)V
    .locals 0

    .line 823
    invoke-interface {p2, p0, p1}, Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;->onDoInteractionAction(ILcom/geely/os/diminteraction/IGlyAddress;)V

    return-void
.end method

.method static synthetic lambda$onSearchAddress$1(Ljava/lang/String;Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;)V
    .locals 0

    .line 828
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;->onSearchAddress(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDoInteractionAction(ILcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "iAddress"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 792
    :cond_0
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IAddress;)V

    .line 823
    iget-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object p2

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$9$HSkkxXfwtEfbfpqjjnMwMIH-SKo;

    invoke-direct {v1, p1, v0}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$9$HSkkxXfwtEfbfpqjjnMwMIH-SKo;-><init>(ILcom/geely/os/diminteraction/IGlyAddress;)V

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSearchAddress(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$9$-ILuSIXki5E_J3OSDFYaqOgS7kA;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$9$-ILuSIXki5E_J3OSDFYaqOgS7kA;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
