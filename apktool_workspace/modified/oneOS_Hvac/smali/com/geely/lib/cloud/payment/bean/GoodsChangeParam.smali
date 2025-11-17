.class public Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;
.super Ljava/lang/Object;
.source "GoodsChangeParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cityId:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private provinceId:Ljava/lang/String;

.field private regionId:Ljava/lang/String;

.field private skuId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->itemId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->skuId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->provinceId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->cityId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->regionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemId",
            "skuId",
            "provinceId",
            "cityId",
            "regionId"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->itemId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->skuId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->provinceId:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->cityId:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->regionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->provinceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->regionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->skuId:Ljava/lang/String;

    return-object v0
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cityId"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->cityId:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemId"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setProvinceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provinceId"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->provinceId:Ljava/lang/String;

    return-void
.end method

.method public setRegionId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "regionId"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->regionId:Ljava/lang/String;

    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skuId"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->skuId:Ljava/lang/String;

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

    .line 35
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->itemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->skuId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->provinceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->cityId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->regionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
