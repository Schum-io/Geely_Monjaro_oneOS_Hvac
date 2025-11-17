.class Lcom/geely/os/car/GlyHevImpl$3;
.super Ljava/lang/Object;
.source "GlyHevImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/car/hev/ICharging$IChargingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/car/GlyHevImpl;->registerListener(Lcom/geely/os/car/IGlyChargingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/car/GlyHevImpl;

.field final synthetic val$listener:Lcom/geely/os/car/IGlyChargingListener;


# direct methods
.method constructor <init>(Lcom/geely/os/car/GlyHevImpl;Lcom/geely/os/car/IGlyChargingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl$3;->this$0:Lcom/geely/os/car/GlyHevImpl;

    iput-object p2, p0, Lcom/geely/os/car/GlyHevImpl$3;->val$listener:Lcom/geely/os/car/IGlyChargingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreChargingTimeChanged([Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendars"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl$3;->val$listener:Lcom/geely/os/car/IGlyChargingListener;

    invoke-interface {v0, p1}, Lcom/geely/os/car/IGlyChargingListener;->onPreChargingTimeChanged([Ljava/util/Calendar;)V

    return-void
.end method
