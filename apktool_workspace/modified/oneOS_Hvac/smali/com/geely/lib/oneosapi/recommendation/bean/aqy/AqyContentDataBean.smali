.class public Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;
.super Ljava/lang/Object;
.source "AqyContentDataBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumName:Ljava/lang/String;

.field private chnId:I

.field private desc:Ljava/lang/String;

.field private focus:Ljava/lang/String;

.field private hot:I

.field private isVIP:Z

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private qipuId:Z

.field private updateTip:Ljava/lang/String;

.field private vipType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->name:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->chnId:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->vipType:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->updateTip:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->hot:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->link:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->pic:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->isVIP:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumId:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->qipuId:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->focus:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getChnId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->chnId:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->focus:Ljava/lang/String;

    return-object v0
.end method

.method public getHot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->hot:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->updateTip:Ljava/lang/String;

    return-object v0
.end method

.method public getVipType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->vipType:Ljava/lang/String;

    return-object v0
.end method

.method public isQipuId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->qipuId:Z

    return v0
.end method

.method public isVIP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->isVIP:Z

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "albumId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "albumName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setChnId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chnId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->chnId:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public setFocus(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focus"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->focus:Ljava/lang/String;

    return-void
.end method

.method public setHot(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hot"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->hot:I

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->link:Ljava/lang/String;

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

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setQipuId(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qipuId"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->qipuId:Z

    return-void
.end method

.method public setUpdateTip(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateTip"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->updateTip:Ljava/lang/String;

    return-void
.end method

.method public setVIP(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "VIP"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->isVIP:Z

    return-void
.end method

.method public setVipType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->vipType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AqyContentDataBean{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", chnId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->chnId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", vipType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->vipType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", updateTip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->updateTip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->hot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", link=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->link:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isVIP="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->isVIP:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", albumId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", albumName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", qipuId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->qipuId:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", focus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->focus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", desc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 1
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->chnId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->vipType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->updateTip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->hot:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->pic:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->isVIP:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->albumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-boolean p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->qipuId:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->focus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/aqy/AqyContentDataBean;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
