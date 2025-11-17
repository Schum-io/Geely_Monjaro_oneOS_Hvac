.class public Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;
.super Ljava/lang/Object;
.source "DailyRecommendParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelIdList:Ljava/lang/String;

.field private currentPage:Ljava/lang/String;

.field private passportId:Ljava/lang/String;

.field private vinType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->channelIdList:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelIdList"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->channelIdList:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannelIdList()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->channelIdList:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPage()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->currentPage:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->passportId:Ljava/lang/String;

    return-object v0
.end method

.method public getVinType()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->vinType:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelIdList(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelIdList"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->channelIdList:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPage"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->currentPage:Ljava/lang/String;

    return-void
.end method

.method public setPassportId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passportId"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->passportId:Ljava/lang/String;

    return-void
.end method

.method public setVinType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vinType"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->vinType:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/geely/lib/cloud/filmhall/bean/DailyRecommendParam;->channelIdList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
