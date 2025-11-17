.class public Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;
.super Ljava/lang/Object;
.source "OperateMoreInfoParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private current:Ljava/lang/Integer;

.field private modelType:Ljava/lang/String;

.field private operateId:Ljava/lang/String;

.field private size:Ljava/lang/Integer;

.field private version:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->vin:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->version:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->modelType:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->operateId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 32
    iput-object v1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->size:Ljava/lang/Integer;

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->size:Ljava/lang/Integer;

    .line 36
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iput-object v1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->current:Ljava/lang/Integer;

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->current:Ljava/lang/Integer;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "operateId",
            "size",
            "current"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->vin:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->version:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->modelType:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->operateId:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->size:Ljava/lang/Integer;

    .line 23
    iput-object p6, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->current:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrent()Ljava/lang/Integer;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->current:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModelType()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public getOperateId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->operateId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Integer;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrent(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->current:Ljava/lang/Integer;

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

    .line 101
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->modelType:Ljava/lang/String;

    return-void
.end method

.method public setOperateId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operateId"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->operateId:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->size:Ljava/lang/Integer;

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

    .line 93
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->version:Ljava/lang/String;

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

    .line 85
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->vin:Ljava/lang/String;

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

    .line 45
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->modelType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->operateId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->size:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->size:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    :goto_0
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->current:Ljava/lang/Integer;

    if-nez p2, :cond_1

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->current:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
