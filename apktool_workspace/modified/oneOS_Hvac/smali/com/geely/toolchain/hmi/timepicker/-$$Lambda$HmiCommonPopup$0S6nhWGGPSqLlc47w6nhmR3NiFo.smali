.class public final synthetic Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;->f$0:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    iput-object p2, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;->f$2:I

    iput p4, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;->f$0:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;->f$2:I

    iget v3, p0, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;->f$3:I

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->lambda$showAsDropDown$0$HmiCommonPopup(Landroid/view/View;IILandroid/view/View;)V

    return-void
.end method
