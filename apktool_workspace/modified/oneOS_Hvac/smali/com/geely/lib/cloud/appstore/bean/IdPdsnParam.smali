.class public Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;
.super Ljava/lang/Object;
.source "IdPdsnParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/Long;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->id:Ljava/lang/Long;

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->id:Ljava/lang/Long;

    .line 24
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->vin:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "pdsn"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->id:Ljava/lang/Long;

    .line 15
    iput-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->vin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->id:Ljava/lang/Long;

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

    .line 68
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->vin:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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

    .line 29
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->id:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    :goto_0
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
