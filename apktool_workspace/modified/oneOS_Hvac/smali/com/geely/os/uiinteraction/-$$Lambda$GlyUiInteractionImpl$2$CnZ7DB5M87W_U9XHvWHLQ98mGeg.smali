.class public final synthetic Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$CnZ7DB5M87W_U9XHvWHLQ98mGeg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/uiinteraction/IGlyWindow;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/uiinteraction/IGlyWindow;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$CnZ7DB5M87W_U9XHvWHLQ98mGeg;->f$0:Lcom/geely/os/uiinteraction/IGlyWindow;

    iput p2, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$CnZ7DB5M87W_U9XHvWHLQ98mGeg;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$CnZ7DB5M87W_U9XHvWHLQ98mGeg;->f$0:Lcom/geely/os/uiinteraction/IGlyWindow;

    iget v1, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$CnZ7DB5M87W_U9XHvWHLQ98mGeg;->f$1:I

    check-cast p1, Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;

    invoke-static {v0, v1, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->lambda$onWindowVisibilityChanged$0(Lcom/geely/os/uiinteraction/IGlyWindow;ILcom/geely/os/uiinteraction/IGlyWindowViewObserver;)V

    return-void
.end method
