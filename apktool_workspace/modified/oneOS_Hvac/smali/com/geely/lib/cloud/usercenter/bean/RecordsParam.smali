.class public Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;
.super Ljava/lang/Object;
.source "RecordsParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private confirmTime:Ljava/lang/String;

.field private dhuid:Ljava/lang/String;

.field private docType:Ljava/lang/String;

.field private docVersion:Ljava/lang/String;

.field private eduid:Ljava/lang/String;

.field private model:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docType:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docVersion:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->dhuid:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->eduid:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->model:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->confirmTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "docType",
            "docVersion",
            "dhuid",
            "eduid",
            "model",
            "confirmTime"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docType:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docVersion:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->dhuid:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->eduid:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->model:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->confirmTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfirmTime()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->confirmTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDhuid()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->dhuid:Ljava/lang/String;

    return-object v0
.end method

.method public getDocType()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docType:Ljava/lang/String;

    return-object v0
.end method

.method public getDocVersion()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getEduid()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->eduid:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->model:Ljava/lang/String;

    return-object v0
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

    .line 66
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->confirmTime:Ljava/lang/String;

    return-void
.end method

.method public setDhuid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dhuid"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->dhuid:Ljava/lang/String;

    return-void
.end method

.method public setDocType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "docType"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docType:Ljava/lang/String;

    return-void
.end method

.method public setDocVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "docVersion"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docVersion:Ljava/lang/String;

    return-void
.end method

.method public setEduid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eduid"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->eduid:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->model:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->docVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->dhuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->eduid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->model:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->confirmTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
