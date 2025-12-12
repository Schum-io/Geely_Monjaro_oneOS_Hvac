.class public Lcom/geely/lib/cloud/payment/bean/OrderList;
.super Ljava/lang/Object;
.source "OrderList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/payment/bean/OrderList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoActive:I

.field private controlKey:Ljava/lang/String;

.field private itemId:J

.field private quantity:J

.field private skuId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/geely/lib/cloud/payment/bean/OrderList$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/payment/bean/OrderList$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/payment/bean/OrderList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJJ)V
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
            "autoActive",
            "controlKey",
            "itemId",
            "skuId",
            "quantity"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->autoActive:I

    .line 19
    iput-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->controlKey:Ljava/lang/String;

    .line 20
    iput-wide p3, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->itemId:J

    .line 21
    iput-wide p5, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->skuId:J

    .line 22
    iput-wide p7, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->quantity:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->autoActive:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->controlKey:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->itemId:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->skuId:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->quantity:J

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

    .line 60
    iget v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->autoActive:I

    return v0
.end method

.method public getControlKey()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->controlKey:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->itemId:J

    return-wide v0
.end method

.method public getQuantity()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->quantity:J

    return-wide v0
.end method

.method public getSkuId()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->skuId:J

    return-wide v0
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

    .line 64
    iput p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->autoActive:I

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

    .line 72
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->controlKey:Ljava/lang/String;

    return-void
.end method

.method public setItemId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemId"
        }
    .end annotation

    .line 80
    iput-wide p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->itemId:J

    return-void
.end method

.method public setQuantity(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quantity"
        }
    .end annotation

    .line 96
    iput-wide p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->quantity:J

    return-void
.end method

.method public setSkuId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skuId"
        }
    .end annotation

    .line 88
    iput-wide p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->skuId:J

    return-void
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

    .line 35
    iget p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->autoActive:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->controlKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->itemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->skuId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderList;->quantity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
