.class public Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$1;
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

.field public final synthetic val$maxTime:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$maxTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$1;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    iput p2, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$1;->val$maxTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "auto"

    .line 1
    :try_start_0
    iget v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$1;->val$maxTime:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$1;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v1}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$000(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitValue Stream over"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v1, "take maxTime,forced to destroy process"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand$1;->this$0:Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->access$000(Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :goto_0
    return-void
.end method
