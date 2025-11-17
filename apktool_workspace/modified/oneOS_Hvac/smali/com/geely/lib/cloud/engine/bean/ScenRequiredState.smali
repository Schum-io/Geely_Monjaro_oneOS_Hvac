.class public Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;
.super Ljava/lang/Object;
.source "ScenRequiredState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;

.field private configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/SceneConfig;",
            ">;"
        }
    .end annotation
.end field

.field private meaning:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->code:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->meaning:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/geely/lib/cloud/engine/bean/SceneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->configList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/SceneConfig;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->configList:Ljava/util/List;

    return-object v0
.end method

.method public getMeaning()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->meaning:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->code:Ljava/lang/String;

    return-void
.end method

.method public setConfigList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/SceneConfig;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->configList:Ljava/util/List;

    return-void
.end method

.method public setMeaning(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meaning"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->meaning:Ljava/lang/String;

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

    .line 50
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->meaning:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->configList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
