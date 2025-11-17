.class public final Lcom/geely/os/car/GlyCar;
.super Ljava/lang/Object;
.source "GlyCar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/car/IGlyCar;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/geely/os/car/GlyCarImpl;->create(Landroid/content/Context;)Lcom/geely/os/car/IGlyCar;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Lcom/geely/os/car/ConnectionListener;)Lcom/geely/os/car/IGlyCar;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "connectionListener"
        }
    .end annotation

    .line 12
    invoke-static {p0, p1}, Lcom/geely/os/car/GlyCarImpl;->create(Landroid/content/Context;Lcom/geely/os/car/ConnectionListener;)Lcom/geely/os/car/IGlyCar;

    move-result-object p0

    return-object p0
.end method

.method public static createCarInfo(Landroid/content/Context;)Lcom/geely/os/car/IGlyCarInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lcom/geely/os/car/GlyCarInfoImpl;->create(Landroid/content/Context;)Lcom/geely/os/car/IGlyCarInfo;

    move-result-object p0

    return-object p0
.end method

.method public static createHev(Landroid/content/Context;)Lcom/geely/os/car/IGlyHev;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lcom/geely/os/car/GlyHevImpl;->create(Landroid/content/Context;)Lcom/geely/os/car/IGlyHev;

    move-result-object p0

    return-object p0
.end method
