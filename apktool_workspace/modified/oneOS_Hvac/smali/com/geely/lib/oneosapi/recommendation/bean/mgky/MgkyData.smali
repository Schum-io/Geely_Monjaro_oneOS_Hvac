.class public Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;
.super Ljava/lang/Object;
.source "MgkyData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cardType:Ljava/lang/String;

.field private contentDesc:Ljava/lang/String;

.field private deliveryPosition:Ljava/lang/String;

.field private expiration:Ljava/lang/Long;

.field private jumpAction:Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;

.field private messageId:Ljava/lang/String;

.field private push:Ljava/lang/Long;

.field private resourcesType:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
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

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->type:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->messageId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->title:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->contentDesc:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8
    iput-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->push:Ljava/lang/Long;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->push:Ljava/lang/Long;

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iput-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->expiration:Ljava/lang/Long;

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->expiration:Ljava/lang/Long;

    .line 17
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->resourcesType:Ljava/lang/String;

    .line 18
    const-class v0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->jumpAction:Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->deliveryPosition:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->cardType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->deliveryPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->expiration:Ljava/lang/Long;

    return-object v0
.end method

.method public getJumpAction()Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->jumpAction:Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPush()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->push:Ljava/lang/Long;

    return-object v0
.end method

.method public getResourcesType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->resourcesType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->cardType:Ljava/lang/String;

    return-void
.end method

.method public setDeliveryPosition(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deliveryPosition"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->deliveryPosition:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expiration"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->expiration:Ljava/lang/Long;

    return-void
.end method

.method public setJumpAction(Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jumpAction"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->jumpAction:Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setPush(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "push"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->push:Ljava/lang/Long;

    return-void
.end method

.method public setResourcesType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourcesType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->resourcesType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MgkyData{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", messageId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", contentDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", push="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->push:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", expiration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->expiration:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resourcesType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->resourcesType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", jumpAction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->jumpAction:Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", deliveryPosition=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->deliveryPosition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cardType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->cardType:Ljava/lang/String;

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
    .locals 5
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->messageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->contentDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->push:Ljava/lang/Long;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->push:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->expiration:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->expiration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->resourcesType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->jumpAction:Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyContentBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 19
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->deliveryPosition:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/geely/lib/oneosapi/recommendation/bean/mgky/MgkyData;->cardType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
