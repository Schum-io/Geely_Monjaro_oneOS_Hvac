.class public Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;
.super Ljava/lang/Object;
.source "NaviAPIBase.java"


# instance fields
.field public log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-void
.end method


# virtual methods
.method public setLogEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->setLogEnable(Z)V

    return-void
.end method

.method public setLogImpl(Lcom/geely/lib/oneosapi/navi/base/log/ILog;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logImpl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->setLogImpl(Lcom/geely/lib/oneosapi/navi/base/log/ILog;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->setLogLevel(I)V

    return-void
.end method
