.class public Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;
.super Ljava/lang/Object;
.source "SceneActionParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private recordId:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field private terminalId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->sceneId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->terminalId:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->recordId:Ljava/lang/String;

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
            "sceneId",
            "terminalId",
            "recordId"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->sceneId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->terminalId:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->recordId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRecordId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->recordId:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminalId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public setRecordId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordId"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->recordId:Ljava/lang/String;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public setTerminalId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terminalId"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->terminalId:Ljava/lang/String;

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

    .line 27
    iget-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->sceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->terminalId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/SceneActionParam;->recordId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
