.class public Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/weather/bean/WeatherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindBean"
.end annotation


# instance fields
.field private direction:D

.field private speed:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirection()D
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;->direction:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;->speed:D

    return-wide v0
.end method

.method public setDirection(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 157
    iput-wide p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;->direction:D

    return-void
.end method

.method public setSpeed(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 165
    iput-wide p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$WindBean;->speed:D

    return-void
.end method
