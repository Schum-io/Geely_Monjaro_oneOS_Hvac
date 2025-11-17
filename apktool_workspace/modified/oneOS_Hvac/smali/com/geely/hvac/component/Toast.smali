.class public Lcom/geely/hvac/component/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# static fields
.field private static TAG:Ljava/lang/String; = "Toast"

.field private static mIGlyPolicy:Lcom/geely/os/policy/IGlyPolicy;

.field private static mWindowType:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mGravity:I

.field private mHasCancel:Z

.field private mHasShow:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 37
    invoke-interface {v0}, Lcom/geely/os/policy/IGlyPolicy;->getWindowManagerPolicy()Lcom/geely/os/policy/IGlyWindowManagerPolicy;

    move-result-object v1

    const-string v2, "SWIPE_FROM_BOTTOM_VIEW"

    invoke-interface {v1, v2}, Lcom/geely/os/policy/IGlyWindowManagerPolicy;->getWindowTypeByCode(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/geely/hvac/component/Toast;->mWindowType:I

    .line 38
    sput-object v0, Lcom/geely/hvac/component/Toast;->mIGlyPolicy:Lcom/geely/os/policy/IGlyPolicy;

    .line 39
    sget-object v0, Lcom/geely/hvac/component/Toast;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toast static, mWindowType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/geely/hvac/component/Toast;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/geely/hvac/component/Toast;->mHasShow:Z

    .line 23
    iput-boolean v0, p0, Lcom/geely/hvac/component/Toast;->mHasCancel:Z

    .line 24
    iput v0, p0, Lcom/geely/hvac/component/Toast;->mXOffset:I

    .line 25
    iput v0, p0, Lcom/geely/hvac/component/Toast;->mYOffset:I

    const/16 v0, 0x11

    .line 26
    iput v0, p0, Lcom/geely/hvac/component/Toast;->mGravity:I

    const/16 v0, 0xbb8

    .line 27
    iput v0, p0, Lcom/geely/hvac/component/Toast;->mDuration:I

    .line 28
    new-instance v0, Lcom/geely/hvac/component/Toast$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/component/Toast$1;-><init>(Lcom/geely/hvac/component/Toast;)V

    iput-object v0, p0, Lcom/geely/hvac/component/Toast;->mRunnable:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Lcom/geely/hvac/component/Toast;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 47
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/component/-$$Lambda$Toast$dvhNojzjQYKVTKxRfKLfdSgzAvs;

    invoke-direct {v1, p0}, Lcom/geely/hvac/component/-$$Lambda$Toast$dvhNojzjQYKVTKxRfKLfdSgzAvs;-><init>(Lcom/geely/hvac/component/Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$cancel$0$Toast()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/geely/hvac/component/Toast;->mHasShow:Z

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/geely/hvac/component/Toast;->TAG:Ljava/lang/String;

    const-string v1, "not show return"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/geely/hvac/component/Toast;->mHasCancel:Z

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/geely/hvac/component/Toast;->TAG:Ljava/lang/String;

    const-string v1, "already canceled, return"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/geely/hvac/component/Toast;->mHasCancel:Z

    .line 57
    iget-object v0, p0, Lcom/geely/hvac/component/Toast;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/geely/hvac/component/Toast;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$show$1$Toast(Landroid/view/View;)V
    .locals 2

    .line 105
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/component/Toast;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {p0}, Lcom/geely/hvac/component/Toast;->cancel()V

    .line 107
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$show$2$Toast()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/geely/hvac/component/Toast;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/geely/hvac/component/Toast;->mHasShow:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/geely/hvac/component/Toast;->mHasShow:Z

    .line 89
    sget-object v1, Lcom/geely/hvac/component/Toast;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/geely/hvac/component/Toast;->mWindowType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lcom/geely/hvac/component/Toast;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 91
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v3, -0x2

    .line 92
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    sget v3, Lcom/geely/hvac/component/Toast;->mWindowType:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x3

    .line 95
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x9840448

    .line 96
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 98
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/high16 v3, -0x80000000

    or-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 99
    iget-object v0, p0, Lcom/geely/hvac/component/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 100
    iget v0, p0, Lcom/geely/hvac/component/Toast;->mGravity:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 101
    iget v0, p0, Lcom/geely/hvac/component/Toast;->mXOffset:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 102
    iget v0, p0, Lcom/geely/hvac/component/Toast;->mYOffset:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 103
    iget-object v0, p0, Lcom/geely/hvac/component/Toast;->mView:Landroid/view/View;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/geely/hvac/component/Toast;->mView:Landroid/view/View;

    new-instance v1, Lcom/geely/hvac/component/-$$Lambda$Toast$cqW7C-XGTrJBqS53BXSr5Dnedr4;

    invoke-direct {v1, p0}, Lcom/geely/hvac/component/-$$Lambda$Toast$cqW7C-XGTrJBqS53BXSr5Dnedr4;-><init>(Lcom/geely/hvac/component/Toast;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/component/Toast;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/geely/hvac/component/Toast;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 73
    iput p1, p0, Lcom/geely/hvac/component/Toast;->mDuration:I

    return-void
.end method

.method public setGravity(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gravity",
            "xOffset",
            "yOffset"
        }
    .end annotation

    .line 67
    iput p1, p0, Lcom/geely/hvac/component/Toast;->mGravity:I

    .line 68
    iput p2, p0, Lcom/geely/hvac/component/Toast;->mXOffset:I

    .line 69
    iput p3, p0, Lcom/geely/hvac/component/Toast;->mYOffset:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/geely/hvac/component/Toast;->mView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 2

    .line 81
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/component/-$$Lambda$Toast$-TvBUnJTcj4Hba6zub5kOKEuGwU;

    invoke-direct {v1, p0}, Lcom/geely/hvac/component/-$$Lambda$Toast$-TvBUnJTcj4Hba6zub5kOKEuGwU;-><init>(Lcom/geely/hvac/component/Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
