.class public Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;
.super Ljava/lang/Object;
.source "SwitchParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private switchStatus:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->vin:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->switchStatus:Ljava/lang/String;

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
            "vin",
            "switchStatus"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->vin:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->switchStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSwitchStatus()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->switchStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setSwitchStatus(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchStatus"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->switchStatus:Ljava/lang/String;

    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vin"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->vin:Ljava/lang/String;

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

    .line 60
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->switchStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
