.class public Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;
.super Ljava/lang/Object;
.source "PdsnKeyNewParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keyWord:Ljava/lang/String;

.field private screen:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->vin:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->keyWord:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->screen:Ljava/lang/String;

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
            "pdsn",
            "keyword"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->vin:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->keyWord:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vin",
            "keyWord",
            "screen"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->vin:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->keyWord:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->screen:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->screen:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyWord"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->keyWord:Ljava/lang/String;

    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screen"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->screen:Ljava/lang/String;

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

    .line 71
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->vin:Ljava/lang/String;

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

    .line 36
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->keyWord:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->screen:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
