.class public Lcom/geely/hvac/utils/Executor;
.super Ljava/lang/Object;
.source "Executor.java"


# static fields
.field public static final COMPUTER:Ljava/util/concurrent/Executor;

.field private static CPU_CORES:I = 0x0

.field private static final HANDLER_THREAD:Landroid/os/HandlerThread;

.field public static final IO:Ljava/util/concurrent/Executor;

.field public static final IO_HANDLER:Landroid/os/Handler;

.field private static final IO_THREAD_NUMBER:I = 0x32

.field public static final MAIN:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Executor-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/geely/hvac/utils/Executor;->HANDLER_THREAD:Landroid/os/HandlerThread;

    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    .line 24
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x32

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/geely/hvac/utils/Executor;->IO:Ljava/util/concurrent/Executor;

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/geely/hvac/utils/Executor;->CPU_CORES:I

    .line 30
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/geely/hvac/utils/Executor;->CPU_CORES:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/geely/hvac/utils/Executor;->COMPUTER:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
