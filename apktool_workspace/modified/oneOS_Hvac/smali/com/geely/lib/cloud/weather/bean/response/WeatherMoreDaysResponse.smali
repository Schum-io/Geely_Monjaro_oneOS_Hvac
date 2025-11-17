.class public Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse;
.super Ljava/lang/Object;
.source "WeatherMoreDaysResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse$MoreDaysData;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/response/WeatherMoreDaysResponse;->data:Ljava/util/List;

    return-void
.end method
