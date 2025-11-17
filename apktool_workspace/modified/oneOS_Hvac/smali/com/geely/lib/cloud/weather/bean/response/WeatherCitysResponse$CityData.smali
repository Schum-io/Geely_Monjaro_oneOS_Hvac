.class public Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;
.super Ljava/lang/Object;
.source "WeatherCitysResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityData"
.end annotation


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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirect()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->direct:I

    return v0
.end method

.method public getDistrictCN()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->districtCN:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictEN()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->districtEN:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCN()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->nameCN:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEN()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->nameEN:Ljava/lang/String;

    return-object v0
.end method

.method public getProvCN()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->provCN:Ljava/lang/String;

    return-object v0
.end method

.method public getProvEN()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->provEN:Ljava/lang/String;

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

    .line 63
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->areaId:Ljava/lang/String;

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

    .line 95
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->direct:I

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

    .line 47
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->districtCN:Ljava/lang/String;

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

    .line 79
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->districtEN:Ljava/lang/String;

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

    .line 55
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->nameCN:Ljava/lang/String;

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

    .line 87
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->nameEN:Ljava/lang/String;

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

    .line 39
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->provCN:Ljava/lang/String;

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

    .line 71
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherCitysResponse$CityData;->provEN:Ljava/lang/String;

    return-void
.end method
