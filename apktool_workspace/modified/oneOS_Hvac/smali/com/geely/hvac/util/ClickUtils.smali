.class public Lcom/geely/hvac/util/ClickUtils;
.super Ljava/lang/Object;
.source "ClickUtils.java"


# static fields
.field private static final MAX_CLICK_DELAY_TIME:I = 0x320

.field private static final MIN_CLICK_DELAY_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ClickUtils"

.field private static lastClickTime:J

.field private static mLastTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEffectiveDate()Z
    .locals 6

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 55
    sget-wide v2, Lcom/geely/hvac/util/ClickUtils;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const-string v2, "ClickUtils"

    const-string v3, "is effective date"

    .line 56
    invoke-static {v2, v3}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 58
    sput-wide v0, Lcom/geely/hvac/util/ClickUtils;->mLastTime:J

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isFastClick()Z
    .locals 6

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    sget-wide v2, Lcom/geely/hvac/util/ClickUtils;->lastClickTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    const-string v1, "ClickUtils"

    const-string v2, "is fast click"

    .line 27
    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    :cond_0
    sput-wide v0, Lcom/geely/hvac/util/ClickUtils;->lastClickTime:J

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSeatFastClick()Z
    .locals 6

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    sget-wide v2, Lcom/geely/hvac/util/ClickUtils;->lastClickTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    const-string v1, "ClickUtils"

    const-string v2, "is fast click"

    .line 39
    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_0
    sput-wide v0, Lcom/geely/hvac/util/ClickUtils;->lastClickTime:J

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static uploadTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 48
    sput-wide v0, Lcom/geely/hvac/util/ClickUtils;->lastClickTime:J

    return-void
.end method
