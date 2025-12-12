.class public Lcom/geely/lib/cloud/usercenter/bean/DocParam;
.super Ljava/lang/Object;
.source "DocParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/DocParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private docType:Ljava/lang/String;

.field private docVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/DocParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/DocParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docType:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docVersion:Ljava/lang/String;

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
            "docType",
            "docVersion"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docType:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDocType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docType:Ljava/lang/String;

    return-object v0
.end method

.method public getDocVersion()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDocType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "docType"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docType:Ljava/lang/String;

    return-void
.end method

.method public setDocVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "docVersion"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docVersion:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->docVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
