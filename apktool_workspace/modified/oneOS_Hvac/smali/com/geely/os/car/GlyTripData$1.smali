.class Lcom/geely/os/car/GlyTripData$1;
.super Ljava/lang/Object;
.source "GlyTripData.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/car/GlyTripData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/car/GlyTripData;


# direct methods
.method constructor <init>(Lcom/geely/os/car/GlyTripData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/geely/os/car/GlyTripData$1;->this$0:Lcom/geely/os/car/GlyTripData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReportUpdate$0(Lcom/geely/os/car/IGlyTPTFReport;Lcom/geely/os/car/IGlyTPTFReportListener;)V
    .locals 0

    .line 47
    invoke-interface {p1, p0}, Lcom/geely/os/car/IGlyTPTFReportListener;->onReportUpdate(Lcom/geely/os/car/IGlyTPTFReport;)V

    return-void
.end method


# virtual methods
.method public onReportUpdate(Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itptfReport"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReportUpdate itptfReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyHevImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Lcom/geely/os/car/GlyTripData$1$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/car/GlyTripData$1$1;-><init>(Lcom/geely/os/car/GlyTripData$1;Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;)V

    .line 46
    iget-object p1, p0, Lcom/geely/os/car/GlyTripData$1;->this$0:Lcom/geely/os/car/GlyTripData;

    invoke-static {p1}, Lcom/geely/os/car/GlyTripData;->access$000(Lcom/geely/os/car/GlyTripData;)Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/os/car/GlyTripData$1;->this$0:Lcom/geely/os/car/GlyTripData;

    invoke-static {p1}, Lcom/geely/os/car/GlyTripData;->access$000(Lcom/geely/os/car/GlyTripData;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/geely/os/car/GlyTripData$1;->this$0:Lcom/geely/os/car/GlyTripData;

    invoke-static {p1}, Lcom/geely/os/car/GlyTripData;->access$000(Lcom/geely/os/car/GlyTripData;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/car/-$$Lambda$GlyTripData$1$QDGv4TCn7NqHMZt1_LnCYfRsmMc;

    invoke-direct {v1, v0}, Lcom/geely/os/car/-$$Lambda$GlyTripData$1$QDGv4TCn7NqHMZt1_LnCYfRsmMc;-><init>(Lcom/geely/os/car/IGlyTPTFReport;)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
