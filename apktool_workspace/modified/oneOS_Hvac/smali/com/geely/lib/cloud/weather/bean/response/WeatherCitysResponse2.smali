.class public Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;
.super Ljava/lang/Object;
.source "WeatherCitysResponse2.java"


# instance fields
.field private areaId:Ljava/lang/String;

.field private direct:I

.field private districtCN:Ljava/lang/String;

.field private districtEN:Ljava/lang/String;

.field private nameCN:Ljava/lang/String;

.field private nameEN:Ljava/lang/String;

.field private provCN:Ljava/lang/String;

.field private provEN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirect()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->direct:I

    return v0
.end method

.method public getDistrictCN()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->districtCN:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictEN()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->districtEN:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCN()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->nameCN:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEN()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->nameEN:Ljava/lang/String;

    return-object v0
.end method

.method public getProvCN()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->provCN:Ljava/lang/String;

    return-object v0
.end method

.method public getProvEN()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->provEN:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "areaId"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->areaId:Ljava/lang/String;

    return-void
.end method

.method public setDirect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direct"
        }
    .end annotation

    .line 83
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->direct:I

    return-void
.end method

.method public setDistrictCN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "districtCN"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->districtCN:Ljava/lang/String;

    return-void
.end method

.method public setDistrictEN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "districtEN"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->districtEN:Ljava/lang/String;

    return-void
.end method

.method public setNameCN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameCN"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->nameCN:Ljava/lang/String;

    return-void
.end method

.method public setNameEN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameEN"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->nameEN:Ljava/lang/String;

    return-void
.end method

.method public setProvCN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provCN"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->provCN:Ljava/lang/String;

    return-void
.end method

.method public setProvEN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provEN"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse2;->provEN:Ljava/lang/String;

    return-void
.end method
