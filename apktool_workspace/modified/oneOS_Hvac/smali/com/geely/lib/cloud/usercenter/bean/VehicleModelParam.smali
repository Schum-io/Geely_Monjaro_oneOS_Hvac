.class public Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;
.super Ljava/lang/Object;
.source "VehicleModelParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private vehicleModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;->vehicleModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vehicleModel"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;->vehicleModel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVehicleModel()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;->vehicleModel:Ljava/lang/String;

    return-object v0
.end method

.method public setVehicleModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vehicleModel"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;->vehicleModel:Ljava/lang/String;

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

    .line 46
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;->vehicleModel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
