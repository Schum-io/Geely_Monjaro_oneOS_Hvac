.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$13$SSCBgRnABMj9CusN6dT4nyoHoh8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/geely/os/diminteraction/IGlyVendorInformation;


# direct methods
.method public synthetic constructor <init>(ILcom/geely/os/diminteraction/IGlyVendorInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$13$SSCBgRnABMj9CusN6dT4nyoHoh8;->f$0:I

    iput-object p2, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$13$SSCBgRnABMj9CusN6dT4nyoHoh8;->f$1:Lcom/geely/os/diminteraction/IGlyVendorInformation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$13$SSCBgRnABMj9CusN6dT4nyoHoh8;->f$0:I

    iget-object v1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$13$SSCBgRnABMj9CusN6dT4nyoHoh8;->f$1:Lcom/geely/os/diminteraction/IGlyVendorInformation;

    check-cast p1, Lcom/geely/os/diminteraction/IGlyVendorInteractionCallback;

    invoke-static {v0, v1, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;->lambda$onInteractionAction$0(ILcom/geely/os/diminteraction/IGlyVendorInformation;Lcom/geely/os/diminteraction/IGlyVendorInteractionCallback;)V

    return-void
.end method
