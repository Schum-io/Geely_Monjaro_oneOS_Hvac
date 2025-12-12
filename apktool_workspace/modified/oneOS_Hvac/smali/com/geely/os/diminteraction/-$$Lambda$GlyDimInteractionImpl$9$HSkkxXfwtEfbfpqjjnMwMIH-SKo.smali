.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$9$HSkkxXfwtEfbfpqjjnMwMIH-SKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/geely/os/diminteraction/IGlyAddress;


# direct methods
.method public synthetic constructor <init>(ILcom/geely/os/diminteraction/IGlyAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$9$HSkkxXfwtEfbfpqjjnMwMIH-SKo;->f$0:I

    iput-object p2, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$9$HSkkxXfwtEfbfpqjjnMwMIH-SKo;->f$1:Lcom/geely/os/diminteraction/IGlyAddress;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$9$HSkkxXfwtEfbfpqjjnMwMIH-SKo;->f$0:I

    iget-object v1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$9$HSkkxXfwtEfbfpqjjnMwMIH-SKo;->f$1:Lcom/geely/os/diminteraction/IGlyAddress;

    check-cast p1, Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;

    invoke-static {v0, v1, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;->lambda$onDoInteractionAction$0(ILcom/geely/os/diminteraction/IGlyAddress;Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;)V

    return-void
.end method
