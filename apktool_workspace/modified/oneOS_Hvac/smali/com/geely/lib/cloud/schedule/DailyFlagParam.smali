.class public Lcom/geely/lib/cloud/schedule/DailyFlagParam;
.super Ljava/lang/Object;
.source "DailyFlagParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/schedule/DailyFlagParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dailyFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/geely/lib/cloud/schedule/DailyFlagParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/schedule/DailyFlagParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/schedule/DailyFlagParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dailyFlay"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyFlagParam;->dailyFlag:I

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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyFlagParam;->dailyFlag:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDailyFlag()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/geely/lib/cloud/schedule/DailyFlagParam;->dailyFlag:I

    return v0
.end method

.method public setDailyFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dailyFlag"
        }
    .end annotation

    .line 48
    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyFlagParam;->dailyFlag:I

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

    .line 23
    iget p2, p0, Lcom/geely/lib/cloud/schedule/DailyFlagParam;->dailyFlag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
