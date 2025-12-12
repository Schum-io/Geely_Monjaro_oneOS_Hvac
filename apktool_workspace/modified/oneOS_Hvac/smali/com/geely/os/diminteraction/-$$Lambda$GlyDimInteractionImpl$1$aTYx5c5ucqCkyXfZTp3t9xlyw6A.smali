.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A;
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

    iput p1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A;->f$0:I

    iput p2, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A;->f$1:I

    iput-object p3, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A;->f$0:I

    iget v1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A;->f$1:I

    iget-object v2, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$1$aTYx5c5ucqCkyXfZTp3t9xlyw6A;->f$2:Ljava/lang/Object;

    check-cast p1, Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$1;->lambda$onDoInteractionAction$1(IILjava/lang/Object;Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;)V

    return-void
.end method
