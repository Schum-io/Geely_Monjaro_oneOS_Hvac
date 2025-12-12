.class public Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;
.super Ljava/lang/Object;
.source "PostDeviceAddParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dhuId:Ljava/lang/String;

.field private ihuId:Ljava/lang/String;

.field private ihuRomVersion:Ljava/lang/String;

.field private ihuUserAppVersion:Ljava/lang/String;

.field private modelCode:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private pcode:Ljava/lang/String;

.field private seriesCode:Ljava/lang/String;

.field private seriesName:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private xdsn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->dhuId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuRomVersion:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuUserAppVersion:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->modelCode:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->modelName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->seriesCode:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->seriesName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->pcode:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->xdsn:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->sn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDhuId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->dhuId:Ljava/lang/String;

    return-object v0
.end method

.method public getIhuId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuId:Ljava/lang/String;

    return-object v0
.end method

.method public getIhuRomVersion()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuRomVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIhuUserAppVersion()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuUserAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->modelCode:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getPcode()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->pcode:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesCode()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->seriesCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesName()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->seriesName:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getXdsn()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->xdsn:Ljava/lang/String;

    return-object v0
.end method

.method public setDhuId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dhuId"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->dhuId:Ljava/lang/String;

    return-void
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

    .line 80
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuId:Ljava/lang/String;

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

    .line 96
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuRomVersion:Ljava/lang/String;

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

    .line 104
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuUserAppVersion:Ljava/lang/String;

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

    .line 112
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->modelCode:Ljava/lang/String;

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

    .line 120
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setPcode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pcode"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->pcode:Ljava/lang/String;

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

    .line 128
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->seriesCode:Ljava/lang/String;

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

    .line 136
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->seriesName:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sn"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->sn:Ljava/lang/String;

    return-void
.end method

.method public setXdsn(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xdsn"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->xdsn:Ljava/lang/String;

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

    .line 45
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->dhuId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuRomVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->ihuUserAppVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->modelCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->modelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->seriesCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->seriesName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->pcode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->xdsn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->sn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
