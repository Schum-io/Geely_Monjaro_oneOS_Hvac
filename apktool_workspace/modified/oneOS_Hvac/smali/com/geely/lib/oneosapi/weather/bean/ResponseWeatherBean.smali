.class public Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;
.super Ljava/lang/Object;
.source "ResponseWeatherBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private data:Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;

.field private message:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->code:I

    .line 3
    const-class v0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->data:Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->code:I

    return v0
.end method

.method public getData()Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->data:Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->code:I

    return-void
.end method

.method public setData(Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->data:Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->message:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->data:Lcom/geely/lib/oneosapi/weather/bean/WeatherInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/ResponseWeatherBean;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
