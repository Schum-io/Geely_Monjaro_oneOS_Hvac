.class public final synthetic Lcom/geely/hvac/psd/viewmodel/-$$Lambda$GlyICarViewModel$1$HTO6afplKPiDnTtQumNTN_AuagA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/hvac/psd/viewmodel/-$$Lambda$GlyICarViewModel$1$HTO6afplKPiDnTtQumNTN_AuagA;->f$0:I

    iput p2, p0, Lcom/geely/hvac/psd/viewmodel/-$$Lambda$GlyICarViewModel$1$HTO6afplKPiDnTtQumNTN_AuagA;->f$1:I

    iput-object p3, p0, Lcom/geely/hvac/psd/viewmodel/-$$Lambda$GlyICarViewModel$1$HTO6afplKPiDnTtQumNTN_AuagA;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/geely/hvac/psd/viewmodel/-$$Lambda$GlyICarViewModel$1$HTO6afplKPiDnTtQumNTN_AuagA;->f$0:I

    iget v1, p0, Lcom/geely/hvac/psd/viewmodel/-$$Lambda$GlyICarViewModel$1$HTO6afplKPiDnTtQumNTN_AuagA;->f$1:I

    iget-object v2, p0, Lcom/geely/hvac/psd/viewmodel/-$$Lambda$GlyICarViewModel$1$HTO6afplKPiDnTtQumNTN_AuagA;->f$2:Ljava/lang/Object;

    check-cast p1, Lcom/geely/os/car/IGlyCarEventCallBack;

    invoke-static {v0, v1, v2, p1}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel$1;->lambda$onChangeEvent$0(IILjava/lang/Object;Lcom/geely/os/car/IGlyCarEventCallBack;)V

    return-void
.end method
