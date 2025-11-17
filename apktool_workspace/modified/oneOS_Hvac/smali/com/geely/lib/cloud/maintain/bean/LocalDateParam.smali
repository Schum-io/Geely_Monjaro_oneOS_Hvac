.class public Lcom/geely/lib/cloud/maintain/bean/LocalDateParam;
.super Ljava/lang/Object;
.source "LocalDateParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/maintain/bean/LocalDateParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private localDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/geely/lib/cloud/maintain/bean/LocalDateParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/maintain/bean/LocalDateParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/maintain/bean/LocalDateParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/LocalDateParam;->localDate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localDate"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/LocalDateParam;->localDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocalDate()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/LocalDateParam;->localDate:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localDate"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/LocalDateParam;->localDate:Ljava/lang/String;

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

    .line 21
    iget-object p2, p0, Lcom/geely/lib/cloud/maintain/bean/LocalDateParam;->localDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
