.class public final synthetic Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$1$jmdGoYAyiKNxH_CNvmMRrXXm4LE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/uiinteraction/IGlyWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/uiinteraction/IGlyWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$1$jmdGoYAyiKNxH_CNvmMRrXXm4LE;->f$0:Lcom/geely/os/uiinteraction/IGlyWindow;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$1$jmdGoYAyiKNxH_CNvmMRrXXm4LE;->f$0:Lcom/geely/os/uiinteraction/IGlyWindow;

    check-cast p1, Lcom/geely/os/uiinteraction/IGlyWindowObserver;

    invoke-static {v0, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$1;->lambda$onWindowAdded$0(Lcom/geely/os/uiinteraction/IGlyWindow;Lcom/geely/os/uiinteraction/IGlyWindowObserver;)V

    return-void
.end method
