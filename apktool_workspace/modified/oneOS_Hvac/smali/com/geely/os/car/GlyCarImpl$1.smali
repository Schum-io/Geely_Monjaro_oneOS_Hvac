.class Lcom/geely/os/car/GlyCarImpl$1;
.super Ljava/lang/Object;
.source "GlyCarImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;


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

    .line 38
    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl$1;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 7

    const-string v0, "OneVehicleSDK"

    const-string v1, "IConnectWatcher onConnected"

    .line 41
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$1;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$100(Lcom/geely/os/car/GlyCarImpl;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object v1

    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getICarFunction()Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyCarImpl;->access$002(Lcom/geely/os/car/GlyCarImpl;Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;)Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    .line 43
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$1;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$100(Lcom/geely/os/car/GlyCarImpl;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object v1

    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getSensorManager()Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyCarImpl;->access$202(Lcom/geely/os/car/GlyCarImpl;Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;)Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    .line 44
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$1;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$100(Lcom/geely/os/car/GlyCarImpl;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object v1

    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getCarInfoManager()Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyCarImpl;->access$302(Lcom/geely/os/car/GlyCarImpl;Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;)Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    .line 45
    const-class v0, Lcom/geely/os/car/GlyCarPropertyIds;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 48
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 49
    iget-object v6, p0, Lcom/geely/os/car/GlyCarImpl$1;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v6}, Lcom/geely/os/car/GlyCarImpl;->access$400(Lcom/geely/os/car/GlyCarImpl;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$1;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$500(Lcom/geely/os/car/GlyCarImpl;)Lcom/geely/os/car/ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$1;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$500(Lcom/geely/os/car/GlyCarImpl;)Lcom/geely/os/car/ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/geely/os/car/ConnectionListener;->onConnected()V

    :cond_1
    return-void
.end method

.method public onDisConnected()V
    .locals 2

    const-string v0, "OneVehicleSDK"

    const-string v1, "IConnectWatcher onDisConnected"

    .line 61
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$1;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$500(Lcom/geely/os/car/GlyCarImpl;)Lcom/geely/os/car/ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$1;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$500(Lcom/geely/os/car/GlyCarImpl;)Lcom/geely/os/car/ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/geely/os/car/ConnectionListener;->onDisConnected()V

    :cond_0
    return-void
.end method
