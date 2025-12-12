.class public Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;
.super Ljava/lang/Object;
.source "BuyMemberPointsDeductionParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chosenIntegral:J

.field private use:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chosenIntegral",
            "use"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->chosenIntegral:J

    .line 16
    iput-boolean p3, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->use:Z

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

    iput-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->chosenIntegral:J

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->use:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChosenIntegral()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->chosenIntegral:J

    return-wide v0
.end method

.method public isUse()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->use:Z

    return v0
.end method

.method public setChosenIntegral(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chosenIntegral"
        }
    .end annotation

    .line 52
    iput-wide p1, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->chosenIntegral:J

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

    .line 60
    iput-boolean p1, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->use:Z

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
    iget-wide v0, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->chosenIntegral:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    iget-boolean p2, p0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;->use:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
