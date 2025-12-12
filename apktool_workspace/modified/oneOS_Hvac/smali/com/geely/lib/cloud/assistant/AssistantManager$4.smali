.class Lcom/geely/lib/cloud/assistant/AssistantManager$4;
.super Lcom/geely/lib/cloud/ICloudCallback$Stub;
.source "AssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/cloud/assistant/AssistantManager;->getDrivingPositions(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/lib/cloud/assistant/AssistantManager;

.field final synthetic val$callback:Lcom/geely/lib/cloud/listener/OperationListener;


# direct methods
.method constructor <init>(Lcom/geely/lib/cloud/assistant/AssistantManager;Lcom/geely/lib/cloud/listener/OperationListener;)V
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

    .line 104
    iput-object p1, p0, Lcom/geely/lib/cloud/assistant/AssistantManager$4;->this$0:Lcom/geely/lib/cloud/assistant/AssistantManager;

    iput-object p2, p0, Lcom/geely/lib/cloud/assistant/AssistantManager$4;->val$callback:Lcom/geely/lib/cloud/listener/OperationListener;

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

    .line 114
    iget-object v0, p0, Lcom/geely/lib/cloud/assistant/AssistantManager$4;->val$callback:Lcom/geely/lib/cloud/listener/OperationListener;

    if-eqz v0, :cond_0

    .line 115
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

    .line 107
    iget-object v0, p0, Lcom/geely/lib/cloud/assistant/AssistantManager$4;->val$callback:Lcom/geely/lib/cloud/listener/OperationListener;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
