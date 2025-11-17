.class public Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean$1;
.super Ljava/lang/Object;
.source "ResponseWeatherBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;

    invoke-direct {v0, p1}, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 2
    new-array p1, p1, [Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean$1;->newArray(I)[Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;

    move-result-object p1

    return-object p1
.end method
