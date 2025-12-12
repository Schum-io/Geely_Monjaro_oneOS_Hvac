.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$X99gn3FBcWG_O3L72KkamTUoHdY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/bt/GlyBtDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/bt/GlyBtDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$X99gn3FBcWG_O3L72KkamTUoHdY;->f$0:Lcom/geely/os/bt/GlyBtDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$X99gn3FBcWG_O3L72KkamTUoHdY;->f$0:Lcom/geely/os/bt/GlyBtDevice;

    check-cast p1, Lcom/geely/os/bt/IGlyBtExtensionCallback;

    invoke-static {v0, p1}, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->lambda$onDeviceUuidsUpdated$3(Lcom/geely/os/bt/GlyBtDevice;Lcom/geely/os/bt/IGlyBtExtensionCallback;)V

    return-void
.end method
