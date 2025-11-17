.class public final synthetic Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$3$AnNk7L7Udj0xG3j_rH_hb_O6HSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$3$AnNk7L7Udj0xG3j_rH_hb_O6HSE;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$3$AnNk7L7Udj0xG3j_rH_hb_O6HSE;->f$0:Ljava/util/List;

    check-cast p1, Lcom/geely/os/wifiap/IGlyWifiApClientCallback;

    invoke-static {v0, p1}, Lcom/geely/os/wifiap/GlyWifiApImpl$3;->lambda$onWifiApClientChanged$0(Ljava/util/List;Lcom/geely/os/wifiap/IGlyWifiApClientCallback;)V

    return-void
.end method
