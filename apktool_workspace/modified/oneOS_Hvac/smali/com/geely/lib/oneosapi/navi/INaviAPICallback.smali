.class public interface abstract Lcom/geely/lib/oneosapi/navi/INaviAPICallback;
.super Ljava/lang/Object;
.source "INaviAPICallback.java"


# virtual methods
.method public abstract onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviErrorModel"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviBaseModel"
        }
    .end annotation
.end method
