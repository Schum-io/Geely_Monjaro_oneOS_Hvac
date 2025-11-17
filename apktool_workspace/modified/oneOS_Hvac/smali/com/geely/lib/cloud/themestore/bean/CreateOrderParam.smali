.class public Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;
.super Ljava/lang/Object;
.source "CreateOrderParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private goodsNum:I

.field private goodsPrice:Ljava/lang/String;

.field private modelType:Ljava/lang/String;

.field private orderExtendParam:Ljava/lang/String;

.field private orderSource:Ljava/lang/String;

.field private payReturnUrl:Ljava/lang/String;

.field private pdsn:Ljava/lang/String;

.field private reqSource:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
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

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->pdsn:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->version:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->modelType:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->vin:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsId:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsNum:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsPrice:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->payReturnUrl:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderSource:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->reqSource:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderExtendParam:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pdsn",
            "version",
            "modelType",
            "vin",
            "goodsId",
            "goodsNum",
            "goodsName",
            "goodsPrice",
            "payReturnUrl",
            "orderSource",
            "reqSource",
            "orderExtendParam"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->pdsn:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->version:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->modelType:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->vin:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsId:Ljava/lang/String;

    .line 29
    iput p6, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsNum:I

    .line 30
    iput-object p7, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsName:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsPrice:Ljava/lang/String;

    .line 32
    iput-object p9, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->payReturnUrl:Ljava/lang/String;

    .line 33
    iput-object p10, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderSource:Ljava/lang/String;

    .line 34
    iput-object p11, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->reqSource:Ljava/lang/String;

    .line 35
    iput-object p12, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderExtendParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsNum()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsNum:I

    return v0
.end method

.method public getGoodsPrice()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getModelType()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderExtendParam()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderExtendParam:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderSource()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPayReturnUrl()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->payReturnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPdsn()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->pdsn:Ljava/lang/String;

    return-object v0
.end method

.method public getReqSource()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->reqSource:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodsId"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodsName"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodsNum"
        }
    .end annotation

    .line 131
    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsNum:I

    return-void
.end method

.method public setGoodsPrice(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodsPrice"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsPrice:Ljava/lang/String;

    return-void
.end method

.method public setModelType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelType"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->modelType:Ljava/lang/String;

    return-void
.end method

.method public setOrderExtendParam(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderExtendParam"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderExtendParam:Ljava/lang/String;

    return-void
.end method

.method public setOrderSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderSource"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderSource:Ljava/lang/String;

    return-void
.end method

.method public setPayReturnUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payReturnUrl"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->payReturnUrl:Ljava/lang/String;

    return-void
.end method

.method public setPdsn(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pdsn"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->pdsn:Ljava/lang/String;

    return-void
.end method

.method public setReqSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqSource"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->reqSource:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->version:Ljava/lang/String;

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

    .line 115
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->vin:Ljava/lang/String;

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

    .line 55
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->pdsn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->modelType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->goodsPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->payReturnUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->reqSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->orderExtendParam:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
