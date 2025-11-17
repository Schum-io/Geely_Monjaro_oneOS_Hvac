.class public Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "SearchByKeyword.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_TYPE_AROUND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEARCH_TYPE_KEYWORD:I = 0x0

.field public static final SEARCH_TYPE_SET_COMPANY:I = 0x2

.field public static final SEARCH_TYPE_SET_HOME:I = 0x1

.field public static final SORT_RULE_DEFAULT:I = 0x0

.field public static final SORT_RULE_DISTANCE:I = 0x1


# instance fields
.field private action:I

.field private keyWordType:I

.field private keywords:Ljava/lang/String;

.field private poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

.field private searchCity:Ljava/lang/String;

.field private searchType:I

.field private sortRule:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "searchType",
            "keywords",
            "searchCity"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 5
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchType:I

    .line 6
    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keywords:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchCity:Ljava/lang/String;

    const/16 p1, 0xc81

    .line 8
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

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

    .line 13
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchType:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keywords:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchCity:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->action:I

    .line 18
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->sortRule:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keyWordType:I

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqModel"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->copyBaseInfo(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    const/16 p1, 0xc81

    .line 3
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keywords",
            "searchCity"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keywords:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchCity:Ljava/lang/String;

    const/16 p1, 0xc81

    .line 12
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->action:I

    return v0
.end method

.method public getKeyWordType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keyWordType:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiType()Lcom/geely/lib/oneosapi/navi/model/base/PoiType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    return-object v0
.end method

.method public getSearchCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchCity:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchType:I

    return v0
.end method

.method public getSortRule()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->sortRule:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->action:I

    return-void
.end method

.method public setKeyWordType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyWordType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keyWordType:I

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keywords"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setPoiType(Lcom/geely/lib/oneosapi/navi/model/base/PoiType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poiType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    return-void
.end method

.method public setSearchCity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchCity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchCity:Ljava/lang/String;

    return-void
.end method

.method public setSearchType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchType:I

    return-void
.end method

.method public setSortRule(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sortRule"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->sortRule:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchByKeyword{sortRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->sortRule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyWordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keyWordType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywords=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", searchCity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchCity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poiType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->searchCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->sortRule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->keyWordType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
