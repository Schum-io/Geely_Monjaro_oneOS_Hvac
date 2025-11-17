.class public Lcom/geely/lib/cloud/payment/bean/ItemIdParam;
.super Ljava/lang/Object;
.source "ItemIdParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/payment/bean/ItemIdParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private itemId:J

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/payment/bean/ItemIdParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemId",
            "vin"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->itemId:J

    .line 16
    iput-object p3, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->vin:Ljava/lang/String;

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->itemId:J

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->vin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemId()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->itemId:J

    return-wide v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->vin:Ljava/lang/String;

    return-object v0
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

    .line 52
    iput-wide p1, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->itemId:J

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

    .line 60
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->vin:Ljava/lang/String;

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

    .line 26
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->itemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
