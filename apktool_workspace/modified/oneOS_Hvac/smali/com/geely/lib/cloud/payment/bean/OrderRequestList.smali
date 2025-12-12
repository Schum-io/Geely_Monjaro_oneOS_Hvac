.class public Lcom/geely/lib/cloud/payment/bean/OrderRequestList;
.super Ljava/lang/Object;
.source "OrderRequestList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/payment/bean/OrderRequestList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private buyMemberPointsDeductionParam:Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;

.field private extraParam:Lcom/geely/lib/cloud/payment/bean/ExtraParam;

.field private fullReductionCouponParam:Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;

.field private orderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/payment/bean/OrderList;",
            ">;"
        }
    .end annotation
.end field

.field private orderSource:Ljava/lang/String;

.field private reqSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/payment/bean/OrderRequestList$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderSource:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->appId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->reqSource:Ljava/lang/String;

    .line 35
    const-class v0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->buyMemberPointsDeductionParam:Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;

    .line 36
    const-class v0, Lcom/geely/lib/cloud/payment/bean/ExtraParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/ExtraParam;

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->extraParam:Lcom/geely/lib/cloud/payment/bean/ExtraParam;

    .line 37
    const-class v0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;

    iput-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->fullReductionCouponParam:Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;

    .line 38
    sget-object v0, Lcom/geely/lib/cloud/payment/bean/OrderList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;Lcom/geely/lib/cloud/payment/bean/ExtraParam;Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderSource",
            "appId",
            "reqSource",
            "buyMemberPointsDeductionParam",
            "extraParam",
            "fullReductionCouponParam",
            "orderList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;",
            "Lcom/geely/lib/cloud/payment/bean/ExtraParam;",
            "Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/payment/bean/OrderList;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderSource:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->appId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->reqSource:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->buyMemberPointsDeductionParam:Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;

    .line 26
    iput-object p5, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->extraParam:Lcom/geely/lib/cloud/payment/bean/ExtraParam;

    .line 27
    iput-object p6, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->fullReductionCouponParam:Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;

    .line 28
    iput-object p7, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyMemberPointsDeductionParam()Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->buyMemberPointsDeductionParam:Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;

    return-object v0
.end method

.method public getExtraParam()Lcom/geely/lib/cloud/payment/bean/ExtraParam;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->extraParam:Lcom/geely/lib/cloud/payment/bean/ExtraParam;

    return-object v0
.end method

.method public getFullReductionCouponParam()Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->fullReductionCouponParam:Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;

    return-object v0
.end method

.method public getOrderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/payment/bean/OrderList;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderList:Ljava/util/List;

    return-object v0
.end method

.method public getOrderSource()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderSource:Ljava/lang/String;

    return-object v0
.end method

.method public getReqSource()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->reqSource:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->appId:Ljava/lang/String;

    return-void
.end method

.method public setBuyMemberPointsDeductionParam(Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buyMemberPointsDeductionParam"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->buyMemberPointsDeductionParam:Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;

    return-void
.end method

.method public setExtraParam(Lcom/geely/lib/cloud/payment/bean/ExtraParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraParam"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->extraParam:Lcom/geely/lib/cloud/payment/bean/ExtraParam;

    return-void
.end method

.method public setFullReductionCouponParam(Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullReductionCouponParam"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->fullReductionCouponParam:Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;

    return-void
.end method

.method public setOrderList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/payment/bean/OrderList;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderList:Ljava/util/List;

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

    .line 74
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderSource:Ljava/lang/String;

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

    .line 90
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->reqSource:Ljava/lang/String;

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

    .line 43
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->reqSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->buyMemberPointsDeductionParam:Lcom/geely/lib/cloud/payment/bean/BuyMemberPointsDeductionParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->extraParam:Lcom/geely/lib/cloud/payment/bean/ExtraParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-object v0, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->fullReductionCouponParam:Lcom/geely/lib/cloud/payment/bean/FullReductionCouponParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    iget-object p2, p0, Lcom/geely/lib/cloud/payment/bean/OrderRequestList;->orderList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
