.class public Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;
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

.field public final synthetic val$t1:Ljava/lang/Thread;

.field public final synthetic val$t2:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;Ljava/lang/Thread;Ljava/lang/Thread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$t1",
            "val$t2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;->val$t1:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;->val$t2:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "run command process end"

    const-string v1, "auto"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;->val$t1:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 2
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;->val$t2:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 3
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v3}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$000(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v3, v2}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$402(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;Z)Z

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 9
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v4, v2}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$402(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;Z)Z

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    throw v3

    .line 12
    :catch_0
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$4;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v3, v2}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$402(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;Z)Z

    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
