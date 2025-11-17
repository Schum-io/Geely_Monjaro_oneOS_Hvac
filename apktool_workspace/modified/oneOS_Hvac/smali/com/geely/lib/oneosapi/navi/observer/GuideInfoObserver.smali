.class public abstract Lcom/geely/lib/oneosapi/navi/observer/GuideInfoObserver;
.super Ljava/lang/Object;
.source "GuideInfoObserver.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/observer/IGuideInfoObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuideInfo(Lcom/geely/lib/oneosapi/navi/entitys/IGuideInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    return-void
.end method

.method public onLocationRoadInfo(Lcom/geely/lib/oneosapi/navi/entitys/ILocationRoadInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    return-void
.end method

.method public onRoadConditions(Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roadConditions"
        }
    .end annotation

    return-void
.end method
