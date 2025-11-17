.class public Lcom/geely/lib/cloud/engine/bean/Themes;
.super Ljava/lang/Object;
.source "Themes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/engine/bean/Themes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundImage:Ljava/lang/String;

.field private id:I

.field private music:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/geely/lib/cloud/engine/bean/Themes$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/engine/bean/Themes$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/engine/bean/Themes;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->name:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->backgroundImage:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->music:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->id:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundImage()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->backgroundImage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->id:I

    return v0
.end method

.method public getMusic()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->music:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundImage"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->backgroundImage:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 45
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->id:I

    return-void
.end method

.method public setMusic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "music"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->music:Ljava/lang/String;

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

    .line 21
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->name:Ljava/lang/String;

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

    .line 57
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->backgroundImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->music:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/Themes;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
