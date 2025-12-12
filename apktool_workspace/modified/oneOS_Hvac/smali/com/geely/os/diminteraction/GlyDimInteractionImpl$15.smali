.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$15;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction$IInteractionCallback;


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

    .line 1666
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$15;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onShowPresentationOptionChanged$0(ILcom/geely/os/diminteraction/IGlyInteractionCallback;)V
    .locals 0

    .line 1669
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyInteractionCallback;->onShowPresentationOptionChanged(I)V

    return-void
.end method


# virtual methods
.method public onShowPresentationOptionChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1669
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$15;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1600(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$15$BpiS6joNRgiHn7XRrjVdEQALy0c;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$15$BpiS6joNRgiHn7XRrjVdEQALy0c;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
