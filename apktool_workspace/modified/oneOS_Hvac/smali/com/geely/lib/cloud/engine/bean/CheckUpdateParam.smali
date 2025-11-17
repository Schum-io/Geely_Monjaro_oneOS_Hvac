.class public Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;
.super Ljava/lang/Object;
.source "CheckUpdateParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private vehicleCloudSenceListParam:Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vin:Ljava/lang/String;

    .line 19
    const-class v0, Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;

    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vehicleCloudSenceListParam:Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vin",
            "vehicleCloudSenceListParam"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vin:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vehicleCloudSenceListParam:Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVehicleCloudSenceListParam()Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vehicleCloudSenceListParam:Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setVehicleCloudSenceListParam(Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vehicleCloudSenceListParam"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vehicleCloudSenceListParam:Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;

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

    .line 50
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vin:Ljava/lang/String;

    return-void
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

    .line 24
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->vehicleCloudSenceListParam:Lcom/geely/lib/cloud/engine/bean/VehicleCloudSenceListParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
