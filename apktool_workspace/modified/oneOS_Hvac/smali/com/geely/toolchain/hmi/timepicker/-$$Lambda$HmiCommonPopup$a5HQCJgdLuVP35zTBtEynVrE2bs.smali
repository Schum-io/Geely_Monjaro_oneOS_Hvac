.class public final synthetic Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$a5HQCJgdLuVP35zTBtEynVrE2bs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$a5HQCJgdLuVP35zTBtEynVrE2bs;->f$0:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    iput-object p2, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$a5HQCJgdLuVP35zTBtEynVrE2bs;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$a5HQCJgdLuVP35zTBtEynVrE2bs;->f$0:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$a5HQCJgdLuVP35zTBtEynVrE2bs;->f$1:Landroid/view/View;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->lambda$showAsDropDown$1$HmiCommonPopup(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
