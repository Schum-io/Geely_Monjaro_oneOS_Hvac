.class public Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;
.super Ljava/lang/Object;
.source "OrderPayParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private modelType:Ljava/lang/String;

.field private orderAmt:Ljava/lang/String;

.field private orderNo:Ljava/lang/String;

.field private orderSource:Ljava/lang/String;

.field private payType:I

.field private pdsn:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private ts:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->pdsn:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->version:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->modelType:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->vin:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderNo:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderAmt:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->payType:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->ts:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->sign:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            0x0
        }
        names = {
            "pdsn",
            "version",
            "modelType",
            "vin",
            "orderNo",
            "orderAmt",
            "payType",
            "ts",
            "orderSource",
            "sign"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->pdsn:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->version:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->modelType:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->vin:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderNo:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderAmt:Ljava/lang/String;

    .line 29
    iput p7, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->payType:I

    .line 30
    iput-object p8, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->ts:Ljava/lang/String;

    .line 31
    iput-object p9, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    .line 32
    iput-object p10, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->sign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModelType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderAmt()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderAmt:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNo()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderSource()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->payType:I

    return v0
.end method

.method public getPdsn()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->pdsn:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTs()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->ts:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->vin:Ljava/lang/String;

    return-object v0
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

    .line 100
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->modelType:Ljava/lang/String;

    return-void
.end method

.method public setOrderAmt(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderAmt"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderAmt:Ljava/lang/String;

    return-void
.end method

.method public setOrderNo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderNo"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderNo:Ljava/lang/String;

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

    .line 148
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    return-void
.end method

.method public setPayType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payType"
        }
    .end annotation

    .line 132
    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->payType:I

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

    .line 84
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->pdsn:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sign"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTs(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ts"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->ts:Ljava/lang/String;

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

    .line 92
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->version:Ljava/lang/String;

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

    .line 108
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->vin:Ljava/lang/String;

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

    .line 50
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->pdsn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->modelType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderAmt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->payType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->ts:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->sign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
