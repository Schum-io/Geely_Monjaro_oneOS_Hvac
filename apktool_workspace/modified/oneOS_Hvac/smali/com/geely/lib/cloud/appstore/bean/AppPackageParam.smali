.class public Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;
.super Ljava/lang/Object;
.source "AppPackageParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;->appPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appPackage"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;->appPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appPackage"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;->appPackage:Ljava/lang/String;

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

    .line 19
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;->appPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
