.class public Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "RspLocation.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private locationInfo:Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 3
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 4
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->locationInfo:Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqModel"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->copyBaseInfo(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->clone()Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->clone()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;

    .line 4
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->locationInfo:Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;->clone()Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->locationInfo:Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->clone()Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocationInfo()Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->locationInfo:Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    return-object v0
.end method

.method public setLocationInfo(Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->locationInfo:Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RspLocation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "locationInfo="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->locationInfo:Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{base="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspLocation;->locationInfo:Lcom/geely/lib/oneosapi/navi/model/service/LocationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
