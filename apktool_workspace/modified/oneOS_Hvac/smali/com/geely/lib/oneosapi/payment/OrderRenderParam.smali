.class public Lcom/geely/lib/oneosapi/payment/OrderRenderParam;
.super Ljava/lang/Object;
.source "OrderRenderParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/payment/OrderRenderParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buyMemberPointsDeductionParam:Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;

.field private divisionIds:Ljava/lang/String;

.field private fullReductionCouponParam:Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;

.field private orderLineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/payment/OrderLineList;",
            ">;"
        }
    .end annotation
.end field

.field private orderSource:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/payment/OrderRenderParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderSource:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/geely/lib/oneosapi/payment/OrderLineList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderLineList:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->divisionIds:Ljava/lang/String;

    .line 12
    const-class v0, Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->buyMemberPointsDeductionParam:Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;

    .line 13
    const-class v0, Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;

    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->fullReductionCouponParam:Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;)V
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
            "orderSource",
            "orderLineList",
            "divisionIds",
            "buyMemberPointsDeductionParam",
            "fullReductionCouponParam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/payment/OrderLineList;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;",
            "Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderSource:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderLineList:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->divisionIds:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->buyMemberPointsDeductionParam:Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;

    .line 7
    iput-object p5, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->fullReductionCouponParam:Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBuyMemberPointsDeductionParam()Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->buyMemberPointsDeductionParam:Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;

    return-object v0
.end method

.method public getDivisionIds()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->divisionIds:Ljava/lang/String;

    return-object v0
.end method

.method public getFullReductionCouponParam()Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->fullReductionCouponParam:Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;

    return-object v0
.end method

.method public getOrderLineList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/payment/OrderLineList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderLineList:Ljava/util/List;

    return-object v0
.end method

.method public getOrderSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderSource:Ljava/lang/String;

    return-object v0
.end method

.method public setBuyMemberPointsDeductionParam(Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buyMemberPointsDeductionParam"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->buyMemberPointsDeductionParam:Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;

    return-void
.end method

.method public setDivisionIds(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "divisionIds"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->divisionIds:Ljava/lang/String;

    return-void
.end method

.method public setFullReductionCouponParam(Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullReductionCouponParam"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->fullReductionCouponParam:Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;

    return-void
.end method

.method public setOrderLineList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderLineList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/payment/OrderLineList;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderLineList:Ljava/util/List;

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

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderSource:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->orderLineList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->divisionIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->buyMemberPointsDeductionParam:Lcom/geely/lib/oneosapi/payment/BuyMemberPointsDeductionParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/OrderRenderParam;->fullReductionCouponParam:Lcom/geely/lib/oneosapi/payment/FullReductionCouponParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
