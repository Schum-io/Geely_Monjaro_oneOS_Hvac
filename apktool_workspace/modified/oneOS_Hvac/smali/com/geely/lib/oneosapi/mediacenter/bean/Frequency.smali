.class public Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;
.super Ljava/lang/Object;
.source "Frequency.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private band:I

.field private collection:Z

.field private frequency:I

.field private name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frequency",
            "band",
            "name"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->frequency:I

    .line 4
    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->band:I

    .line 5
    iput-object p3, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frequency",
            "band",
            "name",
            "collection"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->frequency:I

    .line 8
    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->band:I

    .line 9
    iput-object p3, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->name:Ljava/lang/String;

    .line 10
    iput-boolean p4, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->collection:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->frequency:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->band:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->name:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->collection:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->frequency:I

    iget p1, p1, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->frequency:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;

    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->compareTo(Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->band:I

    return v0
.end method

.method public getFrequency()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->frequency:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCollection()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->collection:Z

    return v0
.end method

.method public setBand(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "band"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->band:I

    return-void
.end method

.method public setCollection(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->collection:Z

    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->frequency:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{frequency="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", band="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->band:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", collection="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->collection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 1
    iget p2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->frequency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->band:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->collection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
