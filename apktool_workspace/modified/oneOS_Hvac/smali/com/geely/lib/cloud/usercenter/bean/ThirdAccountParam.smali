.class public Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;
.super Ljava/lang/Object;
.source "ThirdAccountParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private thirdInfo:Ljava/lang/String;

.field private thirdOpenId:Ljava/lang/String;

.field private thirdType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdType:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdOpenId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->action:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdInfo:Ljava/lang/String;

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
            "thirdType",
            "thirdOpenId",
            "action",
            "thirdInfo"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdType:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdOpenId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->action:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdInfo()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdOpenId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdOpenId:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdType:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->action:Ljava/lang/String;

    return-void
.end method

.method public setThirdInfo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thirdInfo"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdInfo:Ljava/lang/String;

    return-void
.end method

.method public setThirdOpenId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thirdOpenId"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdOpenId:Ljava/lang/String;

    return-void
.end method

.method public setThirdType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thirdType"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdType:Ljava/lang/String;

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

    .line 33
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdOpenId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->action:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->thirdInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
