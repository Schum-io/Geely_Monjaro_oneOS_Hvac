.class public Lcom/geely/hvac/utils/ViewFroze;
.super Ljava/lang/Object;
.source "ViewFroze.java"


# static fields
.field public static final FROZE_TIME:I = 0x1f4


# instance fields
.field private hasGet:Z

.field private final mStart:J

.field private final mTime:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/geely/hvac/utils/ViewFroze;->mTime:I

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/hvac/utils/ViewFroze;->mStart:J

    return-void
.end method


# virtual methods
.method public isFroze()Z
    .locals 6

    .line 19
    iget-boolean v0, p0, Lcom/geely/hvac/utils/ViewFroze;->hasGet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/geely/hvac/utils/ViewFroze;->mStart:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/geely/hvac/utils/ViewFroze;->mTime:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-boolean v1, p0, Lcom/geely/hvac/utils/ViewFroze;->hasGet:Z

    return v0
.end method

.method public isFroze(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreCount"
        }
    .end annotation

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/geely/hvac/utils/ViewFroze;->mStart:J

    sub-long/2addr v0, v2

    iget p1, p0, Lcom/geely/hvac/utils/ViewFroze;->mTime:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
