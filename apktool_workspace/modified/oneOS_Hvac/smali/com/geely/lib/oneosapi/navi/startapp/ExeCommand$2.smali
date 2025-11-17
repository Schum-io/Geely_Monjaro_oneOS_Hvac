.class public Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;
.super Ljava/lang/Object;
.source "ExeCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->run(Ljava/lang/String;I)Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "read InputStream over"

    const-string v1, "close InputStream exception:"

    const-string v2, "auto"

    .line 1
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    iget-object v3, v3, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 3
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v4}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$100(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/io/BufferedReader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    iget-object v5, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v5}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$200(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v3}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$100(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/io/BufferedReader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 17
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read InputStream exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v3}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$100(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/io/BufferedReader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 24
    :goto_2
    :try_start_4
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$2;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v4}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$100(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/io/BufferedReader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_3
    throw v3
.end method
