.class public Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;
.super Ljava/lang/Object;
.source "WeatherMoreDaysResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoreDaysData"
.end annotation


# instance fields
.field private allMaxTemp:Ljava/lang/String;

.field private allMinTemp:Ljava/lang/String;

.field private dayWeathPheno:Ljava/lang/String;

.field private dayWind:Ljava/lang/String;

.field private dayWindDir:Ljava/lang/String;

.field private nightWeathPheno:Ljava/lang/String;

.field private nightWind:Ljava/lang/String;

.field private nightWindDir:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;

.field private week:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllMaxTemp()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->allMaxTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getAllMinTemp()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->allMinTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getDayWeathPheno()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->dayWeathPheno:Ljava/lang/String;

    return-object v0
.end method

.method public getDayWind()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->dayWind:Ljava/lang/String;

    return-object v0
.end method

.method public getDayWindDir()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->dayWindDir:Ljava/lang/String;

    return-object v0
.end method

.method public getNightWeathPheno()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->nightWeathPheno:Ljava/lang/String;

    return-object v0
.end method

.method public getNightWind()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->nightWind:Ljava/lang/String;

    return-object v0
.end method

.method public getNightWindDir()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->nightWindDir:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->week:Ljava/lang/String;

    return-object v0
.end method

.method public setAllMaxTemp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allMaxTemp"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->allMaxTemp:Ljava/lang/String;

    return-void
.end method

.method public setAllMinTemp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allMinTemp"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->allMinTemp:Ljava/lang/String;

    return-void
.end method

.method public setDayWeathPheno(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dayWeathPheno"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->dayWeathPheno:Ljava/lang/String;

    return-void
.end method

.method public setDayWind(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dayWind"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->dayWind:Ljava/lang/String;

    return-void
.end method

.method public setDayWindDir(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dayWindDir"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->dayWindDir:Ljava/lang/String;

    return-void
.end method

.method public setNightWeathPheno(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nightWeathPheno"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->nightWeathPheno:Ljava/lang/String;

    return-void
.end method

.method public setNightWind(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nightWind"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->nightWind:Ljava/lang/String;

    return-void
.end method

.method public setNightWindDir(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nightWindDir"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->nightWindDir:Ljava/lang/String;

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

    .line 59
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "week"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;->week:Ljava/lang/String;

    return-void
.end method
