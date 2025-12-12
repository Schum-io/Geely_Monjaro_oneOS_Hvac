.class public Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourlyBean"
.end annotation


# instance fields
.field private datetime:Ljava/lang/String;

.field private skycon:Ljava/lang/String;

.field private temperature:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatetime()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;->datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getSkycon()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;->skycon:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;->temperature:I

    return v0
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datetime"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;->datetime:Ljava/lang/String;

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

    .line 216
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;->skycon:Ljava/lang/String;

    return-void
.end method

.method public setTemperature(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation

    .line 208
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;->temperature:I

    return-void
.end method
