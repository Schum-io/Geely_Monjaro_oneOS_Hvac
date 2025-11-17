.class public Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DailyBean"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private maxTemperature:I

.field private minTemperature:I

.field private skycon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxTemperature()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;->maxTemperature:I

    return v0
.end method

.method public getMinTemperature()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;->minTemperature:I

    return v0
.end method

.method public getSkycon()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;->skycon:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setMaxTemperature(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxTemperature"
        }
    .end annotation

    .line 256
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;->maxTemperature:I

    return-void
.end method

.method public setMinTemperature(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minTemperature"
        }
    .end annotation

    .line 248
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;->minTemperature:I

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

    .line 240
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;->skycon:Ljava/lang/String;

    return-void
.end method
