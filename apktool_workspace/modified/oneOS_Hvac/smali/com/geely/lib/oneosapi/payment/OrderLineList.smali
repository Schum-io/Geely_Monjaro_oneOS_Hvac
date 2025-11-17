.class public Lcom/geely/lib/oneosapi/payment/OrderLineList;
.super Ljava/lang/Object;
.source "OrderLineList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/payment/OrderLineList;",
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
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/payment/OrderLineList$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/payment/OrderLineList$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->skuId:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->itemId:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->quantity:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->lineId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->autoActive:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->controlKey:Ljava/lang/String;

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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->skuId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->itemId:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->quantity:I

    .line 6
    iput-object p4, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->lineId:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->autoActive:I

    .line 8
    iput-object p6, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->controlKey:Ljava/lang/String;

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

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->autoActive:I

    return v0
.end method

.method public getControlKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->controlKey:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->lineId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->quantity:I

    return v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->skuId:Ljava/lang/String;

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

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->autoActive:I

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

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->controlKey:Ljava/lang/String;

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

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->itemId:Ljava/lang/String;

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

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->lineId:Ljava/lang/String;

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

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->quantity:I

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

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->skuId:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->skuId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->itemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->quantity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->lineId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->autoActive:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->controlKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
