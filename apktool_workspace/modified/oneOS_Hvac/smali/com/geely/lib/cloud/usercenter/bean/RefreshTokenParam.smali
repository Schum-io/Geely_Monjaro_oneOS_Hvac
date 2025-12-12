.class public Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;
.super Ljava/lang/Object;
.source "RefreshTokenParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private refreshToken:Ljava/lang/String;

.field private refreshTokenFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshToken:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshTokenFlag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "refreshToken",
            "refreshTokenFlag"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshToken:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshTokenFlag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenFlag()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshTokenFlag:Ljava/lang/String;

    return-object v0
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshToken"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTokenFlag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshTokenFlag"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshTokenFlag:Ljava/lang/String;

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

    .line 55
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->refreshTokenFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
