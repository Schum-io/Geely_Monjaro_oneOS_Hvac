.class public Lcom/geely/lib/cloud/weather/ModifyBindCityParam;
.super Ljava/lang/Object;
.source "ModifyBindCityParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/weather/ModifyBindCityParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addressList:Ljava/lang/String;

.field private addressType:Ljava/lang/String;

.field private areaId:Ljava/lang/String;

.field private districtCN:Ljava/lang/String;

.field private districtEN:Ljava/lang/String;

.field private nameCN:Ljava/lang/String;

.field private nameEN:Ljava/lang/String;

.field private operationType:Ljava/lang/String;

.field private provCN:Ljava/lang/String;

.field private provEN:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/weather/ModifyBindCityParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->areaId:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->operationType:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->addressList:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->vin:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->addressType:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->districtCN:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->districtEN:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->nameCN:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->nameEN:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->provCN:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->provEN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddressList()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->addressList:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressType()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->addressType:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictCN()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->districtCN:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictEN()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->districtEN:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCN()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->nameCN:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEN()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->nameEN:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public getProvCN()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->provCN:Ljava/lang/String;

    return-object v0
.end method

.method public getProvEN()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->provEN:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressList(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addressList"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->addressList:Ljava/lang/String;

    return-void
.end method

.method public setAddressType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addressType"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->addressType:Ljava/lang/String;

    return-void
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

    .line 89
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->areaId:Ljava/lang/String;

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

    .line 129
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->districtCN:Ljava/lang/String;

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

    .line 137
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->districtEN:Ljava/lang/String;

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

    .line 145
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->nameCN:Ljava/lang/String;

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

    .line 153
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->nameEN:Ljava/lang/String;

    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operationType"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->operationType:Ljava/lang/String;

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

    .line 161
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->provCN:Ljava/lang/String;

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

    .line 169
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->provEN:Ljava/lang/String;

    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vin"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->vin:Ljava/lang/String;

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

    .line 54
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->areaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->operationType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->addressList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->addressType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->districtCN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->districtEN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->nameCN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->nameEN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->provCN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/geely/lib/cloud/weather/ModifyBindCityParam;->provEN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
