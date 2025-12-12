.class public abstract Lcom/geely/lib/oneosapi/navi/observer/NaviStateObserver;
.super Ljava/lang/Object;
.source "NaviStateObserver.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/observer/INaviStateObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public naviStateChange(Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateType"
        }
    .end annotation

    return-void
.end method
