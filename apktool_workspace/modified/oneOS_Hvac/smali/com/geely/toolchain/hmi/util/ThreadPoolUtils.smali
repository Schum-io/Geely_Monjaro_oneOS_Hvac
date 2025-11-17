.class public Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$DefaultThreadFactory;,
        Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$SingletonHolder;
    }
.end annotation


# instance fields
.field private final corePoolSize:I

.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final keepAliveTime:J

.field private final maxPoolSize:I


# direct methods
.method private constructor <init>()V
    .locals 10

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    .line 31
    iput-wide v0, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->keepAliveTime:J

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->corePoolSize:I

    .line 37
    iput v3, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->maxPoolSize:I

    .line 38
    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 39
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$DefaultThreadFactory;

    const/4 v1, 0x5

    const-string v2, "thread-pool-"

    invoke-direct {v8, v1, v2}, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$DefaultThreadFactory;-><init>(ILjava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const-wide/16 v4, 0x1

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;
    .locals 1

    .line 59
    sget-object v0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$SingletonHolder;->instance:Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->corePoolSize:I

    iget v3, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->maxPoolSize:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$DefaultThreadFactory;

    const/4 v1, 0x5

    const-string v9, "thread-pool-"

    invoke-direct {v8, v1, v9}, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$DefaultThreadFactory;-><init>(ILjava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    if-eqz p1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
