.class public Lcom/geely/hvac/utils/KadunMonitor;
.super Ljava/lang/Object;
.source "KadunMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/utils/KadunMonitor$KadunMonitorHolder;
    }
.end annotation


# static fields
.field private static final LOG_END:Ljava/lang/String; = "<<<<< Finished"

.field private static final LOG_START:Ljava/lang/String; = ">>>>> Dispatching"

.field private static final TAG:Ljava/lang/String; = "KadunMonitor"

.field private static final TIME_RECORD_LIMIT:I = 0x5

.field private static final TIME_TASK_LIMIT:I = 0xe


# instance fields
.field private mLoopStart:J

.field private final mStackRecordHandler:Landroid/os/Handler;

.field private final mStackRecordHandlerThread:Landroid/os/HandlerThread;

.field private final mStackRecordRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/geely/hvac/utils/KadunMonitor;->mLoopStart:J

    .line 44
    new-instance v0, Lcom/geely/hvac/utils/KadunMonitor$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/utils/KadunMonitor$1;-><init>(Lcom/geely/hvac/utils/KadunMonitor;)V

    iput-object v0, p0, Lcom/geely/hvac/utils/KadunMonitor;->mStackRecordRunnable:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "STACK_RECORD_HANDLER_THREAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/geely/hvac/utils/KadunMonitor;->mStackRecordHandlerThread:Landroid/os/HandlerThread;

    .line 38
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/geely/hvac/utils/KadunMonitor;->mStackRecordHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/hvac/utils/KadunMonitor$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/geely/hvac/utils/KadunMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/geely/hvac/utils/KadunMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/geely/hvac/utils/KadunMonitor;
    .locals 1

    .line 33
    invoke-static {}, Lcom/geely/hvac/utils/KadunMonitor$KadunMonitorHolder;->access$100()Lcom/geely/hvac/utils/KadunMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 76
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ">>>>> Dispatching"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/hvac/utils/KadunMonitor;->mLoopStart:J

    .line 64
    iget-object p1, p0, Lcom/geely/hvac/utils/KadunMonitor;->mStackRecordHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/geely/hvac/utils/KadunMonitor;->mStackRecordRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "<<<<< Finished"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 66
    iget-object p1, p0, Lcom/geely/hvac/utils/KadunMonitor;->mStackRecordHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/geely/hvac/utils/KadunMonitor;->mStackRecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/geely/hvac/utils/KadunMonitor;->mLoopStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 69
    sget-object p1, Lcom/geely/hvac/utils/KadunMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler task time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
