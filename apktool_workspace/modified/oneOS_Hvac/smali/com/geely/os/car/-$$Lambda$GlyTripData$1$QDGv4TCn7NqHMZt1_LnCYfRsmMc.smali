.class public final synthetic Lcom/geely/os/car/-$$Lambda$GlyTripData$1$QDGv4TCn7NqHMZt1_LnCYfRsmMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/car/IGlyTPTFReport;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/car/IGlyTPTFReport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/car/-$$Lambda$GlyTripData$1$QDGv4TCn7NqHMZt1_LnCYfRsmMc;->f$0:Lcom/geely/os/car/IGlyTPTFReport;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/car/-$$Lambda$GlyTripData$1$QDGv4TCn7NqHMZt1_LnCYfRsmMc;->f$0:Lcom/geely/os/car/IGlyTPTFReport;

    check-cast p1, Lcom/geely/os/car/IGlyTPTFReportListener;

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyTripData$1;->lambda$onReportUpdate$0(Lcom/geely/os/car/IGlyTPTFReport;Lcom/geely/os/car/IGlyTPTFReportListener;)V

    return-void
.end method
