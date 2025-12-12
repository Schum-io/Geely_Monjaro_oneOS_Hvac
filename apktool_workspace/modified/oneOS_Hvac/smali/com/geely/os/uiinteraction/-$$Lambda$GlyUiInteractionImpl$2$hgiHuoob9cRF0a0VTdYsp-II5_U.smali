.class public final synthetic Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/uiinteraction/IGlyWindow;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/uiinteraction/IGlyWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U;->f$0:Lcom/geely/os/uiinteraction/IGlyWindow;

    iput-object p2, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U;->f$0:Lcom/geely/os/uiinteraction/IGlyWindow;

    iget-object v1, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/geely/os/uiinteraction/-$$Lambda$GlyUiInteractionImpl$2$hgiHuoob9cRF0a0VTdYsp-II5_U;->f$2:Landroid/graphics/Rect;

    check-cast p1, Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;

    invoke-static {v0, v1, v2, p1}, Lcom/geely/os/uiinteraction/GlyUiInteractionImpl$2;->lambda$onWindowFrameChanged$1(Lcom/geely/os/uiinteraction/IGlyWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/geely/os/uiinteraction/IGlyWindowViewObserver;)V

    return-void
.end method
