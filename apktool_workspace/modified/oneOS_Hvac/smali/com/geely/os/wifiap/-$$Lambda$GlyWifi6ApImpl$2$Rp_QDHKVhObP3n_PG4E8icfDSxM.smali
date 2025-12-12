.class public final synthetic Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$2$Rp_QDHKVhObP3n_PG4E8icfDSxM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$2$Rp_QDHKVhObP3n_PG4E8icfDSxM;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$2$Rp_QDHKVhObP3n_PG4E8icfDSxM;->f$0:I

    check-cast p1, Lcom/geely/os/wifiap/IGlyWifiAPFrequencyChangeCallBack;

    invoke-static {v0, p1}, Lcom/geely/os/wifiap/GlyWifi6ApImpl$2;->lambda$onWifiAPFrequencyChange$0(ILcom/geely/os/wifiap/IGlyWifiAPFrequencyChangeCallBack;)V

    return-void
.end method
