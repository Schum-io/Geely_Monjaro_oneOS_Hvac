.class public Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "RspNaviStatus.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private naviStatus:Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 2
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->naviStatus:Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->copyBaseInfo(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->clone()Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->clone()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;

    .line 4
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->naviStatus:Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->clone()Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->naviStatus:Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->clone()Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNaviStatus()Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->naviStatus:Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    return-object v0
.end method

.method public setNaviStatus(Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->naviStatus:Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RspNaviStatus{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "naviStatus="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->naviStatus:Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{base="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
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
            "var1",
            "var2"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspNaviStatus;->naviStatus:Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
