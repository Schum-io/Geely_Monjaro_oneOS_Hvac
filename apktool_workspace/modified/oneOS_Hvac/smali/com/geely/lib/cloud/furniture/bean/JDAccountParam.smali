.class public Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;
.super Ljava/lang/Object;
.source "JDAccountParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private thirdType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;->thirdType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "third_type"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;->thirdType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThirdType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;->thirdType:Ljava/lang/String;

    return-object v0
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

    .line 48
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;->thirdType:Ljava/lang/String;

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

    .line 23
    iget-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/JDAccountParam;->thirdType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
