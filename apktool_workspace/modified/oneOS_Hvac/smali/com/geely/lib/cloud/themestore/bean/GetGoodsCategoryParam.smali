.class public Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;
.super Ljava/lang/Object;
.source "GetGoodsCategoryParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private modelType:Ljava/lang/String;

.field private type:I

.field private version:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->vin:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->version:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->modelType:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vin",
            "version",
            "modelType",
            "type"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->vin:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->version:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->modelType:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModelType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->type:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setModelType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelType"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->modelType:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 83
    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->type:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->version:Ljava/lang/String;

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

    .line 59
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->vin:Ljava/lang/String;

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

    .line 31
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->modelType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget p2, p0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
