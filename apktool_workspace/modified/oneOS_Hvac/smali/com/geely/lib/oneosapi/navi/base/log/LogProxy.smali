.class public final Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
.super Ljava/lang/Object;
.source "LogProxy.java"


# instance fields
.field private enable:Z

.field private level:I

.field private logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLogEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    return-void
.end method

.method public setLogImpl(Lcom/geely/lib/oneosapi/navi/base/log/ILog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logImpl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->enable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->logImpl:Lcom/geely/lib/oneosapi/navi/base/log/ILog;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/navi/base/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
