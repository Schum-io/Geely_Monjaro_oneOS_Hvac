.class Lcom/geely/os/car/GlyTripData$1$1;
.super Ljava/lang/Object;
.source "GlyTripData.java"

# interfaces
.implements Lcom/geely/os/car/IGlyTPTFReport;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/car/GlyTripData$1;->onReportUpdate(Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/car/GlyTripData$1;

.field final synthetic val$itptfReport:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;


# direct methods
.method constructor <init>(Lcom/geely/os/car/GlyTripData$1;Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$itptfReport"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/geely/os/car/GlyTripData$1$1;->this$1:Lcom/geely/os/car/GlyTripData$1;

    iput-object p2, p0, Lcom/geely/os/car/GlyTripData$1$1;->val$itptfReport:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastedUpdateItemFlag()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/geely/os/car/GlyTripData$1$1;->val$itptfReport:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getLastedUpdateItemFlag()I

    move-result v0

    return v0
.end method

.method public getTPTFReportDataScene1()[I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/geely/os/car/GlyTripData$1$1;->val$itptfReport:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getTPTFReportDataScene1()[I

    move-result-object v0

    return-object v0
.end method

.method public getTPTFReportDataScene2()[I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/os/car/GlyTripData$1$1;->val$itptfReport:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getTPTFReportDataScene2()[I

    move-result-object v0

    return-object v0
.end method

.method public getTPTFReportDataScene3()[I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/geely/os/car/GlyTripData$1$1;->val$itptfReport:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getTPTFReportDataScene3()[I

    move-result-object v0

    return-object v0
.end method

.method public getTPTFReportDataScene4()[I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/geely/os/car/GlyTripData$1$1;->val$itptfReport:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getTPTFReportDataScene4()[I

    move-result-object v0

    return-object v0
.end method
