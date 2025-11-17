.class Lcom/geely/os/car/GlyHevImpl$2;
.super Ljava/lang/Object;
.source "GlyHevImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/car/GlyHevImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/car/GlyHevImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/car/GlyHevImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl$2;->this$0:Lcom/geely/os/car/GlyHevImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvgEnergyInfoUpdate(Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IAvgEnergyInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iAvgEnergyInfo"
        }
    .end annotation

    return-void
.end method

.method public onDrivingInfoUpdate(Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IDrivingInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iDrivingInfo"
        }
    .end annotation

    return-void
.end method

.method public onTripDataReset(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    return-void
.end method

.method public onTripInfoUpdate(Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTripInfo"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTripInfoUpdate iTripInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneVehicleSDK_GlyHevImpl"

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/geely/os/car/GlyHevImpl$2;->this$0:Lcom/geely/os/car/GlyHevImpl;

    invoke-static {p1}, Lcom/geely/os/car/GlyHevImpl;->access$000(Lcom/geely/os/car/GlyHevImpl;)Lcom/geely/os/car/IGlyHevCallBack;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/geely/os/car/GlyHevImpl$2;->this$0:Lcom/geely/os/car/GlyHevImpl;

    invoke-static {p1}, Lcom/geely/os/car/GlyHevImpl;->access$000(Lcom/geely/os/car/GlyHevImpl;)Lcom/geely/os/car/IGlyHevCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/geely/os/car/IGlyHevCallBack;->tripInfoChange()V

    :cond_0
    return-void
.end method
