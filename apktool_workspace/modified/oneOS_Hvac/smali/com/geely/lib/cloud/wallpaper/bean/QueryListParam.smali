.class public Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;
.super Ljava/lang/Object;
.source "QueryListParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pageSize:I

.field private time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->time:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->pageSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "pageSize"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->time:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->pageSize:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->pageSize:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setPageSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageSize"
        }
    .end annotation

    .line 59
    iput p1, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->pageSize:I

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->time:Ljava/lang/String;

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

    .line 25
    iget-object p2, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget p2, p0, Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;->pageSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
