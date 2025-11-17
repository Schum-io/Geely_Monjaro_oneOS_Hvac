.class public Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;
.super Ljava/lang/Object;
.source "ProfileParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private model:Ljava/lang/String;

.field private profile:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private profileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profile:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileId:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->model:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "profile",
            "profileId",
            "profileName",
            "model"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profile:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileId:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileName:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->model:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profile:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->model:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profile:Ljava/lang/String;

    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profileId"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileId:Ljava/lang/String;

    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profileName"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileName:Ljava/lang/String;

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

    .line 30
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->profileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->model:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
