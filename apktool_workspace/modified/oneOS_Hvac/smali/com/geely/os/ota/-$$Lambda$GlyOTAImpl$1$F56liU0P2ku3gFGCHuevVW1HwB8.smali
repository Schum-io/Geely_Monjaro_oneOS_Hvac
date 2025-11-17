.class public final synthetic Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8;->f$0:I

    iput p2, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8;->f$1:I

    iput p3, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8;->f$0:I

    iget v1, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8;->f$1:I

    iget v2, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8;->f$2:I

    check-cast p1, Lcom/geely/os/ota/IGlyOtaSessionCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/geely/os/ota/GlyOTAImpl$1;->lambda$onInstallProgressReport$10(IIILcom/geely/os/ota/IGlyOtaSessionCallback;)V

    return-void
.end method
