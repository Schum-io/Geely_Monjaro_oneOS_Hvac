.class public Lcom/geely/os/car/GlyCarInfoImpl;
.super Ljava/lang/Object;
.source "GlyCarInfoImpl.java"

# interfaces
.implements Lcom/geely/os/car/IGlyCarInfo;


# instance fields
.field private iCarInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/car/Car;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getCarInfoManager()Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyCarInfoImpl;->iCarInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/car/IGlyCarInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 17
    new-instance v0, Lcom/geely/os/car/GlyCarInfoImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyCarInfoImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCarInfoConfig(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configId"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/geely/os/car/GlyCarInfoImpl;->iCarInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;->getCarInfoConfig(I)I

    move-result p1

    return p1

    :cond_0
    const p1, 0x8000ff

    return p1
.end method

.method public getIntelligentEnergyManagement()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPresentationDisplay(I)Landroid/view/Display;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "display"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/geely/os/car/GlyCarInfoImpl;->iCarInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;->getPresentationDisplay(I)Landroid/view/Display;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasMultiAmbience()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
