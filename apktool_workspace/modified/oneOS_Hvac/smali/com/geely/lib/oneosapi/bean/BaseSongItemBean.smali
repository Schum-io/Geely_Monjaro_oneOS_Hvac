.class public Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;
.super Ljava/lang/Object;
.source "BaseSongItemBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/bean/BaseSongItemBean$UnplayableCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOK:Ljava/lang/String; = "book"

.field public static final TYPE_NEWS:Ljava/lang/String; = "news"

.field public static final TYPE_RADIO:Ljava/lang/String; = "radio"

.field public static final TYPE_SONG:Ljava/lang/String; = "song"


# instance fields
.field public album_id:Ljava/lang/String;

.field public album_mid:Ljava/lang/String;

.field public album_name:Ljava/lang/String;

.field public album_pic_300x300:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public hot:I

.field public isSelect:Z

.field private itemAuthor:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private itemImageUrl:Ljava/lang/String;

.field private itemIndex:I

.field private itemNextUid:I

.field private itemRead:Z

.field private itemTitle:Ljava/lang/String;

.field private itemTotal:I

.field public itemType:Ljava/lang/String;

.field public other_singer_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/bean/SingerItemBean;",
            ">;"
        }
    .end annotation
.end field

.field public playable:I

.field public public_time:Ljava/lang/String;

.field public singer_id:Ljava/lang/String;

.field public singer_mid:Ljava/lang/String;

.field public singer_name:Ljava/lang/String;

.field public singer_pic_300x300:Ljava/lang/String;

.field public singer_title:Ljava/lang/String;

.field public song_id:J

.field public song_list_id:Ljava/lang/String;

.field public song_mid:Ljava/lang/String;

.field public song_name:Ljava/lang/String;

.field public song_play_time:J

.field public song_play_url:Ljava/lang/String;

.field public song_play_url_hq:Ljava/lang/String;

.field public song_play_url_sq:Ljava/lang/String;

.field public song_play_url_standard:Ljava/lang/String;

.field public song_size:I

.field public song_size_hq:I

.field public song_size_sq:I

.field public song_size_standard:I

.field private sourceInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_info"
    .end annotation
.end field

.field public try_playable:I

.field public unplayable_code:I

.field public unplayable_msg:Ljava/lang/String;

.field public user_own_rule:I

.field public uuid:J

.field public vip:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
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

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->isSelect:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemType:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemTitle:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemAuthor:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemId:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemIndex:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemImageUrl:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->sourceInfo:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemRead:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemNextUid:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemTotal:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->uuid:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->user_own_rule:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->playable:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_mid:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_id:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_name:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_pic_300x300:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_pic_300x300:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_title:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_name:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_id:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_mid:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_name:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_standard:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_hq:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_sq:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size_standard:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size_hq:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size_sq:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->public_time:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_id:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_mid:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->hot:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->isSelect:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_time:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_list_id:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_code:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_msg:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->try_playable:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->vip:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->genre:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkPlayEnable(Landroid/content/Context;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "autoToast"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getUnplayable_code()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->try_playable:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_msg:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbum_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbum_pic_300x300()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_pic_300x300:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_pic_300x300:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getSinger_pic_300x300()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getItemAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemIndex:I

    return v0
.end method

.method public getItemNextUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemNextUid:I

    return v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemTotal:I

    return v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    const-string v0, "song"

    return-object v0
.end method

.method public getOther_singer_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/bean/SingerItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->other_singer_list:Ljava/util/List;

    return-object v0
.end method

.method public getPublic_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->public_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger_name()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->other_singer_list:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->other_singer_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/lib/oneosapi/bean/SingerItemBean;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/geely/lib/oneosapi/bean/SingerItemBean;->getSinger_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSinger_pic_300x300()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_pic_300x300:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_title:Ljava/lang/String;

    return-object v0
.end method

.method public getSong_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_id:J

    return-wide v0
.end method

.method public getSong_list_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_list_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSong_mid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_mid:Ljava/lang/String;

    return-object v0
.end method

.method public getSong_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSong_play_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_time:J

    return-wide v0
.end method

.method public getSong_play_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSong_play_url_hq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_hq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getSong_play_url_standard()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_hq:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSong_play_url_sq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_sq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getSong_play_url_hq()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_sq:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSong_play_url_standard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_standard:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getSong_play_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_standard:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSong_size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size:I

    return v0
.end method

.method public getSong_size_hq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size_hq:I

    return v0
.end method

.method public getSong_size_sq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size_sq:I

    return v0
.end method

.method public getSong_size_standard()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size_standard:I

    return v0
.end method

.method public getSourceInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->sourceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTry_playable()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->try_playable:I

    return v0
.end method

.method public getUnplayable_code()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_code:I

    return v0
.end method

.method public getUnplayable_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->uuid:J

    return-wide v0
.end method

.method public getVip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->vip:I

    return v0
.end method

.method public isItemOver()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isItemPlayDirect()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getSong_play_url_sq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isItemRead()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->user_own_rule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->playable:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->isSelect:Z

    return v0
.end method

.method public setAlbum_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "album_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_id:Ljava/lang/String;

    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genre"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->genre:Ljava/lang/String;

    return-void
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemAuthor:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemId:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemImageUrl:Ljava/lang/String;

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
    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemIndex:I

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
    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemNextUid:I

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
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemRead:Z

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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemTitle:Ljava/lang/String;

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
    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemTotal:I

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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemType:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->isSelect:Z

    return-void
.end method

.method public setSong_list_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "song_list_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_list_id:Ljava/lang/String;

    return-void
.end method

.method public setSong_play_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "song_play_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_time:J

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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->sourceInfo:Ljava/lang/String;

    return-void
.end method

.method public setTry_playable(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "try_playable"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->try_playable:I

    return-void
.end method

.method public setUnplayable_code(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unplayable_code"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_code:I

    return-void
.end method

.method public setUnplayable_msg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_msg:Ljava/lang/String;

    return-void
.end method

.method public setUuid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->uuid:J

    return-void
.end method

.method public setVip(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->vip:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseSongItemBean{album_pic_300x300=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_pic_300x300:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", singer_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", song_mid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_mid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", song_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_name:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemAuthor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->sourceInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemRead:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemNextUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->itemTotal:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->uuid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->user_own_rule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->playable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_mid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_pic_300x300:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->album_pic_300x300:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_mid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_standard:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_hq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_url_sq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size_standard:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size_hq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_size_sq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->public_time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->singer_mid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->hot:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-boolean p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->isSelect:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_play_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->song_list_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->unplayable_msg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->try_playable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->vip:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->genre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
