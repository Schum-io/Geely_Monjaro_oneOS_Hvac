.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$f18Dd_T2Fw6WknsVtL7LSAKMTQ8;
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

    iput-object p1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$f18Dd_T2Fw6WknsVtL7LSAKMTQ8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$f18Dd_T2Fw6WknsVtL7LSAKMTQ8;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;

    invoke-static {v0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->lambda$onAnswerAndEndCall$2(Ljava/lang/String;Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V

    return-void
.end method
