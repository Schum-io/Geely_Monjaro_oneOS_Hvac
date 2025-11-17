.class public Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;
.super Ljava/lang/Object;
.source "SpeedLimitInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElecLimitingInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dist:I

.field private latitude:D

.field private longitude:D

.field private speed:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lat",
            "lng",
            "dist",
            "speed"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->latitude:D

    .line 3
    iput-wide p3, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->longitude:D

    .line 4
    iput p5, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->dist:I

    .line 5
    iput p6, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->speed:I

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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->latitude:D

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->longitude:D

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->dist:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->speed:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;
    .locals 8

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;-><init>(DDII)V

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
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->clone()Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->dist:I

    return v0
.end method

.method public getLat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->latitude:D

    return-wide v0
.end method

.method public getLong()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->longitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->longitude:D

    return-wide v0
.end method

.method public getSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->speed:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ElecLimitingInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "latitude="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->speed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dist=\'"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->dist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
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
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 3
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->dist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->speed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
