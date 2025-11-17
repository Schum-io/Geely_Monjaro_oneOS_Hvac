.class public Lcom/geely/lib/oneosapi/weather/bean/CityBean;
.super Ljava/lang/Object;
.source "CityBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/weather/bean/CityBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private areaId:Ljava/lang/String;

.field private direct:I

.field private districtCN:Ljava/lang/String;

.field private districtEN:Ljava/lang/String;

.field private nameCN:Ljava/lang/String;

.field private nameEN:Ljava/lang/String;

.field private provCN:Ljava/lang/String;

.field private provEN:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/weather/bean/CityBean$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/weather/bean/CityBean$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->provCN:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->districtCN:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->nameCN:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->areaId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->provEN:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->districtEN:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->nameEN:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->direct:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAreaId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirect()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->direct:I

    return v0
.end method

.method public getDistrictCN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->districtCN:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictEN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->districtEN:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->nameCN:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->nameEN:Ljava/lang/String;

    return-object v0
.end method

.method public getProvCN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->provCN:Ljava/lang/String;

    return-object v0
.end method

.method public getProvEN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->provEN:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "areaId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->areaId:Ljava/lang/String;

    return-void
.end method

.method public setDirect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direct"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->direct:I

    return-void
.end method

.method public setDistrictCN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "districtCN"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->districtCN:Ljava/lang/String;

    return-void
.end method

.method public setDistrictEN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "districtEN"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->districtEN:Ljava/lang/String;

    return-void
.end method

.method public setNameCN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameCN"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->nameCN:Ljava/lang/String;

    return-void
.end method

.method public setNameEN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameEN"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->nameEN:Ljava/lang/String;

    return-void
.end method

.method public setProvCN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provCN"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->provCN:Ljava/lang/String;

    return-void
.end method

.method public setProvEN(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provEN"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->provEN:Ljava/lang/String;

    return-void
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
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->provCN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->districtCN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->nameCN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->areaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->provEN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->districtEN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->nameEN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/geely/lib/oneosapi/weather/bean/CityBean;->direct:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
