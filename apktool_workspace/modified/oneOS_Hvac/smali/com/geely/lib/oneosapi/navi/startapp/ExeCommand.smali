.class public Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;
.super Ljava/lang/Object;
.source "ExeCommand.java"


# instance fields
.field private bRunning:Z

.field private bSynchronous:Z

.field private errorResult:Ljava/io/BufferedReader;

.field public lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private os:Ljava/io/DataOutputStream;

.field private process:Ljava/lang/Process;

.field private result:Ljava/lang/StringBuffer;

.field private successResult:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->bRunning:Z

    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->result:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->bSynchronous:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "synchronous"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->bRunning:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->result:Ljava/lang/StringBuffer;

    .line 15
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->bSynchronous:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/lang/Process;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->process:Ljava/lang/Process;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/io/BufferedReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->successResult:Ljava/io/BufferedReader;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/lang/StringBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->result:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/io/BufferedReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->errorResult:Ljava/io/BufferedReader;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->bRunning:Z

    return p1
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v1, "auto"

    const-string v2, "getResult"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->result:Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw v1
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->bRunning:Z

    return v0
.end method

.method public run(Ljava/lang/String;I)Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "command",
            "maxTime"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxtime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "sh"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->process:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->bRunning:Z

    .line 12
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->successResult:Ljava/io/BufferedReader;

    .line 13
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->errorResult:Ljava/io/BufferedReader;

    .line 14
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->os:Ljava/io/DataOutputStream;

    .line 18
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 19
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->os:Ljava/io/DataOutputStream;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->os:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 22
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->os:Ljava/io/DataOutputStream;

    const-string v0, "exit\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->os:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 25
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->os:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    if-lez p2, :cond_1

    .line 29
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$1;-><init>(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;

    invoke-direct {p2, p0}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;-><init>(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 75
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$3;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$3;-><init>(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;-><init>(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;Ljava/lang/Thread;Ljava/lang/Thread;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    iget-boolean p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->bSynchronous:Z

    if-eqz p1, :cond_2

    const-string p1, "run is go to end"

    .line 120
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const-string p1, "run is end"

    .line 122
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "run command process exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_2
    :goto_0
    return-object p0
.end method
