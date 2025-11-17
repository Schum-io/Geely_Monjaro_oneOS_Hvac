.class public Lcom/geely/lib/oneosapi/navi/model/base/LatLng;
.super Ljava/lang/Object;
.source "LatLng.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final COORD_TYPE_BD09LL:Ljava/lang/String; = "bd09ll"

.field public static final COORD_TYPE_BD09MC:Ljava/lang/String; = "bd09mc"

.field public static final COORD_TYPE_GCJ02:Ljava/lang/String; = "gcj02"

.field public static final COORD_TYPE_WGS84:Ljava/lang/String; = "wgs84"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/base/LatLng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coordType:Ljava/lang/String;

.field private latitude:D

.field private longitude:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/LatLng$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lat",
            "lng"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->latitude:D

    .line 3
    iput-wide p3, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->longitude:D

    const-string p1, "gcj02"

    .line 4
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->coordType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lat",
            "lng",
            "coordType"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->latitude:D

    .line 7
    iput-wide p3, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->longitude:D

    .line 8
    iput-object p5, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->coordType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->latitude:D

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->longitude:D

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->coordType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/geely/lib/oneosapi/navi/model/base/LatLng;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->clone()Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoordType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->coordType:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->longitude:D

    return-wide v0
.end method

.method public setCoordType(Ljava/lang/String;)Lcom/geely/lib/oneosapi/navi/model/base/LatLng;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coordType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->coordType:Ljava/lang/String;

    return-object p0
.end method

.method public setLatitude(D)Lcom/geely/lib/oneosapi/navi/model/base/LatLng;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latitude"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->latitude:D

    return-object p0
.end method

.method public setLongitude(D)Lcom/geely/lib/oneosapi/navi/model/base/LatLng;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longitude"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->longitude:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LatLng{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "latitude="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", coordType=\'"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->coordType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;->coordType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
