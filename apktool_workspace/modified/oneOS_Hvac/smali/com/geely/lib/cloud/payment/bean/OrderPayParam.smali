.class public Lcom/geely/lib/cloud/payment/bean/OrderPayParam;
.super Ljava/lang/Object;
.source "OrderPayParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/payment/bean/OrderPayParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private guaranteedFlag:Ljava/lang/String;

.field private orderIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/payment/bean/OrderIdParam;",
            ">;"
        }
    .end annotation
.end field

.field private orderSource:Ljava/lang/String;

.field private payerMobileNo:Ljava/lang/String;

.field private payerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/payment/bean/OrderPayParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->guaranteedFlag:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerMobileNo:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerName:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/geely/lib/cloud/payment/bean/OrderIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderIdList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
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
            "guaranteedFlag",
            "orderSource",
            "payerMobileNo",
            "orderIdList",
            "payerName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/payment/bean/OrderIdParam;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->guaranteedFlag:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerMobileNo:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderIdList:Ljava/util/List;

    .line 28
    iput-object p5, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGuaranteedFlag()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->guaranteedFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/payment/bean/OrderIdParam;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderIdList:Ljava/util/List;

    return-object v0
.end method

.method public getOrderSource()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerMobileNo()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerMobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerName:Ljava/lang/String;

    return-object v0
.end method

.method public setGuaranteedFlag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guaranteedFlag"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->guaranteedFlag:Ljava/lang/String;

    return-void
.end method

.method public setOrderIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/payment/bean/OrderIdParam;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderIdList:Ljava/util/List;

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

    .line 71
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    return-void
.end method

.method public setPayerMobileNo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payerMobileNo"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerMobileNo:Ljava/lang/String;

    return-void
.end method

.method public setPayerName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payerName"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerName:Ljava/lang/String;

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

    .line 32
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->guaranteedFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerMobileNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->payerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->orderIdList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
