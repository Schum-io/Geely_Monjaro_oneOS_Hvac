.class public Lcom/geely/os/bt/GlyBtDevice;
.super Ljava/lang/Object;
.source "GlyBtDevice.java"


# instance fields
.field private address:Ljava/lang/String;

.field private bondState:I

.field private category:I

.field private connectState:I

.field private name:Ljava/lang/String;

.field private supportProfile:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/geely/os/bt/GlyBtDevice;->supportProfile:I

    .line 8
    iput v0, p0, Lcom/geely/os/bt/GlyBtDevice;->category:I

    .line 9
    iput v0, p0, Lcom/geely/os/bt/GlyBtDevice;->bondState:I

    .line 10
    iput v0, p0, Lcom/geely/os/bt/GlyBtDevice;->connectState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtDevice;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBondState()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/geely/os/bt/GlyBtDevice;->bondState:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/geely/os/bt/GlyBtDevice;->category:I

    return v0
.end method

.method public getConnectState()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/geely/os/bt/GlyBtDevice;->connectState:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportProfile()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/geely/os/bt/GlyBtDevice;->supportProfile:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/geely/os/bt/GlyBtDevice;->address:Ljava/lang/String;

    return-void
.end method

.method public setBondState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bondState"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/geely/os/bt/GlyBtDevice;->bondState:I

    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 41
    iput p1, p0, Lcom/geely/os/bt/GlyBtDevice;->category:I

    return-void
.end method

.method public setConnectState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectState"
        }
    .end annotation

    .line 57
    iput p1, p0, Lcom/geely/os/bt/GlyBtDevice;->connectState:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/geely/os/bt/GlyBtDevice;->name:Ljava/lang/String;

    return-void
.end method

.method public setSupportProfile(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportProfile"
        }
    .end annotation

    .line 33
    iput p1, p0, Lcom/geely/os/bt/GlyBtDevice;->supportProfile:I

    return-void
.end method
