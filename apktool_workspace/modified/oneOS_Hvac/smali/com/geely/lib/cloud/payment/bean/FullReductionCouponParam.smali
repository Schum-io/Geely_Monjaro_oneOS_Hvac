.class public Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;
.super Ljava/lang/Object;
.source "FullReductionCouponParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private couponAccountCode:Ljava/lang/String;

.field private couponAccountId:Ljava/lang/String;

.field private use:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountCode:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountId:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->use:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "couponAccountCode",
            "couponAccountId",
            "use"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountCode:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountId:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->use:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCouponAccountCode()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponAccountId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public isUse()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->use:Z

    return v0
.end method

.method public setCouponAccountCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "couponAccountCode"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountCode:Ljava/lang/String;

    return-void
.end method

.method public setCouponAccountId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "couponAccountId"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountId:Ljava/lang/String;

    return-void
.end method

.method public setUse(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "use"
        }
    .end annotation

    .line 72
    iput-boolean p1, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->use:Z

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

    .line 29
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->couponAccountId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-boolean p2, p0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;->use:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
