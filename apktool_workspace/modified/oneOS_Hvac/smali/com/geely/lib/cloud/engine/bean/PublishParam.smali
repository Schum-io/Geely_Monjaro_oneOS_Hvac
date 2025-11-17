.class public Lcom/geely/lib/cloud/engine/bean/PublishParam;
.super Ljava/lang/Object;
.source "PublishParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/engine/bean/PublishParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;

.field private labelId:I

.field private remark:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/geely/lib/cloud/engine/bean/PublishParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/engine/bean/PublishParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
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

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->code:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->labelId:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->remark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->labelId:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->code:Ljava/lang/String;

    return-void
.end method

.method public setLabelId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelId"
        }
    .end annotation

    .line 57
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->labelId:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remark"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->remark:Ljava/lang/String;

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

    .line 22
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->labelId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/PublishParam;->remark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
