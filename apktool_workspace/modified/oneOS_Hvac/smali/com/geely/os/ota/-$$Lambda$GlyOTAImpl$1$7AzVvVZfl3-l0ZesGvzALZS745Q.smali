.class public final synthetic Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$7AzVvVZfl3-l0ZesGvzALZS745Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$7AzVvVZfl3-l0ZesGvzALZS745Q;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$7AzVvVZfl3-l0ZesGvzALZS745Q;->f$0:I

    check-cast p1, Lcom/geely/os/ota/IGlyOtaSessionCallback;

    invoke-static {v0, p1}, Lcom/geely/os/ota/GlyOTAImpl$1;->lambda$onVGMStatusReport$12(ILcom/geely/os/ota/IGlyOtaSessionCallback;)V

    return-void
.end method
