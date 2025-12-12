.class public Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;
.super Ljava/lang/Object;
.source "AppVersionParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/AppInfoList;",
            ">;"
        }
    .end annotation
.end field

.field private carModel:Ljava/lang/String;

.field private carSeries:Ljava/lang/String;

.field private carSystemVersion:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->vin:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carModel:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSeries:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->appInfoList:Ljava/util/List;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSystemVersion:Ljava/lang/String;

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
            "vin",
            "carModel",
            "carSeries",
            "appInfoList",
            "carSystemVersion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/AppInfoList;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->vin:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carModel:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSeries:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->appInfoList:Ljava/util/List;

    .line 23
    iput-object p5, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSystemVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/AppInfoList;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->appInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getCarModel()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carModel:Ljava/lang/String;

    return-object v0
.end method

.method public getCarSeries()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSeries:Ljava/lang/String;

    return-object v0
.end method

.method public getCarSystemVersion()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSystemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/AppInfoList;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->appInfoList:Ljava/util/List;

    return-void
.end method

.method public setCarModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carModel"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carModel:Ljava/lang/String;

    return-void
.end method

.method public setCarSeries(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carSeries"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSeries:Ljava/lang/String;

    return-void
.end method

.method public setCarSystemVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carSystemVersion"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSystemVersion:Ljava/lang/String;

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

    .line 65
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->vin:Ljava/lang/String;

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

    .line 36
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carModel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSeries:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->appInfoList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 40
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->carSystemVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
