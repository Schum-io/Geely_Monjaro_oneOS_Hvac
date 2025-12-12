.class public Lcom/geely/lib/oneosapi/navi/model/service/RspLaunchMap;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "RspLaunchMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private mapLaunchedType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getMapLaunchedType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspLaunchMap;->mapLaunchedType:I

    return v0
.end method

.method public setMapLaunchedType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapLaunchedType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspLaunchMap;->mapLaunchedType:I

    return-void
.end method
