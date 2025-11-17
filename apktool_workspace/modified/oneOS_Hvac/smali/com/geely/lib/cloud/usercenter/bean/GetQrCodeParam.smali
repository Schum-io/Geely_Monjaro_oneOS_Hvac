.class public Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;
.super Ljava/lang/Object;
.source "GetQrCodeParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ihuId:Ljava/lang/String;

.field private ihuRomVersion:Ljava/lang/String;

.field private ihuUserAppVersion:Ljava/lang/String;

.field private modelCode:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private seriesCode:Ljava/lang/String;

.field private seriesName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuRomVersion:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuUserAppVersion:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelCode:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesCode:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesName:Ljava/lang/String;

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
            "ihuId",
            "ihuRomVersion",
            "ihuUserAppVersion",
            "modelCode",
            "modelName",
            "seriesCode",
            "seriesName"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuRomVersion:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuUserAppVersion:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelCode:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelName:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesCode:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIhuId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuId:Ljava/lang/String;

    return-object v0
.end method

.method public getIhuRomVersion()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuRomVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIhuUserAppVersion()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuUserAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelCode:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesCode()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesName:Ljava/lang/String;

    return-object v0
.end method

.method public setIhuId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ihuId"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuId:Ljava/lang/String;

    return-void
.end method

.method public setIhuRomVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ihuRomVersion"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuRomVersion:Ljava/lang/String;

    return-void
.end method

.method public setIhuUserAppVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ihuUserAppVersion"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuUserAppVersion:Ljava/lang/String;

    return-void
.end method

.method public setModelCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelCode"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelCode:Ljava/lang/String;

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelName"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setSeriesCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seriesCode"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesCode:Ljava/lang/String;

    return-void
.end method

.method public setSeriesName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seriesName"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesName:Ljava/lang/String;

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

    .line 48
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuRomVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->ihuUserAppVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->modelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->seriesName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
