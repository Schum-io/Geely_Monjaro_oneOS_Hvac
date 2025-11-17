.class public Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi;
.super Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;
.source "SearchPoi.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSearchPoiTags:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;-><init>(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi;->mSearchPoiTags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSearchPoiTags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi;->mSearchPoiTags:I

    return v0
.end method

.method public setSearchPoiTags(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSearchPoiTags"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi;->mSearchPoiTags:I

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
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/base/SearchPoi;->mSearchPoiTags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
