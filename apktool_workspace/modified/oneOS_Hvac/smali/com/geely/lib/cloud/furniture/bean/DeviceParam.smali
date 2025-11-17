.class public Lcom/geely/lib/cloud/furniture/bean/DeviceParam;
.super Ljava/lang/Object;
.source "DeviceParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/furniture/bean/DeviceParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/furniture/bean/CommandParam;",
            ">;"
        }
    .end annotation
.end field

.field private homeDeviceId:Ljava/lang/String;

.field private terminalId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/furniture/bean/DeviceParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/geely/lib/cloud/furniture/bean/CommandParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->command:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->homeDeviceId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->terminalId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandList",
            "homeDeviceId",
            "terminalId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/furniture/bean/CommandParam;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->command:Ljava/util/List;

    .line 18
    iput-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->homeDeviceId:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->terminalId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/furniture/bean/CommandParam;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->command:Ljava/util/List;

    return-object v0
.end method

.method public getHomeDeviceId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->homeDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminalId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/furniture/bean/CommandParam;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->command:Ljava/util/List;

    return-void
.end method

.method public setHomeDeviceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeDeviceId"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->homeDeviceId:Ljava/lang/String;

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

    .line 73
    iput-object p1, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->terminalId:Ljava/lang/String;

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

    .line 30
    iget-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->command:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 31
    iget-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->homeDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/geely/lib/cloud/furniture/bean/DeviceParam;->terminalId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
