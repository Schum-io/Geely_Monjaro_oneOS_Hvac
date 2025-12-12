.class public final synthetic Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$j5BIYtkkQzsO_9speVTvtcYBj7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$j5BIYtkkQzsO_9speVTvtcYBj7s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$j5BIYtkkQzsO_9speVTvtcYBj7s;

    invoke-direct {v0}, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$j5BIYtkkQzsO_9speVTvtcYBj7s;-><init>()V

    sput-object v0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$j5BIYtkkQzsO_9speVTvtcYBj7s;->INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$j5BIYtkkQzsO_9speVTvtcYBj7s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;

    invoke-static {p1}, Lcom/geely/os/wifiap/GlyWifiApImpl$1;->lambda$onConnected$0(Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;)V

    return-void
.end method
