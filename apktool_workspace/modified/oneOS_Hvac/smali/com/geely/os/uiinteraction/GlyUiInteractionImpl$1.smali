.class Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$1;
.super Ljava/lang/Object;
.source "GlyUiInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;


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

    .line 22
    iput-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$1;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onWindowAdded$0(Lcom/geely/os/uiinteraction/IGlyWindow;Lcom/geely/os/uiinteraction/IGlyWindowObserver;)V
    .locals 0

    .line 27
    invoke-interface {p1, p0}, Lcom/geely/os/uiinteraction/IGlyWindowObserver;->onWindowAdded(Lcom/geely/os/uiinteraction/IGlyWindow;)V

    return-void
.end method

.method static synthetic lambda$onWindowRemoved$1(Lcom/geely/os/uiinteraction/IGlyWindow;Lcom/geely/os/uiinteraction/IGlyWindowObserver;)V
    .locals 0

    .line 38
    invoke-interface {p1, p0}, Lcom/geely/os/uiinteraction/IGlyWindowObserver;->onWindowRemoved(Lcom/geely/os/uiinteraction/IGlyWindow;)V

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

    .line 26
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$1;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$000(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$1;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$100(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$1$jmdGoYAyiKNxH_CNvmMRrXXm4LE;

    invoke-direct {v1, p1}, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$1$jmdGoYAyiKNxH_CNvmMRrXXm4LE;-><init>(Lcom/geely/os/uiinteraction/IGlyWindow;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "OneVehicleSDK"

    const-string v0, "iWindow = null"

    .line 30
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 37
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$1;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$000(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$1;->this$0:Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->access$100(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$1$u724jvNB6uWQEC1Usi12HIoS-QQ;

    invoke-direct {v1, p1}, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$1$u724jvNB6uWQEC1Usi12HIoS-QQ;-><init>(Lcom/geely/os/uiinteraction/IGlyWindow;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "OneVehicleSDK"

    const-string v0, "iWindow = null"

    .line 41
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
