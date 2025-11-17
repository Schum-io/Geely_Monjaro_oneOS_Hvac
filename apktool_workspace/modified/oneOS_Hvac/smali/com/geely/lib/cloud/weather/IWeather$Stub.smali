.class public abstract Lcom/geely/lib/cloud/weather/IWeather$Stub;
.super Landroid/os/Binder;
.source "IWeather.java"

# interfaces
.implements Lcom/geely/lib/cloud/weather/IWeather;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/weather/IWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/weather/IWeather$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.weather.IWeather"

.field static final TRANSACTION_getWeatherCitys:I = 0x1

.field static final TRANSACTION_modifyWeatherManagementList:I = 0x4

.field static final TRANSACTION_queryAreaUpdateTime:I = 0x8

.field static final TRANSACTION_queryCurrentWeather:I = 0x5

.field static final TRANSACTION_queryHoursWeather:I = 0x7

.field static final TRANSACTION_queryMoreDaysWeather:I = 0x6

.field static final TRANSACTION_queryNewMoreDaysWeather:I = 0xa

.field static final TRANSACTION_querySunriseAndSunset:I = 0x9

.field static final TRANSACTION_queryWeatherArea:I = 0x2

.field static final TRANSACTION_queryWeatherManagementList:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.weather.IWeather"

    .line 52
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/weather/IWeather;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.geely.lib.cloud.weather.IWeather"

    .line 63
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    instance-of v1, v0, Lcom/geely/lib/cloud/weather/IWeather;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Lcom/geely/lib/cloud/weather/IWeather;

    return-object v0

    .line 67
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/weather/IWeather$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/weather/IWeather$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/weather/IWeather;
    .locals 1

    .line 405
    sget-object v0, Lcom/geely/lib/cloud/weather/IWeather$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/weather/IWeather;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/weather/IWeather;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/geely/lib/cloud/weather/IWeather$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/weather/IWeather;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 399
    sput-object p0, Lcom/geely/lib/cloud/weather/IWeather$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/weather/IWeather;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 396
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.geely.lib.cloud.weather.IWeather"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 176
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->queryNewMoreDaysWeather(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 166
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->querySunriseAndSunset(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 158
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->queryAreaUpdateTime(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 148
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->queryHoursWeather(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 138
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->queryMoreDaysWeather(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 128
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->queryCurrentWeather(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 113
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    sget-object p1, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->modifyWeatherManagementList(Lcom/geely/lib/cloud/weather/ModifyBindCityParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 105
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->queryWeatherManagementList(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 95
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->queryWeatherArea(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 85
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/weather/IWeather$Stub;->getWeatherCitys(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 80
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
