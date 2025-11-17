.class public Lcom/geely/lib/cloud/appstore/bean/AppInfoList;
.super Ljava/lang/Object;
.source "AppInfoList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/appstore/bean/AppInfoList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appCurrentVersion:I

.field private appInitVersion:I

.field private appLastVersion:I

.field private appPackageName:Ljava/lang/String;

.field private appUpdateDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/appstore/bean/AppInfoList$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appPackageName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appCurrentVersion:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appUpdateDate:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appLastVersion:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appInitVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appPackageName",
            "appCurrentVersion",
            "appUpdateDate",
            "appLastVersion",
            "appInitVersion"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appPackageName:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appCurrentVersion:I

    .line 19
    iput-object p3, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appUpdateDate:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appLastVersion:I

    .line 21
    iput p5, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appInitVersion:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppCurrentVersion()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appCurrentVersion:I

    return v0
.end method

.method public getAppInitVersion()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appInitVersion:I

    return v0
.end method

.method public getAppLastVersion()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appLastVersion:I

    return v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUpdateDate()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCurrentVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appCurrentVersion"
        }
    .end annotation

    .line 71
    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appCurrentVersion:I

    return-void
.end method

.method public setAppInitVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appInitVersion"
        }
    .end annotation

    .line 95
    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appInitVersion:I

    return-void
.end method

.method public setAppLastVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLastVersion"
        }
    .end annotation

    .line 87
    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appLastVersion:I

    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appPackageName"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appPackageName:Ljava/lang/String;

    return-void
.end method

.method public setAppUpdateDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appUpdateDate"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appUpdateDate:Ljava/lang/String;

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

    .line 34
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appCurrentVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appLastVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppInfoList;->appInitVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
