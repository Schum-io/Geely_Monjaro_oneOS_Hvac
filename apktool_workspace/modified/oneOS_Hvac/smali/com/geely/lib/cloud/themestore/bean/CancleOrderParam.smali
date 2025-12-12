.class public Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;
.super Ljava/lang/Object;
.source "CancleOrderParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private orderNo:Ljava/lang/String;

.field private reqSource:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->vin:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->orderNo:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->reqSource:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->timestamp:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->sign:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            "vin",
            "orderNo",
            "reqSource",
            "timestamp",
            "sign"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->vin:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->orderNo:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->reqSource:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->timestamp:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->sign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrderNo()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->orderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getReqSource()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->reqSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->vin:Ljava/lang/String;

    return-object v0
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

    .line 71
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->orderNo:Ljava/lang/String;

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

    .line 79
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->reqSource:Ljava/lang/String;

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

    .line 95
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->timestamp:Ljava/lang/String;

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

    .line 63
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->vin:Ljava/lang/String;

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

    .line 34
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->orderNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->reqSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->sign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
