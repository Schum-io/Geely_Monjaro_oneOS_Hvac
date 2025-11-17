.class public Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;
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
    name = "RoadInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private roadType:I

.field private roadname:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadname:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roadname",
            "roadType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadname:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadType:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;-><init>(Ljava/lang/String;I)V

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
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->clone()Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRoadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadType:I

    return v0
.end method

.method public getRoadname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadname:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoadInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "roadname="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roadType=\'"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
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
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->roadType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
