.class public Lcom/geely/lib/oneosapi/mediacenter/manager/CarManager;
.super Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;
.source "CarManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "service",
            "mediaCenterManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    return-void
.end method
