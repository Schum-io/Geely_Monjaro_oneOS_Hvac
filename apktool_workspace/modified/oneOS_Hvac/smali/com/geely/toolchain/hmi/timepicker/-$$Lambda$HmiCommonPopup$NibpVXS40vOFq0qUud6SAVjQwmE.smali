.class public final synthetic Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$0:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    iput-object p2, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$2:I

    iput p4, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$3:I

    iput p5, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$0:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$2:I

    iget v3, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$3:I

    iget v4, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;->f$4:I

    move-object v5, p1

    check-cast v5, Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->lambda$showAtLocation$3$HmiCommonPopup(Landroid/view/View;IIILandroid/view/View;)V

    return-void
.end method
