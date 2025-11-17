.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$eg3RQoKvBcnkoKT2Ppitid84pX0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/diminteraction/IGlyMedia;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/diminteraction/IGlyMedia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$eg3RQoKvBcnkoKT2Ppitid84pX0;->f$0:Lcom/geely/os/diminteraction/IGlyMedia;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$eg3RQoKvBcnkoKT2Ppitid84pX0;->f$0:Lcom/geely/os/diminteraction/IGlyMedia;

    check-cast p1, Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;

    invoke-static {v0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;->lambda$onMediaSelected$1(Lcom/geely/os/diminteraction/IGlyMedia;Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;)V

    return-void
.end method
