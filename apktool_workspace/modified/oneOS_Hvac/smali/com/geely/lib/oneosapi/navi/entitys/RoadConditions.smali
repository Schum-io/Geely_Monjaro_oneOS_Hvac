.class public Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;
.super Ljava/lang/Object;
.source "RoadConditions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions$TMCSegment;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;",
            ">;"
        }
    .end annotation
.end field

.field public static final TMC_STATUS_AMBLE:I = 0x2

.field public static final TMC_STATUS_INVALID:I = -0x1

.field public static final TMC_STATUS_NO_TRAFFIC:I = 0x0

.field public static final TMC_STATUS_TRAFFIC_CLEAR:I = 0x1

.field public static final TMC_STATUS_TRAFFIC_JAM:I = 0x3

.field public static final TMC_STATUS_TRAFFIC_JAM_HEAVY:I = 0x4

.field public static final TMC_STATUS_TRAVELED:I = 0xa


# instance fields
.field private mFinishDistance:I

.field private mRemainDistance:I

.field private mTMCSegmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions$TMCSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalDistance:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mTotalDistance:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mRemainDistance:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mFinishDistance:I

    .line 6
    sget-object v0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions$TMCSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mTMCSegmentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFinishDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mFinishDistance:I

    return v0
.end method

.method public getRemainDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mRemainDistance:I

    return v0
.end method

.method public getTMCSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions$TMCSegment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mTMCSegmentList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mTotalDistance:I

    return v0
.end method

.method public setFinishDistance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finishDistance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mFinishDistance:I

    return-void
.end method

.method public setRemainDistance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remainDistance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mRemainDistance:I

    return-void
.end method

.method public setTMCSegmentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tmcSegmentList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions$TMCSegment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mTMCSegmentList:Ljava/util/List;

    return-void
.end method

.method public setTotalDistance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalDistance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mTotalDistance:I

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
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mTotalDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mRemainDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mFinishDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/entitys/RoadConditions;->mTMCSegmentList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
