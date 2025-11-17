.class public Lcom/geely/os/wifiap/GlyWifiAp;
.super Ljava/lang/Object;
.source "GlyWifiAp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/wifiap/IGlyWifiAp;
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
    invoke-static {p0}, Lcom/geely/os/wifiap/GlyWifiApImpl;->create(Landroid/content/Context;)Lcom/geely/os/wifiap/IGlyWifiAp;

    move-result-object p0

    return-object p0
.end method
