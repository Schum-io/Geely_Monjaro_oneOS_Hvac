.class public final synthetic Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$D72XjVJAi_eWqCpu0-WdKvQOwh8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$D72XjVJAi_eWqCpu0-WdKvQOwh8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$D72XjVJAi_eWqCpu0-WdKvQOwh8;

    invoke-direct {v0}, Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$D72XjVJAi_eWqCpu0-WdKvQOwh8;-><init>()V

    sput-object v0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$D72XjVJAi_eWqCpu0-WdKvQOwh8;->INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$D72XjVJAi_eWqCpu0-WdKvQOwh8;

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

    invoke-static {p1}, Lcom/geely/os/wifiap/GlyWifi6ApImpl$1;->lambda$onConnected$0(Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;)V

    return-void
.end method
