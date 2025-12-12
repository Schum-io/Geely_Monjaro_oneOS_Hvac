.class Lcom/geely/hvac/utils/LogWriter$1;
.super Ljava/lang/Object;
.source "LogWriter.java"

# interfaces
.implements Lcom/geely/hvac/utils/LogUtilInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/utils/LogWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "tag",
            "msg"
        }
    .end annotation

    .line 22
    sget-boolean v0, Lcom/geely/hvac/utils/LogWriter;->mIsDebug:Z

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/geely/hvac/utils/LogWriter;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
