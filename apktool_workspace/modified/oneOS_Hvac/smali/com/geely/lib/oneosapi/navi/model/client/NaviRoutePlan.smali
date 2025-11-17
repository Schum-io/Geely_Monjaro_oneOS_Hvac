.class public Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "NaviRoutePlan.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_JUST_INFO:I = 0x2

.field public static final ACTION_NAVI:I = 0x1

.field public static final ACTION_ROUTE_PLAN:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I

.field private destPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

.field private naviViaRoadBean:Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;

.field private startPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

.field private strategy:I

.field private viaPoiInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 24
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->viaPoiInfos:Ljava/util/List;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->action:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->strategy:I

    .line 110
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->destPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 111
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->startPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 112
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->naviViaRoadBean:Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;

    .line 113
    sget-object v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->viaPoiInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destPoiInfo"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->viaPoiInfos:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->destPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->strategy:I

    const/16 p1, 0xd49

    .line 8
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPoiInfo",
            "destPoiInfo"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->viaPoiInfos:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->destPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 21
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->startPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->strategy:I

    const/16 p1, 0xd49

    .line 23
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
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->action:I

    return v0
.end method

.method public getDestPoiInfo()Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->destPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-object v0
.end method

.method public getNaviViaRoadBean()Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->naviViaRoadBean:Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;

    return-object v0
.end method

.method public getStartPoiInfo()Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->startPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-object v0
.end method

.method public getStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->strategy:I

    return v0
.end method

.method public getViaPoiInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->viaPoiInfos:Ljava/util/List;

    return-object v0
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
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->action:I

    return-void
.end method

.method public setDestPoiInfo(Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destPoiInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->destPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-void
.end method

.method public setNaviViaRoadBean(Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviViaRoadBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->naviViaRoadBean:Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;

    return-void
.end method

.method public setStartPoiInfo(Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPoiInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->startPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-void
.end method

.method public setStrategy(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->strategy:I

    return-void
.end method

.method public setViaPoiInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viaPoiInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->viaPoiInfos:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviRoutePlan{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->strategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destPoiInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->destPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startPoiInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->startPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viaPoiInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->viaPoiInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", naviViaRoadBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->naviViaRoadBean:Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;

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
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->strategy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->destPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->startPoiInfo:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->naviViaRoadBean:Lcom/geely/lib/oneosapi/navi/model/client/NaviViaRoadBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;->viaPoiInfos:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
