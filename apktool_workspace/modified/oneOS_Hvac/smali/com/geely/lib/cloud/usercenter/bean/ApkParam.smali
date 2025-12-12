.class public Lcom/geely/lib/cloud/usercenter/bean/ApkParam;
.super Ljava/lang/Object;
.source "ApkParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/ApkParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apkId:Ljava/lang/String;

.field private apkName:Ljava/lang/String;

.field private apkUrl:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private vehicleModel:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/ApkParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->applicationName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->iconUrl:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->vehicleModel:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->versionCode:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            "apkId",
            "applicationName",
            "iconUrl",
            "vehicleModel",
            "versionCode",
            "apkName",
            "apkUrl"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->applicationName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->iconUrl:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->vehicleModel:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->versionCode:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkName:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApkId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkId:Ljava/lang/String;

    return-object v0
.end method

.method public getApkName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleModel()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->vehicleModel:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public setApkId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkId"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkId:Ljava/lang/String;

    return-void
.end method

.method public setApkName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkName"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkName:Ljava/lang/String;

    return-void
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkUrl"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkUrl:Ljava/lang/String;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationName"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconUrl"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setVehicleModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vehicleModel"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->vehicleModel:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionCode"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->versionCode:Ljava/lang/String;

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

    .line 39
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->applicationName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->vehicleModel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->versionCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->apkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
