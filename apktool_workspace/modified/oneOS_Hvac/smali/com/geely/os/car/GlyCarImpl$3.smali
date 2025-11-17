.class Lcom/geely/os/car/GlyCarImpl$3;
.super Ljava/lang/Object;
.source "GlyCarImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/car/GlyCarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/car/GlyCarImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/car/GlyCarImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl$3;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorEventChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sensor",
            "event"
        }
    .end annotation

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$3;->this$0:Lcom/geely/os/car/GlyCarImpl;

    const/high16 v1, -0x80000000

    invoke-static {v0, p1, v1, p2}, Lcom/geely/os/car/GlyCarImpl;->access$600(Lcom/geely/os/car/GlyCarImpl;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSensorSupportChanged(ILcom/ecarx/xui/adaptapi/FunctionStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sensor",
            "status"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$3;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-virtual {p2}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result p2

    const/high16 v1, -0x80000000

    invoke-static {v0, p1, v1, p2}, Lcom/geely/os/car/GlyCarImpl;->access$700(Lcom/geely/os/car/GlyCarImpl;III)V

    return-void
.end method

.method public onSensorValueChanged(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sensor",
            "value"
        }
    .end annotation

    .line 113
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$3;->this$0:Lcom/geely/os/car/GlyCarImpl;

    const/high16 v1, -0x80000000

    invoke-static {v0, p1, v1, p2}, Lcom/geely/os/car/GlyCarImpl;->access$600(Lcom/geely/os/car/GlyCarImpl;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
