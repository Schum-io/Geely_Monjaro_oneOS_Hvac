.class public abstract Lcom/geely/hvac/activity/AutoHideActivity;
.super Lcom/geely/hvac/activity/BaseActivity;
.source "AutoHideActivity.java"


# instance fields
.field private mAutoHide:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mOpenTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/geely/hvac/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mAutoHide:Z

    const-wide/16 v0, 0x2710

    .line 11
    iput-wide v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mOpenTime:J

    .line 13
    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$AutoHideActivity$i_m29r03x5jwYGa_752y8ogMmCI;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$AutoHideActivity$i_m29r03x5jwYGa_752y8ogMmCI;-><init>(Lcom/geely/hvac/activity/AutoHideActivity;)V

    iput-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mHideRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_UP"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->resetHideRunnable()V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_DOWN"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    :goto_0
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$new$0$AutoHideActivity()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    const-string v1, "hide runnable execute"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    const-string v1, "moveTaskToBack"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-boolean v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mAutoHide:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->onAutoHide()V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    const-string v1, "not hide"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected abstract onAutoHide()V
.end method

.method protected onPause()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseActivity;->onPause()V

    .line 71
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/geely/hvac/activity/BaseActivity;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AutoHideActivity;->resetHideRunnable()V

    return-void
.end method

.method protected resetHideRunnable()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    const-string v1, "resetHideRunnable"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mHideRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mOpenTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAutoHide(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoHide"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/geely/hvac/activity/AutoHideActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoHide, autoHide:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    iput-boolean p1, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mAutoHide:Z

    return-void
.end method

.method public setOpenTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openTime"
        }
    .end annotation

    .line 37
    iput-wide p1, p0, Lcom/geely/hvac/activity/AutoHideActivity;->mOpenTime:J

    return-void
.end method
