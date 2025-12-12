.class public Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addTime:Ljava/lang/String;

.field private allMaxTemp:Ljava/lang/String;

.field private allMinTemp:Ljava/lang/String;

.field private aqi:Ljava/lang/String;

.field private atmoPres:Ljava/lang/String;

.field private carbonMonoxide:Ljava/lang/String;

.field private cloudCover:Ljava/lang/String;

.field private currentPrecipitation:Ljava/lang/String;

.field private currentRelaHumid:Ljava/lang/String;

.field private currentTemp:Ljava/lang/String;

.field private currentWinDir:Ljava/lang/String;

.field private currentWind:Ljava/lang/String;

.field private dewPointTemp:Ljava/lang/String;

.field private nitrogenDioxide:Ljava/lang/String;

.field private ozone:Ljava/lang/String;

.field private pm:Ljava/lang/String;

.field private pmt:Ljava/lang/String;

.field private sensiTemp:Ljava/lang/String;

.field private snowDepth:Ljava/lang/String;

.field private sulfurDioxide:Ljava/lang/String;

.field private uvInten:Ljava/lang/String;

.field private visibility:Ljava/lang/String;

.field private weathPheno:Ljava/lang/String;

.field private windDirection:Ljava/lang/String;

.field private windSpeed:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->addTime:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->aqi:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->atmoPres:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->cloudCover:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->carbonMonoxide:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentPrecipitation:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentRelaHumid:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentTemp:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentWinDir:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentWind:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->dewPointTemp:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->nitrogenDioxide:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->ozone:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->pm:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->pmt:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->sensiTemp:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->snowDepth:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->sulfurDioxide:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->uvInten:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->visibility:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->weathPheno:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->windDirection:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->windSpeed:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->allMaxTemp:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->allMinTemp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getAllMaxTemp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->allMaxTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getAllMinTemp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->allMinTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getAqi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->aqi:Ljava/lang/String;

    return-object v0
.end method

.method public getAtmoPres()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->atmoPres:Ljava/lang/String;

    return-object v0
.end method

.method public getCarbonMonoxide()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->carbonMonoxide:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->cloudCover:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrecipitation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentPrecipitation:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentRelaHumid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentRelaHumid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTemp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWinDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentWinDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentWind:Ljava/lang/String;

    return-object v0
.end method

.method public getDewPointTemp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->dewPointTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getNitrogenDioxide()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->nitrogenDioxide:Ljava/lang/String;

    return-object v0
.end method

.method public getOzone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->ozone:Ljava/lang/String;

    return-object v0
.end method

.method public getPm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->pm:Ljava/lang/String;

    return-object v0
.end method

.method public getPmt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->pmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSensiTemp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->sensiTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getSnowDepth()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->snowDepth:Ljava/lang/String;

    return-object v0
.end method

.method public getSulfurDioxide()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->sulfurDioxide:Ljava/lang/String;

    return-object v0
.end method

.method public getUvInten()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->uvInten:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->visibility:Ljava/lang/String;

    return-object v0
.end method

.method public getWeathPheno()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->weathPheno:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->windDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getWindSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->windSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->addTime:Ljava/lang/String;

    return-void
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

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->allMaxTemp:Ljava/lang/String;

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

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->allMinTemp:Ljava/lang/String;

    return-void
.end method

.method public setAqi(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aqi"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->aqi:Ljava/lang/String;

    return-void
.end method

.method public setAtmoPres(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atmoPres"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->atmoPres:Ljava/lang/String;

    return-void
.end method

.method public setCarbonMonoxide(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carbonMonoxide"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->carbonMonoxide:Ljava/lang/String;

    return-void
.end method

.method public setCloudCover(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudCover"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->cloudCover:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPrecipitation(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPrecipitation"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentPrecipitation:Ljava/lang/String;

    return-void
.end method

.method public setCurrentRelaHumid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentRelaHumid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentRelaHumid:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTemp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTemp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentTemp:Ljava/lang/String;

    return-void
.end method

.method public setCurrentWinDir(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentWinDir"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentWinDir:Ljava/lang/String;

    return-void
.end method

.method public setCurrentWind(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentWind"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentWind:Ljava/lang/String;

    return-void
.end method

.method public setDewPointTemp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dewPointTemp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->dewPointTemp:Ljava/lang/String;

    return-void
.end method

.method public setNitrogenDioxide(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nitrogenDioxide"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->nitrogenDioxide:Ljava/lang/String;

    return-void
.end method

.method public setOzone(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ozone"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->ozone:Ljava/lang/String;

    return-void
.end method

.method public setPm(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pm"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->pm:Ljava/lang/String;

    return-void
.end method

.method public setPmt(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pmt"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->pmt:Ljava/lang/String;

    return-void
.end method

.method public setSensiTemp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensiTemp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->sensiTemp:Ljava/lang/String;

    return-void
.end method

.method public setSnowDepth(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snowDepth"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->snowDepth:Ljava/lang/String;

    return-void
.end method

.method public setSulfurDioxide(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sulfurDioxide"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->sulfurDioxide:Ljava/lang/String;

    return-void
.end method

.method public setUvInten(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uvInten"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->uvInten:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->visibility:Ljava/lang/String;

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

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->weathPheno:Ljava/lang/String;

    return-void
.end method

.method public setWindDirection(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windDirection"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->windDirection:Ljava/lang/String;

    return-void
.end method

.method public setWindSpeed(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windSpeed"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->windSpeed:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->addTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->aqi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->atmoPres:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->cloudCover:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->carbonMonoxide:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentPrecipitation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentRelaHumid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentTemp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentWinDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->currentWind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->dewPointTemp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->nitrogenDioxide:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->ozone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->pm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->pmt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->sensiTemp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->snowDepth:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->sulfurDioxide:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->uvInten:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->visibility:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->weathPheno:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->windDirection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->windSpeed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->allMaxTemp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;->allMinTemp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
