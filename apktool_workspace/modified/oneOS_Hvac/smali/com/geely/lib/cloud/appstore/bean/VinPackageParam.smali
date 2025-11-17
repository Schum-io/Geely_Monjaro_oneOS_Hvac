.class public Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;
.super Ljava/lang/Object;
.source "VinPackageParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appPackage:Ljava/lang/String;

.field private appVersion:I

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->vin:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->appPackage:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->appVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vin",
            "appPackage"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->vin:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->appPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->appVersion:I

    return v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appPackage"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->appPackage:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appVersion"
        }
    .end annotation

    .line 71
    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->appVersion:I

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

    .line 55
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->vin:Ljava/lang/String;

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

    .line 28
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->appPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget p2, p0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->appVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
