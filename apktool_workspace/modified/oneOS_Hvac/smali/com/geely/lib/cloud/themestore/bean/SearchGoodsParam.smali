.class public Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;
.super Ljava/lang/Object;
.source "SearchGoodsParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cateId:Ljava/lang/Long;

.field private current:I

.field private modelType:Ljava/lang/String;

.field private size:I

.field private tag:Ljava/lang/String;

.field private type:I

.field private version:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->vin:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->version:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->modelType:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->tag:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->type:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->cateId:Ljava/lang/Long;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->cateId:Ljava/lang/Long;

    .line 41
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->size:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->current:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vin",
            "version",
            "modelType",
            "tag",
            "type",
            "cateId",
            "size",
            "current"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->vin:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->version:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->modelType:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->tag:Ljava/lang/String;

    .line 24
    iput p5, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->type:I

    .line 25
    iput-object p6, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->cateId:Ljava/lang/Long;

    .line 26
    iput p7, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->size:I

    .line 27
    iput p8, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->current:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCateId()Ljava/lang/Long;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->cateId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrent()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->current:I

    return v0
.end method

.method public getModelType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->size:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->type:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setCateId(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cateId"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->cateId:Ljava/lang/Long;

    return-void
.end method

.method public setCurrent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current"
        }
    .end annotation

    .line 140
    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->current:I

    return-void
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

    .line 100
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->modelType:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 132
    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->size:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->tag:Ljava/lang/String;

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

    .line 116
    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->type:I

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

    .line 92
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->version:Ljava/lang/String;

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

    .line 84
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->vin:Ljava/lang/String;

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

    .line 47
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->modelType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->cateId:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->cateId:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    :goto_0
    iget p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget p2, p0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->current:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
