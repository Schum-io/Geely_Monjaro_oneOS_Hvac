.class public Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;
.super Ljava/lang/Object;
.source "WorkOrderPostParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelID:Ljava/lang/String;

.field private classifyID:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private isOwner:Z

.field private name:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->content:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->isOwner:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->name:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->vin:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->channelID:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->classifyID:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            "content",
            "isOwner",
            "name",
            "vin",
            "channelID",
            "classifyID",
            "phoneNumber"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->content:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->isOwner:Z

    .line 21
    iput-object p3, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->name:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->vin:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->channelID:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->classifyID:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->phoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannelID()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->channelID:Ljava/lang/String;

    return-object v0
.end method

.method public getClassifyID()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->classifyID:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public isOwner()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->isOwner:Z

    return v0
.end method

.method public setChannelID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelID"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->channelID:Ljava/lang/String;

    return-void
.end method

.method public setClassifyID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classifyID"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->classifyID:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->content:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    .line 79
    iput-boolean p1, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->isOwner:Z

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phoneNumber"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->phoneNumber:Ljava/lang/String;

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

    .line 95
    iput-object p1, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->vin:Ljava/lang/String;

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

    .line 40
    iget-object p2, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-boolean p2, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->isOwner:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    iget-object p2, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->channelID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->classifyID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/geely/lib/cloud/feedback/bean/WorkOrderPostParam;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
