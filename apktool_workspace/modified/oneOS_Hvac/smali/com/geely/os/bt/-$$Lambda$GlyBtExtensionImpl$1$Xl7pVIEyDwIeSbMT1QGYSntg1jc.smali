.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/bt/GlyBtDevice;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/bt/GlyBtDevice;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc;->f$0:Lcom/geely/os/bt/GlyBtDevice;

    iput p2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc;->f$1:I

    iput p3, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc;->f$0:Lcom/geely/os/bt/GlyBtDevice;

    iget v1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc;->f$1:I

    iget v2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc;->f$2:I

    check-cast p1, Lcom/geely/os/bt/IGlyBtExtensionCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->lambda$onDeviceBondStateChanged$2(Lcom/geely/os/bt/GlyBtDevice;IILcom/geely/os/bt/IGlyBtExtensionCallback;)V

    return-void
.end method
