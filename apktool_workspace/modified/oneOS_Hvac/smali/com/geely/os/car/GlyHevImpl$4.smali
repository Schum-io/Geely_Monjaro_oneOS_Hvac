.class Lcom/geely/os/car/GlyHevImpl$4;
.super Ljava/lang/Object;
.source "GlyHevImpl.java"

# interfaces
.implements Lcom/geely/os/car/IGlyTPTFReport;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/car/GlyHevImpl;->getTPTFReportInfo()Lcom/geely/os/car/IGlyTPTFReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/car/GlyHevImpl;

.field final synthetic val$report:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;


# direct methods
.method constructor <init>(Lcom/geely/os/car/GlyHevImpl;Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$report"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 398
    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl$4;->this$0:Lcom/geely/os/car/GlyHevImpl;

    iput-object p2, p0, Lcom/geely/os/car/GlyHevImpl$4;->val$report:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastedUpdateItemFlag()I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl$4;->val$report:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getLastedUpdateItemFlag()I

    move-result v0

    return v0
.end method

.method public getTPTFReportDataScene1()[I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl$4;->val$report:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getTPTFReportDataScene1()[I

    move-result-object v0

    return-object v0
.end method

.method public getTPTFReportDataScene2()[I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl$4;->val$report:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getTPTFReportDataScene2()[I

    move-result-object v0

    return-object v0
.end method

.method public getTPTFReportDataScene3()[I
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl$4;->val$report:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getTPTFReportDataScene3()[I

    move-result-object v0

    return-object v0
.end method

.method public getTPTFReportDataScene4()[I
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl$4;->val$report:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;->getTPTFReportDataScene4()[I

    move-result-object v0

    return-object v0
.end method
