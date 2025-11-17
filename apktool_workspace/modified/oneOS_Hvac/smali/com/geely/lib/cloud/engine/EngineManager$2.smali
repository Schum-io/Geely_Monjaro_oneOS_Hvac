.class Lcom/geely/lib/cloud/engine/EngineManager$2;
.super Lcom/geely/lib/cloud/ICloudCallback$Stub;
.source "EngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/cloud/engine/EngineManager;->getVehicleCloudUpdateReport(Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/lib/cloud/engine/EngineManager;

.field final synthetic val$callback:Lcom/geely/lib/cloud/listener/OperationListener;


# direct methods
.method constructor <init>(Lcom/geely/lib/cloud/engine/EngineManager;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/EngineManager$2;->this$0:Lcom/geely/lib/cloud/engine/EngineManager;

    iput-object p2, p0, Lcom/geely/lib/cloud/engine/EngineManager$2;->val$callback:Lcom/geely/lib/cloud/listener/OperationListener;

    invoke-direct {p0}, Lcom/geely/lib/cloud/ICloudCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/EngineManager$2;->val$callback:Lcom/geely/lib/cloud/listener/OperationListener;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/EngineManager$2;->val$callback:Lcom/geely/lib/cloud/listener/OperationListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
