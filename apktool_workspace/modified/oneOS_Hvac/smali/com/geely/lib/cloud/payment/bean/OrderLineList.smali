.class public Lcom/geely/lib/cloud/payment/bean/OrderLineList;
.super Ljava/lang/Object;
.source "OrderLineList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/payment/bean/OrderLineList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoActive:I

.field private controlKey:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private lineId:Ljava/lang/String;

.field private quantity:I

.field private skuId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/geely/lib/cloud/payment/bean/OrderLineList$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/payment/bean/OrderLineList$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->skuId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->itemId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->quantity:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->lineId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->autoActive:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->controlKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "skuId",
            "itemId",
            "quantity",
            "lineId",
            "autoActive",
            "controlKey"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->skuId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->itemId:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->quantity:I

    .line 22
    iput-object p4, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->lineId:Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->autoActive:I

    .line 24
    iput-object p6, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->controlKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoActive()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->autoActive:I

    return v0
.end method

.method public getControlKey()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->controlKey:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->lineId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->quantity:I

    return v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->skuId:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoActive(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoActive"
        }
    .end annotation

    .line 102
    iput p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->autoActive:I

    return-void
.end method

.method public setControlKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlKey"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->controlKey:Ljava/lang/String;

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

    .line 76
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setLineId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineId"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->lineId:Ljava/lang/String;

    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quantity"
        }
    .end annotation

    .line 84
    iput p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->quantity:I

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

    .line 68
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->skuId:Ljava/lang/String;

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

    .line 38
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->skuId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->itemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->quantity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->lineId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->autoActive:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderLineList;->controlKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
