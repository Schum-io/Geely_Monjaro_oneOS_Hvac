.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$1;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;


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

    .line 37
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$1;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDoInteractionAction$1(IILjava/lang/Object;Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;)V
    .locals 0

    .line 45
    invoke-interface {p3, p0, p1, p2}, Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;->onDoInteractionAction(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onVrInfoUpdateReqired$0(Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;)V
    .locals 0

    .line 40
    invoke-interface {p0}, Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;->onVrInfoUpdateReqired()V

    return-void
.end method


# virtual methods
.method public onDoInteractionAction(IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "i1",
            "o"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$1;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A;

    invoke-direct {v1, p1, p2, p3}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onVrInfoUpdateReqired()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$1;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$h4E6bBvTrWRuYYydCyDLtG7PCA4;->INSTANCE:Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$h4E6bBvTrWRuYYydCyDLtG7PCA4;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
