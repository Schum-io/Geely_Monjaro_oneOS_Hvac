.class public Lcom/geely/hvac/utils/Throttle;
.super Ljava/lang/Object;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/utils/Throttle$ThrottleTask;
    }
.end annotation


# instance fields
.field private lastRunTimeMillis:J

.field private wait:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wait"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/geely/hvac/utils/Throttle;->lastRunTimeMillis:J

    .line 7
    iput p1, p0, Lcom/geely/hvac/utils/Throttle;->wait:I

    return-void
.end method


# virtual methods
.method public getWait()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/geely/hvac/utils/Throttle;->wait:I

    return v0
.end method

.method public varargs run(Lcom/geely/hvac/utils/Throttle$ThrottleTask;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "args"
        }
    .end annotation

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 27
    iget-wide v2, p0, Lcom/geely/hvac/utils/Throttle;->lastRunTimeMillis:J

    iget v4, p0, Lcom/geely/hvac/utils/Throttle;->wait:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 28
    :cond_0
    iput-wide v0, p0, Lcom/geely/hvac/utils/Throttle;->lastRunTimeMillis:J

    .line 29
    invoke-interface {p1, p2}, Lcom/geely/hvac/utils/Throttle$ThrottleTask;->invoke([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setWait(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wait"
        }
    .end annotation

    .line 15
    iput p1, p0, Lcom/geely/hvac/utils/Throttle;->wait:I

    return-void
.end method
