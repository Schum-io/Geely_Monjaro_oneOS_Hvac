.class public Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;
.super Ljava/lang/Object;
.source "UpdateReportParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private requestId:Ljava/lang/String;

.field private statusReason:Ljava/lang/String;

.field private upgradeStatus:I

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->vin:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->requestId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->upgradeStatus:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->statusReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vin",
            "requestId",
            "upgradeStatus",
            "statusReason"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->vin:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->requestId:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->upgradeStatus:I

    .line 20
    iput-object p4, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->statusReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusReason()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->statusReason:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeStatus()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->upgradeStatus:I

    return v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestId"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setStatusReason(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusReason"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->statusReason:Ljava/lang/String;

    return-void
.end method

.method public setUpgradeStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upgradeStatus"
        }
    .end annotation

    .line 76
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->upgradeStatus:I

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
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->vin:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->upgradeStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->statusReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
