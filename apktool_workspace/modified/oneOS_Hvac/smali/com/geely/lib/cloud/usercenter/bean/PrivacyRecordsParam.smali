.class public Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;
.super Ljava/lang/Object;
.source "PrivacyRecordsParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private agreementType:Ljava/lang/String;

.field private agreementVersion:Ljava/lang/String;

.field private confirmTime:Ljava/lang/String;

.field private dhuId:Ljava/lang/String;

.field private ihuId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementType:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementVersion:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->dhuId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->ihuId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->confirmTime:Ljava/lang/String;

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
            "agreementType",
            "agreementVersion",
            "dhuId",
            "ihuId",
            "confirmTime"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementType:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementVersion:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->dhuId:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->ihuId:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->confirmTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAgreementType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementType:Ljava/lang/String;

    return-object v0
.end method

.method public getAgreementVersion()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmTime()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->confirmTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDhuId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->dhuId:Ljava/lang/String;

    return-object v0
.end method

.method public getIhuId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->ihuId:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreementType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agreementType"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementType:Ljava/lang/String;

    return-void
.end method

.method public setAgreementVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agreementVersion"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementVersion:Ljava/lang/String;

    return-void
.end method

.method public setConfirmTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confirmTime"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->confirmTime:Ljava/lang/String;

    return-void
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

    .line 45
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->dhuId:Ljava/lang/String;

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

    .line 53
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->ihuId:Ljava/lang/String;

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

    .line 74
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->agreementVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->dhuId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->ihuId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->confirmTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
