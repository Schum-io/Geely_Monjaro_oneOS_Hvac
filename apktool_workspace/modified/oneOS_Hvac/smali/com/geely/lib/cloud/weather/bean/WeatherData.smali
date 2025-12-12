.class public Lcom/geely/lib/cloud/weather/bean/WeatherData;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;,
        Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;,
        Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;,
        Lcom/geely/lib/cloud/weather/bean/WeatherData$AlertBean;
    }
.end annotation


# instance fields
.field private alert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/WeatherData$AlertBean;",
            ">;"
        }
    .end annotation
.end field

.field private carWashing:I

.field private coldRisk:I

.field private comfort:I

.field private humidity:D

.field private pm25:I

.field private predication:Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;

.field private skycon:Ljava/lang/String;

.field private temperature:Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;

.field private ultraviolet:I

.field private wind:Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;

.field private windPower:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlert()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/WeatherData$AlertBean;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->alert:Ljava/util/List;

    return-object v0
.end method

.method public getCarWashing()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->carWashing:I

    return v0
.end method

.method public getColdRisk()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->coldRisk:I

    return v0
.end method

.method public getComfort()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->comfort:I

    return v0
.end method

.method public getHumidity()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->humidity:D

    return-wide v0
.end method

.method public getPm25()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->pm25:I

    return v0
.end method

.method public getPredication()Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->predication:Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;

    return-object v0
.end method

.method public getSkycon()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->skycon:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->temperature:Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;

    return-object v0
.end method

.method public getUltraviolet()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->ultraviolet:I

    return v0
.end method

.method public getWind()Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->wind:Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;

    return-object v0
.end method

.method public getWindPower()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->windPower:I

    return v0
.end method

.method public setAlert(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/WeatherData$AlertBean;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->alert:Ljava/util/List;

    return-void
.end method

.method public setCarWashing(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carWashing"
        }
    .end annotation

    .line 89
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->carWashing:I

    return-void
.end method

.method public setColdRisk(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coldRisk"
        }
    .end annotation

    .line 97
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->coldRisk:I

    return-void
.end method

.method public setComfort(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comfort"
        }
    .end annotation

    .line 81
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->comfort:I

    return-void
.end method

.method public setHumidity(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "humidity"
        }
    .end annotation

    .line 65
    iput-wide p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->humidity:D

    return-void
.end method

.method public setPm25(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pm25"
        }
    .end annotation

    .line 57
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->pm25:I

    return-void
.end method

.method public setPredication(Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predication"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->predication:Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;

    return-void
.end method

.method public setSkycon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skycon"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->skycon:Ljava/lang/String;

    return-void
.end method

.method public setTemperature(Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->temperature:Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;

    return-void
.end method

.method public setUltraviolet(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ultraviolet"
        }
    .end annotation

    .line 73
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->ultraviolet:I

    return-void
.end method

.method public setWind(Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wind"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->wind:Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;

    return-void
.end method

.method public setWindPower(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windPower"
        }
    .end annotation

    .line 41
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData;->windPower:I

    return-void
.end method
