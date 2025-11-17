.class public Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;
.super Ljava/lang/Object;
.source "WeatherHoursResponse.java"


# instance fields
.field private id:I

.field private temp:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;

.field private weathPheno:Ljava/lang/String;

.field private windCode:Ljava/lang/String;

.field private windDirCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->id:I

    return v0
.end method

.method public getTemp()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->temp:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWeathPheno()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->weathPheno:Ljava/lang/String;

    return-object v0
.end method

.method public getWindCode()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->windCode:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->windDirCode:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 22
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->id:I

    return-void
.end method

.method public setTemp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->temp:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateTime"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setWeathPheno(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weathPheno"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->weathPheno:Ljava/lang/String;

    return-void
.end method

.method public setWindCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windCode"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->windCode:Ljava/lang/String;

    return-void
.end method

.method public setWindDirCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windDirCode"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherHoursResponse;->windDirCode:Ljava/lang/String;

    return-void
.end method
