.class public Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;
.super Ljava/lang/Object;
.source "LocationRoadInfoImpl.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/entitys/ILocationRoadInfo;


# instance fields
.field private fromPoiAddr:Ljava/lang/String;

.field private fromPoiLatitude:D

.field private fromPoiLongitude:D

.field private fromPoiName:Ljava/lang/String;

.field private toPoiAddr:Ljava/lang/String;

.field private toPoiLatitude:D

.field private toPoiLongitude:D

.field private toPoiName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ToPoiName"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->setToPoiName(Ljava/lang/String;)V

    const-string p1, "ToPoiAddr"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->setToPoiAddr(Ljava/lang/String;)V

    const-string p1, "ToPoiLatitude"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {p1, v1, v2}, Lcom/geely/lib/oneosapi/navi/utils/Utils;->string2double(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->setToPoiLatitude(D)V

    const-string p1, "ToPoiLongitude"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/geely/lib/oneosapi/navi/utils/Utils;->string2double(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->setToPoiLongitude(D)V

    const-string p1, "FromPoiName"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->setFromPoiName(Ljava/lang/String;)V

    const-string p1, "FromPoiAddr"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->setFromPoiAddr(Ljava/lang/String;)V

    const-string p1, "FromPoiLatitude"

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/geely/lib/oneosapi/navi/utils/Utils;->string2double(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->setFromPoiLatitude(D)V

    const-string p1, "FromPoiLongitude"

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/geely/lib/oneosapi/navi/utils/Utils;->string2double(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->setFromPoiLongitude(D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ""

    .line 14
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getFromPoiAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->fromPoiAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getFromPoiLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->fromPoiLatitude:D

    return-wide v0
.end method

.method public getFromPoiLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->fromPoiLongitude:D

    return-wide v0
.end method

.method public getFromPoiName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->fromPoiName:Ljava/lang/String;

    return-object v0
.end method

.method public getToPoiAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->toPoiAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getToPoiLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->toPoiLatitude:D

    return-wide v0
.end method

.method public getToPoiLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->toPoiLongitude:D

    return-wide v0
.end method

.method public getToPoiName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->toPoiName:Ljava/lang/String;

    return-object v0
.end method

.method public setFromPoiAddr(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromPoiAddr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->fromPoiAddr:Ljava/lang/String;

    return-void
.end method

.method public setFromPoiLatitude(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromPoiLatitude"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->fromPoiLatitude:D

    return-void
.end method

.method public setFromPoiLongitude(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromPoiLongitude"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->fromPoiLongitude:D

    return-void
.end method

.method public setFromPoiName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromPoiName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->fromPoiName:Ljava/lang/String;

    return-void
.end method

.method public setToPoiAddr(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toPoiAddr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->toPoiAddr:Ljava/lang/String;

    return-void
.end method

.method public setToPoiLatitude(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toPoiLatitude"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->toPoiLatitude:D

    return-void
.end method

.method public setToPoiLongitude(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toPoiLongitude"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->toPoiLongitude:D

    return-void
.end method

.method public setToPoiName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toPoiName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/LocationRoadInfoImpl;->toPoiName:Ljava/lang/String;

    return-void
.end method
