.class public Lcom/geely/lib/oneosapi/navi/NaviManager$6;
.super Ljava/lang/Object;
.source "NaviManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/INaviAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/NaviManager;->cycleSearchKeyword(Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

.field public final synthetic val$action:I

.field public final synthetic val$destList:Ljava/util/List;

.field public final synthetic val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

.field public final synthetic val$strategy:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$destList",
            "val$strategy",
            "val$action",
            "val$naviAPICallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$destList:Ljava/util/List;

    iput p3, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$strategy:I

    iput p4, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$action:I

    iput-object p5, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2300(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multiDestNavi---searchByKeyword---onFail\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NaviManager"

    invoke-virtual {v0, v2, v1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2002(Lcom/geely/lib/oneosapi/navi/NaviManager;I)I

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2102(Lcom/geely/lib/oneosapi/navi/NaviManager;Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V

    return-void
.end method

.method public onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviBaseModel"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1900(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multiDestNavi---searchByKeyword---onSuccess\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NaviManager"

    invoke-virtual {v0, v2, v1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2008(Lcom/geely/lib/oneosapi/navi/NaviManager;)I

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2000(Lcom/geely/lib/oneosapi/navi/NaviManager;)I

    move-result v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$destList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 5
    check-cast p1, Lcom/geely/lib/oneosapi/navi/model/service/RspPoiSearchResult;

    .line 6
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/service/RspPoiSearchResult;->getPOIList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;->getLatLng()Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;->setLatLng(Lcom/geely/lib/oneosapi/navi/model/base/LatLng;)Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 8
    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/service/RspPoiSearchResult;->getPOIList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi;

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;->setName(Ljava/lang/String;)Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 9
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2100(Lcom/geely/lib/oneosapi/navi/NaviManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$destList:Ljava/util/List;

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$strategy:I

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$action:I

    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2200(Lcom/geely/lib/oneosapi/navi/NaviManager;Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lcom/geely/lib/oneosapi/navi/model/service/RspPoiSearchResult;

    .line 14
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/service/RspPoiSearchResult;->getPOIList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;-><init>(Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V

    .line 15
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2100(Lcom/geely/lib/oneosapi/navi/NaviManager;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->setViaPoiInfos(Ljava/util/List;)V

    .line 16
    iget p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$strategy:I

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->setStrategy(I)V

    .line 17
    iget p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$action:I

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->setAction(I)V

    .line 19
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-virtual {p1, v0, v3}, Lcom/geely/lib/oneosapi/navi/NaviManager;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    .line 20
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p1, v2}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2002(Lcom/geely/lib/oneosapi/navi/NaviManager;I)I

    .line 21
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$6;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {p1, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$2102(Lcom/geely/lib/oneosapi/navi/NaviManager;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-void
.end method
