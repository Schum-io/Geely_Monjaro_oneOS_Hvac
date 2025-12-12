.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$HONg4A7JNCzCrsNc_6n54yzCibk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$HONg4A7JNCzCrsNc_6n54yzCibk;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$HONg4A7JNCzCrsNc_6n54yzCibk;->f$0:Ljava/util/List;

    check-cast p1, Lcom/geely/os/bt/IGlyBtExtensionCallback;

    invoke-static {v0, p1}, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->lambda$onPairedDevicesChanged$5(Ljava/util/List;Lcom/geely/os/bt/IGlyBtExtensionCallback;)V

    return-void
.end method
