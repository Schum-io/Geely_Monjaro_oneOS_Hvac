.class public Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;
.super Ljava/lang/Object;
.source "PdsnAppListParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/AppList;",
            ">;"
        }
    .end annotation
.end field

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->vin:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/geely/lib/cloud/appstore/bean/AppList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->appList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsn",
            "appListPaaram"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/AppList;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->vin:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->appList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/AppList;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->appList:Ljava/util/List;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/AppList;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->appList:Ljava/util/List;

    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vin"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->vin:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->appList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
