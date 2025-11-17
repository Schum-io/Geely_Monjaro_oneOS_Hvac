.class public Lcom/geely/os/car/GlyTripData;
.super Ljava/lang/Object;
.source "GlyTripData.java"


# instance fields
.field private mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

.field private mTptfReportListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/car/IGlyTPTFReportListener;",
            ">;"
        }
    .end annotation
.end field

.field private reportListener:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReportListener;


# direct methods
.method public constructor <init>(Lcom/ecarx/xui/adaptapi/car/hev/ITripData;Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tripData",
            "tptfReportListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ecarx/xui/adaptapi/car/hev/ITripData;",
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/car/IGlyTPTFReportListener;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/geely/os/car/GlyTripData$1;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyTripData$1;-><init>(Lcom/geely/os/car/GlyTripData;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyTripData;->reportListener:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReportListener;

    .line 11
    iput-object p1, p0, Lcom/geely/os/car/GlyTripData;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    .line 12
    iput-object p2, p0, Lcom/geely/os/car/GlyTripData;->mTptfReportListeners:Landroid/util/ArraySet;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/car/GlyTripData;)Landroid/util/ArraySet;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/geely/os/car/GlyTripData;->mTptfReportListeners:Landroid/util/ArraySet;

    return-object p0
.end method


# virtual methods
.method public registerTPTFReportListener()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyTripData"

    const-string v1, "registerTPTFReportListener"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/geely/os/car/GlyTripData;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    iget-object v1, p0, Lcom/geely/os/car/GlyTripData;->reportListener:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReportListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->registerTPTFReportListener(Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReportListener;)V

    return-void
.end method

.method public unregisterTPTFReportListener()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyTripData"

    const-string v1, "unregisterTPTFReportListener"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/geely/os/car/GlyTripData;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/geely/os/car/GlyTripData;->reportListener:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReportListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->unregisterTPTFReportListener(Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReportListener;)V

    :cond_0
    return-void
.end method
