.class public final synthetic Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$7cVp5cJbUf12U_Cnm76ZazBOU58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$7cVp5cJbUf12U_Cnm76ZazBOU58;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$7cVp5cJbUf12U_Cnm76ZazBOU58;

    invoke-direct {v0}, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$7cVp5cJbUf12U_Cnm76ZazBOU58;-><init>()V

    sput-object v0, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$7cVp5cJbUf12U_Cnm76ZazBOU58;->INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$7cVp5cJbUf12U_Cnm76ZazBOU58;

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

    invoke-static {p1}, Lcom/geely/os/wifiap/GlyWifiApImpl$1;->lambda$onDisConnected$1(Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;)V

    return-void
.end method
