.class Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;
.super Ljava/lang/Object;
.source "GlyUiInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowViewObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;
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

    .line 46
    iput-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onWindowAdded$2(Lcom/geely/os/uiinteraction/IGlyWindow;Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;)V
    .locals 0

    .line 73
    invoke-interface {p1, p0}, Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;->onWindowAdded(Lcom/geely/os/uiinteraction/IGlyWindow;)V

    return-void
.end method

.method static synthetic lambda$onWindowFrameChanged$1(Lcom/geely/os/uiinteraction/IGlyWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;)V
    .locals 0

    .line 62
    invoke-interface {p3, p0, p1, p2}, Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;->onWindowFrameChanged(Lcom/geely/os/uiinteraction/IGlyWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic lambda$onWindowRemoved$3(Lcom/geely/os/uiinteraction/IGlyWindow;Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;)V
    .locals 0

    .line 84
    invoke-interface {p1, p0}, Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;->onWindowRemoved(Lcom/geely/os/uiinteraction/IGlyWindow;)V

    return-void
.end method

.method static synthetic lambda$onWindowVisibilityChanged$0(Lcom/geely/os/uiinteraction/IGlyWindow;ILcom/geely/os/uiinteraction/IGlyWindowViewObserver;)V
    .locals 0

    .line 51
    invoke-interface {p2, p0, p1}, Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;->onWindowVisibilityChanged(Lcom/geely/os/uiinteraction/IGlyWindow;I)V

    return-void
.end method


# virtual methods
.method public onWindowAdded(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iWindow"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$000(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$200(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$X45fgB1usydVQl2l_3RKCuFQkf8;

    invoke-direct {v1, p1}, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$X45fgB1usydVQl2l_3RKCuFQkf8;-><init>(Lcom/geely/os/uiinteraction/IGlyWindow;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "OneVehicleSDK"

    const-string v0, "iWindow = null"

    .line 76
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onWindowFrameChanged(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "iWindow",
            "rect",
            "rect1"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$000(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$200(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U;

    invoke-direct {v1, p1, p2, p3}, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U;-><init>(Lcom/geely/os/uiinteraction/IGlyWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "OneVehicleSDK"

    const-string p2, "iWindow = null"

    .line 65
    invoke-static {p1, p2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onWindowRemoved(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iWindow"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$000(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$200(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$VSWhWWEPcbZb2rWF5SE0uDttLDM;

    invoke-direct {v1, p1}, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$VSWhWWEPcbZb2rWF5SE0uDttLDM;-><init>(Lcom/geely/os/uiinteraction/IGlyWindow;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "OneVehicleSDK"

    const-string v0, "iWindow = null"

    .line 87
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onWindowVisibilityChanged(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iWindow",
            "i"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$000(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$200(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$CnZ7DB5M87W_U9XHvWHLQ98mGeg;

    invoke-direct {v1, p1, p2}, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$CnZ7DB5M87W_U9XHvWHLQ98mGeg;-><init>(Lcom/geely/os/uiinteraction/IGlyWindow;I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "OneVehicleSDK"

    const-string p2, "iWindow = null"

    .line 54
    invoke-static {p1, p2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
