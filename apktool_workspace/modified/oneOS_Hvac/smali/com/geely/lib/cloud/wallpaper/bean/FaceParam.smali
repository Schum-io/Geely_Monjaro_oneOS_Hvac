.class public Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;
.super Ljava/lang/Object;
.source "FaceParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private faceId:I

.field private thumbnail:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->content:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->faceId:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->thumbnail:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->faceId:I

    return v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->content:Ljava/lang/String;

    return-void
.end method

.method public setFaceId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faceId"
        }
    .end annotation

    .line 60
    iput p1, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->faceId:I

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnail"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->userId:Ljava/lang/String;

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

    .line 24
    iget-object p2, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget p2, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->faceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-object p2, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
