.class public Lcom/geely/lib/oneosapi/weather/WeatherManager;
.super Ljava/lang/Object;
.source "WeatherManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/weather/WeatherManager$BaseWeatherCallback;,
        Lcom/geely/lib/oneosapi/weather/WeatherManager$BaseWeatherAPICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "binder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/geely/lib/oneosapi/weather/IWeatherService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/weather/IWeatherService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrentCity()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/weather/IWeatherService;->getCurrentCity()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "WeatherManager"

    const-string v1, "getCurrentCity: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLocationCity()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/weather/IWeatherService;->getLocationCity()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "WeatherManager"

    const-string v1, "getLocationCity: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationPermission()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/weather/IWeatherService;->getLocationPermission()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "WeatherManager"

    const-string v1, "getLocationPermission: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWeatherByCityId(Ljava/lang/String;Lcom/geely/lib/oneosapi/weather/WeatherManager$BaseWeatherAPICallback;)V
    .locals 1
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

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/weather/IWeatherService;->getWeatherByCityId(Ljava/lang/String;Lcom/geely/lib/oneosapi/weather/IWeatherAPICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "WeatherManager"

    const-string p2, "getWeatherByCityId: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getWeatherByLocation(DDLcom/geely/lib/oneosapi/weather/WeatherManager$BaseWeatherAPICallback;)V
    .locals 7
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

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/geely/lib/oneosapi/weather/IWeatherService;->getWeatherByLocation(DDLcom/geely/lib/oneosapi/weather/IWeatherAPICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "WeatherManager"

    const-string p2, "getWeatherByLocation: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getWeatherInfoByCityId(Ljava/lang/String;Lcom/geely/lib/oneosapi/weather/WeatherManager$BaseWeatherCallback;)V
    .locals 2
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

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;->isServiceAlive()Z

    move-result v0

    const-string v1, "WeatherManager"

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "getWeatherInfoByCityId: "

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/weather/IWeatherService;->getWeatherInfoByCityId(Ljava/lang/String;Lcom/geely/lib/oneosapi/weather/IWeatherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "getWeatherInfoByCityId: service is not alive"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getWeatherInfoByLocation(DDLcom/geely/lib/oneosapi/weather/WeatherManager$BaseWeatherCallback;)V
    .locals 8
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

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;->isServiceAlive()Z

    move-result v0

    const-string v1, "WeatherManager"

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "getWeatherInfoByLocation: "

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v2, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/geely/lib/oneosapi/weather/IWeatherService;->getWeatherInfoByLocation(DDLcom/geely/lib/oneosapi/weather/IWeatherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "getWeatherInfoByLocation: service is not alive"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCurrentCity(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/weather/IWeatherService;->setCurrentCity(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "WeatherManager"

    const-string v0, "setCurrentCity: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLocationPermission(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/weather/IWeatherService;->setLocationPermission(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "WeatherManager"

    const-string v0, "setLocationPermission: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/weather/IWeatherService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/weather/IWeatherService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/WeatherManager;->mService:Lcom/geely/lib/oneosapi/weather/IWeatherService;

    return-void
.end method
