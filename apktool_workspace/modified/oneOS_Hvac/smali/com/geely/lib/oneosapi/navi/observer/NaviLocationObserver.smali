.class public abstract Lcom/geely/lib/oneosapi/navi/observer/NaviLocationObserver;
.super Ljava/lang/Object;
.source "NaviLocationObserver.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/observer/INaviLocationObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCityChanged(Lcom/geely/lib/oneosapi/navi/INaviLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    return-void
.end method

.method public onDistrictChanged(Lcom/geely/lib/oneosapi/navi/INaviLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    return-void
.end method

.method public onLocation(Lcom/geely/lib/oneosapi/navi/INaviLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    return-void
.end method
