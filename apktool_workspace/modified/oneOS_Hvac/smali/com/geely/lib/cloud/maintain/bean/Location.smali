.class public Lcom/geely/lib/cloud/maintain/bean/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field private height:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/Location;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/Location;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/Location;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/Location;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/Location;->height:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latitude"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/Location;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longitude"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/Location;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/Location;->time:Ljava/lang/String;

    return-void
.end method
