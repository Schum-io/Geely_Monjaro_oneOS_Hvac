.class Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;
.super Ljava/lang/Object;
.source "GlyUiInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/uiinteraction/IGlyWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->getIGlyWindow(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

.field final synthetic val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;


# direct methods
.method constructor <init>(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$iWindow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    iput-object p2, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;->getType()I

    move-result v0

    return v0
.end method

.method public getUID()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;->getUID()I

    move-result v0

    return v0
.end method

.method public getViewVisibility()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;->getViewVisibility()I

    move-result v0

    return v0
.end method

.method public getWindowFrame()Landroid/graphics/Rect;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;->getWindowFrame()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getWindowIdentity()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;->getWindowIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowTag()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;->val$iWindow:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;->getWindowTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
