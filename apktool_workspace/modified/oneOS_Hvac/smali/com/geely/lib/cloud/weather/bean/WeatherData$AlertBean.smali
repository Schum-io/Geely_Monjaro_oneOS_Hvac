.class public Lcom/geely/lib/cloud/weather/bean/WeatherData$AlertBean;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/weather/bean/WeatherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertBean"
.end annotation


# instance fields
.field private level:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$AlertBean;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$AlertBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$AlertBean;->level:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/bean/WeatherData$AlertBean;->text:Ljava/lang/String;

    return-void
.end method
