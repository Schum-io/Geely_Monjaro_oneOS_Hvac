.class Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;
.super Ljava/lang/Object;
.source "GlyUiInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/uiinteraction/IGlyMultiWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->getMultiWindowManager()Lcom/geely/os/uiinteraction/IGlyMultiWindow;
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

    .line 168
    iput-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSplitScreenMode()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->closeSplitScreenMode()V

    return-void
.end method

.method public closeSplitScreenMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screen"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->closeSplitScreenMode(I)V

    return-void
.end method

.method public getBottomScreenPackageName()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->getBottomScreenPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenStackPackageName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screen"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->getScreenStackPackageName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTopScreenPackageName()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->getTopScreenPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActivitySupportedSplitScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkg",
            "cls"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->isActivitySupportedSplitScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInSplitScreenWindowingMode()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->isInSplitScreenWindowingMode()Z

    move-result v0

    return v0
.end method

.method public isPackageSupportedSplitScreen(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->isPackageSupportedSplitScreen(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSplitScreenModeSupported()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->isSplitScreenModeSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0
.end method

.method public moveActivityBetweenDisplay(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gesture"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->moveActivityBetweenDisplay(I)I

    move-result p1

    return p1
.end method

.method public swapDockedAndFullscreenStack()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;->swapDockedAndFullscreenStack()V

    return-void
.end method
