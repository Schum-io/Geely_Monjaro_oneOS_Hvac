.class public interface abstract Lcom/geely/lib/oneosapi/weather/api/IWeatherApi;
.super Ljava/lang/Object;
.source "IWeatherApi.java"


# virtual methods
.method public abstract getCurrentCity()Z
.end method

.method public abstract getLocationCity()Ljava/lang/String;
.end method

.method public abstract getLocationPermission()Z
.end method

.method public abstract getWeatherByCityId(Ljava/lang/String;Lcom/geely/lib/oneosapi/weather/api/IWeatherAPICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cityID",
            "callback"
        }
    .end annotation
.end method

.method public abstract getWeatherByLocation(DDLcom/geely/lib/oneosapi/weather/api/IWeatherAPICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lon",
            "lat",
            "callback"
        }
    .end annotation
.end method

.method public abstract setCurrentCity(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract setLocationPermission(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method
