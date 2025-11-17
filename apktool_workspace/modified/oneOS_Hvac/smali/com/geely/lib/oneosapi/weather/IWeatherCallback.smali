.class public interface abstract Lcom/geely/lib/oneosapi/weather/IWeatherCallback;
.super Ljava/lang/Object;
.source "IWeatherCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/weather/IWeatherCallback$Stub;,
        Lcom/geely/lib/oneosapi/weather/IWeatherCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract callback(ILjava/lang/String;Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
