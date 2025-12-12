.class public interface abstract Lcom/geely/lib/oneosapi/weather/IWeatherAPICallback;
.super Ljava/lang/Object;
.source "IWeatherAPICallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/weather/IWeatherAPICallback$Stub;,
        Lcom/geely/lib/oneosapi/weather/IWeatherAPICallback$Default;
    }
.end annotation


# virtual methods
.method public abstract callback(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
