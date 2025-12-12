.class public Lcom/geely/hvac/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastUtil"

.field private static mToastRef:Landroid/widget/Toast;

.field private static mToastRefResetRunnable:Ljava/lang/Runnable;

.field private static mToastTimeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/geely/hvac/component/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private static sToastUtilViewCreate:Lcom/geely/hvac/utils/ToastUtilViewCreate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/geely/hvac/utils/ToastUtil$1;

    invoke-direct {v0}, Lcom/geely/hvac/utils/ToastUtil$1;-><init>()V

    sput-object v0, Lcom/geely/hvac/utils/ToastUtil;->mToastRefResetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 11
    sput-object p0, Lcom/geely/hvac/utils/ToastUtil;->mToastRef:Landroid/widget/Toast;

    return-object p0
.end method

.method public static setToastUtilViewCreate(Lcom/geely/hvac/utils/ToastUtilViewCreate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toastUtilViewCreate"
        }
    .end annotation

    .line 26
    sput-object p0, Lcom/geely/hvac/utils/ToastUtil;->sToastUtilViewCreate:Lcom/geely/hvac/utils/ToastUtilViewCreate;

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 v0, 0x1

    .line 63
    invoke-static {p0, p1, v0}, Lcom/geely/hvac/utils/ToastUtil;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resId",
            "duration"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/utils/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;IZIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "view",
            "duration",
            "cancelOld",
            "gravity",
            "xOffset",
            "yOffset"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show, duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cancelOld:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->mToastRef:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 102
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->TAG:Ljava/lang/String;

    const-string v1, "cancel toast fail"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :cond_0
    :goto_0
    sget-object p3, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->mToastRefResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    new-instance p3, Landroid/widget/Toast;

    invoke-direct {p3, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 110
    sput-object p3, Lcom/geely/hvac/utils/ToastUtil;->mToastRef:Landroid/widget/Toast;

    .line 111
    invoke-virtual {p3, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p3, p4, p5, p6}, Landroid/widget/Toast;->setGravity(III)V

    .line 113
    invoke-virtual {p3, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 114
    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 115
    sget-object p0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    sget-object p1, Lcom/geely/hvac/utils/ToastUtil;->mToastRefResetRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "msg",
            "duration"
        }
    .end annotation

    const/4 v0, 0x1

    .line 67
    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/utils/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "msg",
            "duration",
            "cancelOld"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->mToastRef:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 79
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->TAG:Ljava/lang/String;

    const-string v1, "cancel toast fail"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :cond_0
    :goto_0
    sget-object p3, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->mToastRefResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    new-instance p3, Landroid/widget/Toast;

    invoke-direct {p3, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 87
    sput-object p3, Lcom/geely/hvac/utils/ToastUtil;->mToastRef:Landroid/widget/Toast;

    .line 88
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->sToastUtilViewCreate:Lcom/geely/hvac/utils/ToastUtilViewCreate;

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0, p0, p3, p1}, Lcom/geely/hvac/utils/ToastUtilViewCreate;->onToast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)V

    .line 91
    :cond_1
    invoke-virtual {p3, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 92
    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 93
    sget-object p0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    sget-object p1, Lcom/geely/hvac/utils/ToastUtil;->mToastRefResetRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static showTime(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/16 v0, 0x2710

    .line 30
    invoke-static {p0, p1, v0}, Lcom/geely/hvac/utils/ToastUtil;->showTime(Landroid/content/Context;II)V

    return-void
.end method

.method public static showTime(Landroid/content/Context;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resId",
            "duration"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 35
    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/utils/ToastUtil;->showTime(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static showTime(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "msg",
            "duration",
            "cancelOld"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTime, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cancelOld:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->mToastTimeRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/component/Toast;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {v0}, Lcom/geely/hvac/component/Toast;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 46
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->TAG:Ljava/lang/String;

    const-string v1, "cancel toast fail"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :cond_0
    :goto_0
    new-instance p3, Lcom/geely/hvac/component/Toast;

    invoke-direct {p3, p0}, Lcom/geely/hvac/component/Toast;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/geely/hvac/utils/ToastUtil;->mToastTimeRef:Ljava/lang/ref/WeakReference;

    .line 55
    sget-object v0, Lcom/geely/hvac/utils/ToastUtil;->sToastUtilViewCreate:Lcom/geely/hvac/utils/ToastUtilViewCreate;

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0, p0, p3, p1}, Lcom/geely/hvac/utils/ToastUtilViewCreate;->onTimeToast(Landroid/content/Context;Lcom/geely/hvac/component/Toast;Ljava/lang/String;)V

    .line 58
    :cond_1
    invoke-virtual {p3, p2}, Lcom/geely/hvac/component/Toast;->setDuration(I)V

    .line 59
    invoke-virtual {p3}, Lcom/geely/hvac/component/Toast;->show()V

    return-void
.end method
