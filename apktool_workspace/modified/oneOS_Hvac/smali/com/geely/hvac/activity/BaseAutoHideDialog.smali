.class public Lcom/geely/hvac/activity/BaseAutoHideDialog;
.super Lcom/geely/hvac/dialog/BaseDialog;
.source "BaseAutoHideDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAutoHideDialog"


# instance fields
.field private final mHideRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/geely/hvac/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Lcom/geely/hvac/activity/-$$Lambda$BaseAutoHideDialog$cfZRPtUMBjm67m48Z_-YcvQWS2c;

    invoke-direct {p1, p0}, Lcom/geely/hvac/activity/-$$Lambda$BaseAutoHideDialog$cfZRPtUMBjm67m48Z_-YcvQWS2c;-><init>(Lcom/geely/hvac/activity/BaseAutoHideDialog;)V

    iput-object p1, p0, Lcom/geely/hvac/activity/BaseAutoHideDialog;->mHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic lambda$cfZRPtUMBjm67m48Z_-YcvQWS2c(Lcom/geely/hvac/activity/BaseAutoHideDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->run()V

    return-void
.end method

.method private run()V
    .locals 2

    const-string v0, "BaseAutoHideDialog"

    const-string v1, "hide runnable execute"

    .line 67
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->dismiss()V

    .line 69
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/BaseAutoHideDialog;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/geely/hvac/dialog/BaseDialog;->dismiss()V

    .line 35
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/BaseAutoHideDialog;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "BaseAutoHideDialog"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ACTION_UP"

    .line 59
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->resetHideRunnable()V

    goto :goto_0

    :cond_1
    const-string v0, "ACTION_DOWN"

    .line 55
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/BaseAutoHideDialog;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    :goto_0
    invoke-super {p0, p1}, Lcom/geely/hvac/dialog/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lcom/geely/hvac/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->resetHideRunnable()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 40
    invoke-super {p0}, Lcom/geely/hvac/dialog/BaseDialog;->onDetachedFromWindow()V

    .line 41
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/BaseAutoHideDialog;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resetHideRunnable()V
    .locals 4

    const-string v0, "BaseAutoHideDialog"

    const-string v1, "resetHideRunnable"

    .line 45
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/BaseAutoHideDialog;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/BaseAutoHideDialog;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public show()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/geely/hvac/dialog/BaseDialog;->show()V

    .line 29
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BaseAutoHideDialog;->resetHideRunnable()V

    return-void
.end method
