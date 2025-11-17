.class Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;
.super Ljava/lang/Object;
.source "GlyUiInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/uiinteraction/IGlyUiInteraction;


# instance fields
.field private final mWindowObservers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/uiinteraction/IGlyWindowObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowViewObservers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;",
            ">;"
        }
    .end annotation
.end field

.field private uiInteraction:Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

.field private windowObserver:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;

.field private windowViewObserver:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowViewObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->mWindowObservers:Landroid/util/ArraySet;

    .line 19
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->mWindowViewObservers:Landroid/util/ArraySet;

    .line 22
    new-instance v0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$1;-><init>(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->windowObserver:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;

    .line 46
    new-instance v0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;-><init>(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->windowViewObserver:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowViewObserver;

    .line 148
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/uiinteraction/UiInteraction;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->uiInteraction:Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->getIGlyWindow(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->mWindowObservers:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->mWindowViewObservers:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->uiInteraction:Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->windowObserver:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowObserver;

    return-object p0
.end method

.method static synthetic access$500(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowViewObserver;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->windowViewObserver:Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindowViewObserver;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/uiinteraction/IGlyUiInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 142
    new-instance v0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getIGlyWindow(Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)Lcom/geely/os/uiinteraction/IGlyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iWindow"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$3;-><init>(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager$IWindow;)V

    return-object v0
.end method


# virtual methods
.method public getFreeFormWindowManager()Lcom/geely/os/uiinteraction/IGlyFreeFormWindow;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->uiInteraction:Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getFreeFormWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IFreeFormWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$4;

    invoke-direct {v0, p0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$4;-><init>(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiWindowManager()Lcom/geely/os/uiinteraction/IGlyMultiWindow;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->uiInteraction:Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getMultiWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IMultiWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;

    invoke-direct {v0, p0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$5;-><init>(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchManager()Lcom/geely/os/uiinteraction/IGlyTouchManager;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->uiInteraction:Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getTouchManager()Lcom/ecarx/xui/adaptapi/uiinteraction/ITouchManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$6;

    invoke-direct {v0, p0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$6;-><init>(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowManager()Lcom/geely/os/uiinteraction/IGlyWindowManager;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->uiInteraction:Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->getWindowManager()Lcom/ecarx/xui/adaptapi/uiinteraction/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;

    invoke-direct {v0, p0}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$7;-><init>(Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public startApplicationToDisplay(Ljava/lang/String;Landroid/view/Display;Landroid/view/Display;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkg",
            "from",
            "target"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl;->uiInteraction:Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p1, p2, p3}, Lcom/ecarx/xui/adaptapi/uiinteraction/IUiInteraction;->startApplicationToDisplay(Ljava/lang/String;Landroid/view/Display;Landroid/view/Display;)Lcom/ecarx/xui/adaptapi/CallStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result p1

    return p1

    .line 302
    :cond_0
    sget p1, Lcom/geely/os/uiinteraction/GlyCallStatus;->ERROR:I

    return p1
.end method
