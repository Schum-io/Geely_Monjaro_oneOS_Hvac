.class public Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "SearchAround.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_JUST_INFO:I = 0x0

.field public static final ACTION_SHOW_IN_MAP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_TYPE_AROUND:I = 0x1

.field public static final SEARCH_TYPE_KEYWORD:I


# instance fields
.field private action:I

.field private centerLatLng:Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

.field private keyWordType:I

.field private keywords:Ljava/lang/String;

.field private poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

.field private searchRadius:I

.field private searchType:I

.field private sortRule:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v0, 0xbb8

    .line 2
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchRadius:I

    const/16 v0, 0xc82

    .line 41
    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    const/16 v0, 0xa

    .line 42
    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolVersion(I)V

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

    .line 43
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0xbb8

    .line 44
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchRadius:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchType:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keywords:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchRadius:I

    .line 152
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->getProtocolVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->action:I

    .line 155
    :cond_0
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->centerLatLng:Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

    .line 156
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->sortRule:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keyWordType:I

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
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->action:I

    return v0
.end method

.method public getCenterLatLng()Lcom/geely/lib/oneosapi/navi/model/base/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->centerLatLng:Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

    return-object v0
.end method

.method public getKeyWordType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keyWordType:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiType()Lcom/geely/lib/oneosapi/navi/model/base/PoiType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    return-object v0
.end method

.method public getSearchRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchRadius:I

    return v0
.end method

.method public getSearchType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchType:I

    return v0
.end method

.method public getSortRule()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->sortRule:I

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
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->action:I

    return-void
.end method

.method public setCenterLatLng(Lcom/geely/lib/oneosapi/navi/model/base/LatLng;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerLatLng"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->centerLatLng:Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

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
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keyWordType:I

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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keywords:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    return-void
.end method

.method public setSearchRadius(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchRadius"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchRadius:I

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
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchType:I

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
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->sortRule:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchAround{searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywords=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", centerLatLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->centerLatLng:Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poiType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sortRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->sortRule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyWordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keyWordType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->searchRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->getProtocolVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 6
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->centerLatLng:Lcom/geely/lib/oneosapi/navi/model/base/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->poiType:Lcom/geely/lib/oneosapi/navi/model/base/PoiType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->sortRule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;->keyWordType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
