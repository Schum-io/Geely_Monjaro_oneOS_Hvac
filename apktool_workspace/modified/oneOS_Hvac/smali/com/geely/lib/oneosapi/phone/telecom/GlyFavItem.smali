.class public Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;
.super Ljava/lang/Object;
.source "GlyFavItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContactName:Ljava/lang/String;

.field private mContainId:J

.field private mFirstLetter:Ljava/lang/String;

.field private mIsFav:Z

.field private mPhoneNumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumberTrim:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPicUrl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mIsFav:Z

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContainId:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPicUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContactName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumber:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumberTrim:Ljava/util/List;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mFirstLetter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
            "isFav",
            "containId",
            "picUrl",
            "mContactName",
            "mPhoneNumber",
            "mPhoneNumberTrim"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mIsFav:Z

    .line 11
    iput-wide p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContainId:J

    .line 12
    iput-object p4, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPicUrl:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContactName:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumber:Ljava/util/List;

    .line 15
    iput-object p7, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumberTrim:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getmContactName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getmContainId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContainId:J

    return-wide v0
.end method

.method public getmFirstLetter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mFirstLetter:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhoneNumber()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumber:Ljava/util/List;

    return-object v0
.end method

.method public getmPhoneNumberTrim()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumberTrim:Ljava/util/List;

    return-object v0
.end method

.method public getmPicUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public ismIsFav()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mIsFav:Z

    return v0
.end method

.method public setmContactName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContactName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContactName:Ljava/lang/String;

    return-void
.end method

.method public setmContainId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContainId"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContainId:J

    return-void
.end method

.method public setmFirstLetter(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFirstLetter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mFirstLetter:Ljava/lang/String;

    return-void
.end method

.method public setmIsFav(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mIsFav"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mIsFav:Z

    return-void
.end method

.method public setmPhoneNumber(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPhoneNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumber:Ljava/util/List;

    return-void
.end method

.method public setmPhoneNumberTrim(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPhoneNumberTrim"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumberTrim:Ljava/util/List;

    return-void
.end method

.method public setmPicUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPicUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPicUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "GlyFavItem{}"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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
    iget-boolean p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mIsFav:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContainId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPicUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mContactName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumber:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6
    iget-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mPhoneNumberTrim:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7
    iget-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyFavItem;->mFirstLetter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
