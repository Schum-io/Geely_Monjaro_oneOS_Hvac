.class public Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;
.super Ljava/lang/Object;
.source "PdsnVersionParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private version:Ljava/lang/Integer;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->vin:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->version:Ljava/lang/Integer;

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->version:Ljava/lang/Integer;

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setVersion(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->version:Ljava/lang/Integer;

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

    .line 56
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->vin:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->version:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 30
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->version:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
