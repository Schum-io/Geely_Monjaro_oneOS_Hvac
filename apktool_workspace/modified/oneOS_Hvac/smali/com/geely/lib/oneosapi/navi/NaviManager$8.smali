.class public Lcom/geely/lib/oneosapi/navi/NaviManager$8;
.super Ljava/lang/Object;
.source "NaviManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/INaviAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/NaviManager;->bindUserIdToAMap(Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

.field public final synthetic val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

.field public final synthetic val$userIdBindModel:Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$userIdBindModel",
            "val$naviAPICallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;->val$userIdBindModel:Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;

    iput-object p3, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviErrorModel"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5f53\u524d\u4e0d\u5728\u5bfc\u822a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NaviManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;->val$userIdBindModel:Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2600(Lcom/geely/lib/oneosapi/navi/NaviManager;ILcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    return-void
.end method

.method public onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviBaseModel"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u7ed3\u675f\u5bfc\u822a\u6210\u529f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NaviManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;->val$userIdBindModel:Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2600(Lcom/geely/lib/oneosapi/navi/NaviManager;ILcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    return-void
.end method
