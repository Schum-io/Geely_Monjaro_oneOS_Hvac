.class public Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/weather/bean/WeatherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredicationBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;,
        Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;
    }
.end annotation


# instance fields
.field private daily:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;",
            ">;"
        }
    .end annotation
.end field

.field private hourly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDaily()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;->daily:Ljava/util/List;

    return-object v0
.end method

.method public getHourly()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;->hourly:Ljava/util/List;

    return-object v0
.end method

.method public setDaily(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daily"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$DailyBean;",
            ">;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;->daily:Ljava/util/List;

    return-void
.end method

.method public setHourly(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hourly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean$HourlyBean;",
            ">;)V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$PredicationBean;->hourly:Ljava/util/List;

    return-void
.end method
