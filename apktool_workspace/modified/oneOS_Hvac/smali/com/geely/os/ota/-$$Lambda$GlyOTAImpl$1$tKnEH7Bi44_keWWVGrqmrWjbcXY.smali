.class public final synthetic Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$tKnEH7Bi44_keWWVGrqmrWjbcXY;
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

    iput-object p1, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$tKnEH7Bi44_keWWVGrqmrWjbcXY;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$tKnEH7Bi44_keWWVGrqmrWjbcXY;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/geely/os/ota/IGlyOtaSessionCallback;

    invoke-static {v0, p1}, Lcom/geely/os/ota/GlyOTAImpl$1;->lambda$onNotificationCurrentCarVersionName$11(Ljava/lang/String;Lcom/geely/os/ota/IGlyOtaSessionCallback;)V

    return-void
.end method
