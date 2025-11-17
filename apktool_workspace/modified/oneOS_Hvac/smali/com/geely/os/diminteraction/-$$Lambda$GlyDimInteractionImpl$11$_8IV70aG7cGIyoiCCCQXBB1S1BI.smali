.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$_8IV70aG7cGIyoiCCCQXBB1S1BI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$_8IV70aG7cGIyoiCCCQXBB1S1BI;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$_8IV70aG7cGIyoiCCCQXBB1S1BI;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;

    invoke-static {v0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->lambda$onAnswerAndHoldCall$1(Ljava/lang/String;Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V

    return-void
.end method
