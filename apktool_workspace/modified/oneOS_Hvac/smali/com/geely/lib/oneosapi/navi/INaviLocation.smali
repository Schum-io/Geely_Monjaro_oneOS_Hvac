.class public interface abstract Lcom/geely/lib/oneosapi/navi/INaviLocation;
.super Ljava/lang/Object;
.source "INaviLocation.java"


# static fields
.field public static final GPS_ACCURACY_BAD:I = 0x0

.field public static final GPS_ACCURACY_GOOD:I = 0x1

.field public static final GPS_ACCURACY_UNKNOWN:I = -0x1


# virtual methods
.method public abstract getAccuracy()F
.end method

.method public abstract getAdCode()Ljava/lang/String;
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getAltitude()D
.end method

.method public abstract getAoiName()Ljava/lang/String;
.end method

.method public abstract getBearing()F
.end method

.method public abstract getCity()Ljava/lang/String;
.end method

.method public abstract getCityCode()Ljava/lang/String;
.end method

.method public abstract getCountry()Ljava/lang/String;
.end method

.method public abstract getDistrict()Ljava/lang/String;
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getErrorInfo()Ljava/lang/String;
.end method

.method public abstract getGpsAccuracyStatus()I
.end method

.method public abstract getLatitude()D
.end method

.method public abstract getLocationDetail()Ljava/lang/String;
.end method

.method public abstract getLocationType()I
.end method

.method public abstract getLongitude()D
.end method

.method public abstract getPoiName()Ljava/lang/String;
.end method

.method public abstract getProvince()Ljava/lang/String;
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getStreet()Ljava/lang/String;
.end method

.method public abstract getStreetNum()Ljava/lang/String;
.end method
