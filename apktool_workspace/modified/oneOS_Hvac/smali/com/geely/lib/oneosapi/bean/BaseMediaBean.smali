.class public Lcom/geely/lib/oneosapi/bean/BaseMediaBean;
.super Ljava/lang/Object;
.source "BaseMediaBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/bean/BaseMediaBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOK:Ljava/lang/String; = "book"

.field public static final TYPE_NEWS:Ljava/lang/String; = "news"

.field public static final TYPE_RADIO:Ljava/lang/String; = "radio"

.field public static final TYPE_SONG:Ljava/lang/String; = "song"


# instance fields
.field private itemAuthor:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private itemImageUrl:Ljava/lang/String;

.field private itemIndex:I

.field private itemNextUid:I

.field private itemRead:Z

.field private itemTitle:Ljava/lang/String;

.field private itemTotal:I

.field public itemType:Ljava/lang/String;

.field private sourceInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_info"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/bean/BaseMediaBean$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
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

    iput-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemType:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemTitle:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemAuthor:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemIndex:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemImageUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->sourceInfo:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemRead:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemNextUid:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemTotal:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemIndex:I

    return v0
.end method

.method public getItemNextUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemNextUid:I

    return v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemTotal:I

    return v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->sourceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isItemOver()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isItemRead()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemRead:Z

    return v0
.end method

.method public setItemAuthor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemAuthor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemAuthor:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setItemImageUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setItemIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemIndex"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemIndex:I

    return-void
.end method

.method public setItemNextUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemNextUid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemNextUid:I

    return-void
.end method

.method public setItemOver(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    return-void
.end method

.method public setItemRead(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemRead"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemRead:Z

    return-void
.end method

.method public setItemTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemTitle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemTitle:Ljava/lang/String;

    return-void
.end method

.method public setItemTotal(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemTotal"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemTotal:I

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemType:Ljava/lang/String;

    return-void
.end method

.method public setSourceInfo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->sourceInfo:Ljava/lang/String;

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

    .line 1
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemAuthor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->sourceInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemRead:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemNextUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->itemTotal:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
