.class public Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/weather/bean/WeatherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemperatureBean"
.end annotation


# instance fields
.field private max:I

.field private min:I

.field private realTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;->min:I

    return v0
.end method

.method public getRealTime()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;->realTime:I

    return v0
.end method

.method public setMax(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    .line 143
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "min"
        }
    .end annotation

    .line 135
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;->min:I

    return-void
.end method

.method public setRealTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "realTime"
        }
    .end annotation

    .line 127
    iput p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$TemperatureBean;->realTime:I

    return-void
.end method
