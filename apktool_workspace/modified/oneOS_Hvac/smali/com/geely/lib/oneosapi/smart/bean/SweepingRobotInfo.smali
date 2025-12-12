.class public Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;
.super Ljava/lang/Object;
.source "SweepingRobotInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private energyValue:I

.field private switchOpen:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->switchOpen:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->energyValue:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->energyValue:I

    return v0
.end method

.method public getSwitchOpen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->switchOpen:I

    return v0
.end method

.method public setEnergyValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "energyValue"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->energyValue:I

    return-void
.end method

.method public setSwitchOpen(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchOpen"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->switchOpen:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SweepingRobotInfo{switchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->switchOpen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", energyValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->energyValue:I

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
    iget p2, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->switchOpen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/geely/lib/oneosapi/smart/bean/SweepingRobotInfo;->energyValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
