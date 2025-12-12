.class public Lcom/geely/lib/cloud/furniture/bean/CommandParam;
.super Ljava/lang/Object;
.source "CommandParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/furniture/bean/CommandParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentValue:Ljava/lang/String;

.field private streamId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/geely/lib/cloud/furniture/bean/CommandParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/furniture/bean/CommandParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->streamId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->currentValue:Ljava/lang/String;

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
            "streamId",
            "currentValue"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->streamId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->currentValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentValue()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->currentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentValue"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->currentValue:Ljava/lang/String;

    return-void
.end method

.method public setStreamId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamId"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->streamId:Ljava/lang/String;

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

    .line 25
    iget-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->streamId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->currentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
