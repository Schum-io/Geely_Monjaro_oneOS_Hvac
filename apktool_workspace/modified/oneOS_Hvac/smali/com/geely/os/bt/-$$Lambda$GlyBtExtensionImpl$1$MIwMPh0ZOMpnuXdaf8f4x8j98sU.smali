.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$MIwMPh0ZOMpnuXdaf8f4x8j98sU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$MIwMPh0ZOMpnuXdaf8f4x8j98sU;->f$0:I

    iput p2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$MIwMPh0ZOMpnuXdaf8f4x8j98sU;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$MIwMPh0ZOMpnuXdaf8f4x8j98sU;->f$0:I

    iget v1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$MIwMPh0ZOMpnuXdaf8f4x8j98sU;->f$1:I

    check-cast p1, Lcom/geely/os/bt/IGlyBtExtensionCallback;

    invoke-static {v0, v1, p1}, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->lambda$onAdapterStateChanged$0(IILcom/geely/os/bt/IGlyBtExtensionCallback;)V

    return-void
.end method
