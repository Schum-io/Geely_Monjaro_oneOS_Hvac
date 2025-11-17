.class public Lcom/geely/lib/cloud/engine/bean/SceneConfig;
.super Ljava/lang/Object;
.source "SceneConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/engine/bean/SceneConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;

.field private endTime:I

.field private exitValue:Ljava/lang/String;

.field private meaning:Ljava/lang/String;

.field private mutex:Ljava/lang/String;

.field private startTime:I

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/geely/lib/cloud/engine/bean/SceneConfig$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/engine/bean/SceneConfig$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->code:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->mutex:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->type:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->meaning:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->exitValue:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->startTime:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->endTime:I

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/engine/bean/SceneConfig;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->endTime:I

    return v0
.end method

.method public getExitValue()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->exitValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMeaning()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->meaning:Ljava/lang/String;

    return-object v0
.end method

.method public getMutex()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->mutex:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->startTime:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->value:Ljava/lang/Object;

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

    .line 24
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->code:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTime"
        }
    .end annotation

    .line 80
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->endTime:I

    return-void
.end method

.method public setExitValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exitValue"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->exitValue:Ljava/lang/String;

    return-void
.end method

.method public setMeaning(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meaning"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->meaning:Ljava/lang/String;

    return-void
.end method

.method public setMutex(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mutex"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->mutex:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 72
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->startTime:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->value:Ljava/lang/Object;

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

    .line 99
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->mutex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->meaning:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->exitValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->startTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->endTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
