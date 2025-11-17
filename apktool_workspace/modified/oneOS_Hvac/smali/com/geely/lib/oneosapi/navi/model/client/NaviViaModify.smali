.class public Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "NaviViaModify.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_ADD:I = 0x0

.field public static final ACTION_REMOVE:I = 0x1

.field public static final ACTION_REMOVE_ALL:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I

.field private viaIndex:I

.field private viaPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 2
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->action:I

    const/16 p1, 0xd4d

    .line 3
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(ILcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "via"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 5
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->action:I

    .line 6
    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    const/16 p1, 0xd4d

    .line 7
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

    .line 8
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->action:I

    .line 10
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaIndex:I

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
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->action:I

    return v0
.end method

.method public getViaIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaIndex:I

    return v0
.end method

.method public getViaPoi()Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-object v0
.end method

.method public setViaIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viaIndex"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NaviViaModify{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "action="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viaPoi="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viaIndex="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{base="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
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
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;->viaIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
