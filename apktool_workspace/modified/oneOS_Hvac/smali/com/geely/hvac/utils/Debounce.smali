.class public Lcom/geely/hvac/utils/Debounce;
.super Ljava/lang/Object;
.source "Debounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/utils/Debounce$DebounceTask;
    }
.end annotation


# instance fields
.field private timer:Ljava/util/Timer;

.field private wait:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wait"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/geely/hvac/utils/Debounce;->wait:I

    .line 14
    iput p1, p0, Lcom/geely/hvac/utils/Debounce;->wait:I

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/utils/Debounce;)Ljava/util/Timer;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/geely/hvac/utils/Debounce;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public getWait()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/geely/hvac/utils/Debounce;->wait:I

    return v0
.end method

.method public varargs run(Lcom/geely/hvac/utils/Debounce$DebounceTask;[Ljava/lang/Object;)V
    .locals 2
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

    .line 28
    iget-object v0, p0, Lcom/geely/hvac/utils/Debounce;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 31
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/utils/Debounce;->timer:Ljava/util/Timer;

    .line 32
    new-instance v1, Lcom/geely/hvac/utils/Debounce$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/hvac/utils/Debounce$1;-><init>(Lcom/geely/hvac/utils/Debounce;Lcom/geely/hvac/utils/Debounce$DebounceTask;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/geely/hvac/utils/Debounce;->wait:I

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

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

    .line 22
    iput p1, p0, Lcom/geely/hvac/utils/Debounce;->wait:I

    return-void
.end method
