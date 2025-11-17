.class public Lcom/geely/lib/oneosapi/navi/NaviManager$12;
.super Ljava/lang/Object;
.source "NaviManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/INaviAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/NaviManager;->switchMapServerForBindNewMap(ILcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

.field public final synthetic val$mapVendor:I

.field public final synthetic val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

.field public final synthetic val$userIdBindModel:Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviManager;ILcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mapVendor",
            "val$userIdBindModel",
            "val$naviAPICallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iput p2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->val$mapVendor:I

    iput-object p3, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->val$userIdBindModel:Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;

    iput-object p4, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviErrorModel"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$3100(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object p1

    const-string v0, "NaviManager"

    const-string v1, "switch map failed"

    invoke-virtual {p1, v0, v1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviBaseModel"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2800(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch map success mapVendor\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->val$mapVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NaviManager"

    invoke-virtual {p1, v1, v0}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->val$mapVendor:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->val$userIdBindModel:Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-static {p1, v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2901(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->val$userIdBindModel:Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-static {p1, v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$3001(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    :cond_1
    :goto_0
    return-void
.end method
