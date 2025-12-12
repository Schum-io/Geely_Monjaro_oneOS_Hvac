.class public Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;
.super Ljava/lang/Object;
.source "ISearchAroundRequestBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private centerLatLng:Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

.field private extras:Landroid/os/Bundle;

.field private keyword:Ljava/lang/String;

.field private poiType:Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

.field private requestTimeout:J

.field private searchRadius:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->keyword:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->searchRadius:I

    .line 5
    const-class v0, Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->centerLatLng:Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    .line 6
    const-class v0, Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->poiType:Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->requestTimeout:J

    .line 8
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterLatLng()Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->centerLatLng:Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiType()Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->poiType:Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    return-object v0
.end method

.method public getRequestTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->requestTimeout:J

    return-wide v0
.end method

.method public getSearchRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->searchRadius:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->keyword:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->searchRadius:I

    .line 3
    const-class v0, Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->centerLatLng:Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    .line 4
    const-class v0, Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->poiType:Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->requestTimeout:J

    .line 6
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public setCenterLatLng(Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->centerLatLng:Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setPoiType(Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->poiType:Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    return-void
.end method

.method public setRequestTimeout(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestTimeout"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->requestTimeout:J

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
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->searchRadius:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISearchAroundRequestBean{keyword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->searchRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", centerLatLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->centerLatLng:Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poiType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->poiType:Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->requestTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->extras:Landroid/os/Bundle;

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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->searchRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->centerLatLng:Lcom/geely/lib/oneosapi/navi/ipc/ILatLngBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->poiType:Lcom/geely/lib/oneosapi/navi/ipc/IPoiTypeBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->requestTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/ipc/ISearchAroundRequestBean;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
