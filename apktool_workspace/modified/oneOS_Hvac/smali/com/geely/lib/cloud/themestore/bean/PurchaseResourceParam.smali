.class public Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;
.super Ljava/lang/Object;
.source "PurchaseResourceParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private current:I

.field private modelType:Ljava/lang/String;

.field private size:I

.field private type:I

.field private version:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->vin:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->version:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->modelType:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->type:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->size:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->current:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
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
            "type",
            "size",
            "current"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->vin:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->version:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->modelType:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->type:I

    .line 22
    iput p5, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->size:I

    .line 23
    iput p6, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->current:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->current:I

    return v0
.end method

.method public getModelType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->size:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->type:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->vin:Ljava/lang/String;

    return-object v0
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

    .line 107
    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->current:I

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

    .line 83
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->modelType:Ljava/lang/String;

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

    .line 99
    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->size:I

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

    .line 91
    iput p1, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->type:I

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

    .line 75
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->version:Ljava/lang/String;

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

    .line 67
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->vin:Ljava/lang/String;

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

    .line 37
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->modelType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget p2, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget p2, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget p2, p0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->current:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
