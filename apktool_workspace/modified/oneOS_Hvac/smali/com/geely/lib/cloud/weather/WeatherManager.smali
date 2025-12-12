.class public Lcom/geely/lib/cloud/weather/WeatherManager;
.super Ljava/lang/Object;
.source "WeatherManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/weather/IWeather;


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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p2}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/weather/IWeather;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    return-void
.end method


# virtual methods
.method public getWeatherCitys(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "page",
            "callback"
        }
    .end annotation

    const-string v0, "WeatherManager"

    const-string v1, "getWeatherCitys"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v1, :cond_0

    .line 42
    new-instance v0, Lcom/geely/lib/cloud/weather/WeatherManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/weather/WeatherManager$1;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/weather/IWeather;->getWeatherCitys(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public modifyWeatherManagementList(Lcom/geely/lib/cloud/weather/ModifyBindCityParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "modifyBindCityParam",
            "callback"
        }
    .end annotation

    const-string v0, "WeatherManager"

    const-string v1, "modifyWeatherManagementList"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v1, :cond_0

    .line 130
    new-instance v2, Lcom/geely/lib/cloud/weather/WeatherManager$4;

    invoke-direct {v2, p0, p2}, Lcom/geely/lib/cloud/weather/WeatherManager$4;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v2}, Lcom/geely/lib/cloud/weather/IWeather;->modifyWeatherManagementList(Lcom/geely/lib/cloud/weather/ModifyBindCityParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryAreaUpdateTime(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "WeatherManager"

    const-string v1, "queryAreaUpdateTime areaId "

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v1, :cond_0

    .line 273
    new-instance v2, Lcom/geely/lib/cloud/weather/WeatherManager$9;

    invoke-direct {v2, p0, p1}, Lcom/geely/lib/cloud/weather/WeatherManager$9;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v2}, Lcom/geely/lib/cloud/weather/IWeather;->queryAreaUpdateTime(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 290
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryCurrentWeather(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "areaId",
            "callback"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCurrentWeather areaId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v0, :cond_0

    .line 159
    new-instance v2, Lcom/geely/lib/cloud/weather/WeatherManager$5;

    invoke-direct {v2, p0, p2}, Lcom/geely/lib/cloud/weather/WeatherManager$5;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v0, p1, v2}, Lcom/geely/lib/cloud/weather/IWeather;->queryCurrentWeather(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 176
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryHoursWeather(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "areaId",
            "callback"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryHoursWeather areaId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v0, :cond_0

    .line 244
    new-instance v2, Lcom/geely/lib/cloud/weather/WeatherManager$8;

    invoke-direct {v2, p0, p2}, Lcom/geely/lib/cloud/weather/WeatherManager$8;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v0, p1, v2}, Lcom/geely/lib/cloud/weather/IWeather;->queryHoursWeather(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 261
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryMoreDaysWeather(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "areaId",
            "callback"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryMoreDaysWeather areaId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v0, :cond_0

    .line 188
    new-instance v2, Lcom/geely/lib/cloud/weather/WeatherManager$6;

    invoke-direct {v2, p0, p2}, Lcom/geely/lib/cloud/weather/WeatherManager$6;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v0, p1, v2}, Lcom/geely/lib/cloud/weather/IWeather;->queryMoreDaysWeather(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 205
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryNewMoreDaysWeather(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "areaId",
            "callback"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNewMoreDaysWeather areaId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v0, :cond_0

    .line 216
    new-instance v2, Lcom/geely/lib/cloud/weather/WeatherManager$7;

    invoke-direct {v2, p0, p2}, Lcom/geely/lib/cloud/weather/WeatherManager$7;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v0, p1, v2}, Lcom/geely/lib/cloud/weather/IWeather;->queryNewMoreDaysWeather(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 233
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public querySunriseAndSunset(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "areaId",
            "callback"
        }
    .end annotation

    const-string v0, "WeatherManager"

    const-string v1, "querySunriseAndSunset areaId "

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v1, :cond_0

    .line 301
    new-instance v2, Lcom/geely/lib/cloud/weather/WeatherManager$10;

    invoke-direct {v2, p0, p2}, Lcom/geely/lib/cloud/weather/WeatherManager$10;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v2}, Lcom/geely/lib/cloud/weather/IWeather;->querySunriseAndSunset(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 318
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryWeatherArea(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "location",
            "callback"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryWeatherArea location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v0, :cond_0

    .line 71
    new-instance v2, Lcom/geely/lib/cloud/weather/WeatherManager$2;

    invoke-direct {v2, p0, p2}, Lcom/geely/lib/cloud/weather/WeatherManager$2;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v0, p1, v2}, Lcom/geely/lib/cloud/weather/IWeather;->queryWeatherArea(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 88
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public queryWeatherManagementList(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "WeatherManager"

    const-string v1, "queryWeatherManagementList"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v1, :cond_0

    .line 100
    new-instance v2, Lcom/geely/lib/cloud/weather/WeatherManager$3;

    invoke-direct {v2, p0, p1}, Lcom/geely/lib/cloud/weather/WeatherManager$3;-><init>(Lcom/geely/lib/cloud/weather/WeatherManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v2}, Lcom/geely/lib/cloud/weather/IWeather;->queryWeatherManagementList(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 117
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
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

    if-eqz p1, :cond_0

    .line 34
    invoke-static {p1}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/weather/IWeather;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/weather/WeatherManager;->mService:Lcom/geely/lib/cloud/weather/IWeather;

    :cond_0
    return-void
.end method
