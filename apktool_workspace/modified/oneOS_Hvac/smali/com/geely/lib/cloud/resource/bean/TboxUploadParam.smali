.class public Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;
.super Ljava/lang/Object;
.source "TboxUploadParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventId:Ljava/lang/String;

.field private sysKey:Ljava/lang/String;

.field private temId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->sysKey:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->eventId:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->temId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getSysKey()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->sysKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTemId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->temId:Ljava/lang/String;

    return-object v0
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setSysKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sysKey"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->sysKey:Ljava/lang/String;

    return-void
.end method

.method public setTemId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temId"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->temId:Ljava/lang/String;

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

    .line 27
    iget-object p2, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->sysKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->eventId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/geely/lib/cloud/resource/bean/TboxUploadParam;->temId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
