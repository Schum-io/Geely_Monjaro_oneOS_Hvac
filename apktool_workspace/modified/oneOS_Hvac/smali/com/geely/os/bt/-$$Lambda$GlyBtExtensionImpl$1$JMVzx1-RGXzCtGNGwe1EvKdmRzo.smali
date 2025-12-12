.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$JMVzx1-RGXzCtGNGwe1EvKdmRzo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/geely/os/bt/GlyBtDevice;


# direct methods
.method public synthetic constructor <init>(ILcom/geely/os/bt/GlyBtDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$JMVzx1-RGXzCtGNGwe1EvKdmRzo;->f$0:I

    iput-object p2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$JMVzx1-RGXzCtGNGwe1EvKdmRzo;->f$1:Lcom/geely/os/bt/GlyBtDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$JMVzx1-RGXzCtGNGwe1EvKdmRzo;->f$0:I

    iget-object v1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$JMVzx1-RGXzCtGNGwe1EvKdmRzo;->f$1:Lcom/geely/os/bt/GlyBtDevice;

    check-cast p1, Lcom/geely/os/bt/IGlyBtExtensionCallback;

    invoke-static {v0, v1, p1}, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->lambda$onDeviceFoundChanged$1(ILcom/geely/os/bt/GlyBtDevice;Lcom/geely/os/bt/IGlyBtExtensionCallback;)V

    return-void
.end method
