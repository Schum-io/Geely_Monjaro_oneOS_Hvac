.class Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$4;
.super Ljava/lang/Object;
.source "GlyUiInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/uiinteraction/IGlyFreeFormWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->getFreeFormWindowManager()Lcom/geely/os/uiinteraction/IGlyFreeFormWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$4;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeFreeformWindowSize(Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "big"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$4;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getFreeFormWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IFreeFormWindow;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/uiinteraction/IFreeFormWindow;->changeFreeformWindowSize(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
