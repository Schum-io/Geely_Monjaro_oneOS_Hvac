.class public interface abstract Lcom/geely/lib/oneosapi/navi/observer/IGuideInfoObserver;
.super Ljava/lang/Object;
.source "IGuideInfoObserver.java"


# virtual methods
.method public abstract onGuideInfo(Lcom/geely/lib/oneosapi/navi/entitys/IGuideInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iGuideInfo"
        }
    .end annotation
.end method

.method public abstract onLocationRoadInfo(Lcom/geely/lib/oneosapi/navi/entitys/ILocationRoadInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iLocationRoadInfo"
        }
    .end annotation
.end method

.method public abstract onRoadConditions(Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roadConditions"
        }
    .end annotation
.end method
