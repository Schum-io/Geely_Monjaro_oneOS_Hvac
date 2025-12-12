.class Lcom/geely/toolchain/hmi/blur2/BlurView$1;
.super Landroid/view/ViewOutlineProvider;
.source "BlurView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/blur2/BlurView;->setRoot(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/blur2/BlurView;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/blur2/BlurView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/BlurView$1;->this$0:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "outline"
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur2/BlurView$1;->this$0:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->access$000(Lcom/geely/toolchain/hmi/blur2/BlurView;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
