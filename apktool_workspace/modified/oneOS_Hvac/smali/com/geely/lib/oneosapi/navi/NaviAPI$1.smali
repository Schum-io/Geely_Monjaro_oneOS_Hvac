.class public Lcom/geely/lib/oneosapi/navi/NaviAPI$1;
.super Ljava/lang/Object;
.source "NaviAPI.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/INaviAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/NaviAPI;->specialPoiNavi(Lcom/geely/lib/oneosapi/navi/model/client/NaviSpecialPoi;ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/NaviAPI;

.field public final synthetic val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

.field public final synthetic val$routePlanStrategy:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviAPI;ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$routePlanStrategy",
            "val$naviAPICallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;->this$0:Lcom/geely/lib/oneosapi/navi/NaviAPI;

    iput p2, p0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;->val$routePlanStrategy:I

    iput-object p3, p0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviErrorModel"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V

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
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;->this$0:Lcom/geely/lib/oneosapi/navi/NaviAPI;

    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/RoutePlanStrategyBean;

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;->val$routePlanStrategy:I

    invoke-direct {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/client/RoutePlanStrategyBean;-><init>(I)V

    new-instance v1, Lcom/geely/lib/oneosapi/navi/NaviAPI$1$1;

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/navi/NaviAPI$1$1;-><init>(Lcom/geely/lib/oneosapi/navi/NaviAPI$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->setRoutePrefer(Lcom/geely/lib/oneosapi/navi/model/client/RoutePlanStrategyBean;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    return-void
.end method
