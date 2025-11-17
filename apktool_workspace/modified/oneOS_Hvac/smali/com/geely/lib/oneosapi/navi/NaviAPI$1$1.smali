.class public Lcom/geely/lib/oneosapi/navi/NaviAPI$1$1;
.super Ljava/lang/Object;
.source "NaviAPI.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/INaviAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/NaviAPI$1;->onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/navi/NaviAPI$1;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviAPI$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1$1;->this$1:Lcom/geely/lib/oneosapi/navi/NaviAPI$1;

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
    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;->getErrorCode()I

    move-result v0

    const/16 v1, 0x273e

    if-eq v1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1$1;->this$1:Lcom/geely/lib/oneosapi/navi/NaviAPI$1;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviBaseModel1"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1$1;->this$1:Lcom/geely/lib/oneosapi/navi/NaviAPI$1;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;->val$naviAPICallback:Lcom/geely/lib/oneosapi/navi/INaviAPICallback;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    return-void
.end method
