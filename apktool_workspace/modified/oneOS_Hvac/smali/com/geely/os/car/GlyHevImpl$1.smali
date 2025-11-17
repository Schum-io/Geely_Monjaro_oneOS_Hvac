.class Lcom/geely/os/car/GlyHevImpl$1;
.super Ljava/lang/Object;
.source "GlyHevImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;


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

    .line 27
    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl$1;->this$0:Lcom/geely/os/car/GlyHevImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyHevImpl"

    const-string v1, "IConnectWatcher onConnected"

    .line 30
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDisConnected()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyHevImpl"

    const-string v1, "IConnectWatcher onDisConnected"

    .line 35
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
