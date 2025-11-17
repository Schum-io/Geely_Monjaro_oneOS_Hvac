.class Lcom/geely/hvac/utils/KadunMonitor$KadunMonitorHolder;
.super Ljava/lang/Object;
.source "KadunMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/utils/KadunMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KadunMonitorHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/geely/hvac/utils/KadunMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/geely/hvac/utils/KadunMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geely/hvac/utils/KadunMonitor;-><init>(Lcom/geely/hvac/utils/KadunMonitor$1;)V

    sput-object v0, Lcom/geely/hvac/utils/KadunMonitor$KadunMonitorHolder;->INSTANCE:Lcom/geely/hvac/utils/KadunMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/geely/hvac/utils/KadunMonitor;
    .locals 1

    .line 28
    sget-object v0, Lcom/geely/hvac/utils/KadunMonitor$KadunMonitorHolder;->INSTANCE:Lcom/geely/hvac/utils/KadunMonitor;

    return-object v0
.end method
