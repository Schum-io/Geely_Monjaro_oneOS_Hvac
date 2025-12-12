.class Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;
.super Ljava/lang/Object;
.source "GlyUiInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/uiinteraction/IGlyWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->getWindowManager()Lcom/geely/os/uiinteraction/IGlyWindowManager;
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

    .line 251
    iput-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWindowList()[Lcom/geely/os/uiinteraction/IGlyWindow;
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;->getWindowList()[Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    array-length v1, v0

    if-lez v1, :cond_1

    .line 256
    array-length v1, v0

    new-array v1, v1, [Lcom/geely/os/uiinteraction/IGlyWindow;

    const/4 v2, 0x0

    .line 257
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 258
    aget-object v3, v0, v2

    .line 259
    iget-object v4, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v4, v3}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$000(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;

    move-result-object v3

    .line 260
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerWindowObserver(Lcom/geely/os/uiinteraction/IGlyWindowObserver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$100(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$400(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;->registerWindowObserver(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;)Z

    move-result p1

    return p1
.end method

.method public registerWindowViewObserver(Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$200(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$500(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowViewObserver;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;->registerWindowObserver(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;)Z

    move-result p1

    return p1
.end method

.method public unregisterWindowObserver(Lcom/geely/os/uiinteraction/IGlyWindowObserver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$100(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 277
    iget-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$400(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;->unregisterWindowObserver(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;)Z

    move-result p1

    return p1
.end method

.method public unregisterWindowViewObserver(Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$200(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 289
    iget-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$500(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowViewObserver;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;->unregisterWindowObserver(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;)Z

    move-result p1

    return p1
.end method
