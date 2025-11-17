.class public Lcom/geely/hvac/util/PhysicsCallbackHint;
.super Ljava/lang/Object;
.source "PhysicsCallbackHint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhysicsCallbackHint"

.field private static mWindDirectionIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWindDirectionTxtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWindowType:I

.field private static sTemperatureToastWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/geely/hvac/util/TemperatureToast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    const-class v0, Lcom/geely/hvac/util/PhysicsCallbackHint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    invoke-static {v1}, Lcom/ecarx/xui/adaptapi/policy/Policy;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/policy/Policy;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/policy/Policy;->getWindowManagerPolicy()Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;

    move-result-object v1

    const-string v2, "SWIPE_FROM_BOTTOM_VIEW"

    invoke-interface {v1, v2}, Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;->getWindowTypeByCode(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/geely/hvac/util/PhysicsCallbackHint;->mWindowType:I

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toast static, mWindowType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/geely/hvac/util/PhysicsCallbackHint;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lcom/geely/hvac/util/PhysicsCallbackHint$1;

    invoke-direct {v0}, Lcom/geely/hvac/util/PhysicsCallbackHint$1;-><init>()V

    sput-object v0, Lcom/geely/hvac/util/PhysicsCallbackHint;->mWindDirectionIconMap:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/geely/hvac/util/PhysicsCallbackHint$2;

    invoke-direct {v0}, Lcom/geely/hvac/util/PhysicsCallbackHint$2;-><init>()V

    sput-object v0, Lcom/geely/hvac/util/PhysicsCallbackHint;->mWindDirectionTxtMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showWindDirection$1(Landroid/content/Context;I)V
    .locals 9

    .line 93
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/geely/hvac/util/PhysicsCallbackHint;->mWindDirectionIconMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    sget-object p0, Lcom/geely/hvac/util/PhysicsCallbackHint;->TAG:Ljava/lang/String;

    const-string p1, "showWindDirection, not support direction"

    invoke-static {p0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 98
    :cond_0
    sget-object v1, Lcom/geely/hvac/util/PhysicsCallbackHint;->mWindDirectionIconMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v2, v0, Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :cond_1
    sget-object v1, Lcom/geely/hvac/util/PhysicsCallbackHint;->mWindDirectionTxtMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;->tv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_2
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    .line 106
    invoke-static/range {v2 .. v8}, Lcom/geely/hvac/utils/ToastUtil;->show(Landroid/content/Context;Landroid/view/View;IZIII)V

    return-void
.end method

.method static synthetic lambda$showWindLevel$0(Landroid/content/Context;ZI)V
    .locals 9

    .line 72
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;

    move-result-object v0

    .line 73
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v2, 0x7f0d0094

    goto :goto_0

    :cond_0
    const v2, 0x7f0d0099

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez p2, :cond_1

    .line 75
    iget-object p1, v0, Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;->tv:Landroid/widget/TextView;

    const p2, 0x7f10001b

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 77
    :cond_1
    iget-object v1, v0, Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;->tv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const p1, 0x7f10016c

    goto :goto_1

    :cond_2
    const p1, 0x7f100172

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_2
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutPhysicsCallbackHintBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    .line 79
    invoke-static/range {v2 .. v8}, Lcom/geely/hvac/utils/ToastUtil;->show(Landroid/content/Context;Landroid/view/View;IZIII)V

    return-void
.end method

.method public static showTemperature(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/geely/hvac/util/PhysicsCallbackHint;->sTemperatureToastWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/util/TemperatureToast;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/geely/hvac/util/TemperatureToast;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/geely/hvac/util/TemperatureToast;->resetTimer()V

    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/geely/hvac/util/TemperatureToast;

    invoke-direct {v0, p0}, Lcom/geely/hvac/util/TemperatureToast;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/geely/hvac/util/PhysicsCallbackHint;->sTemperatureToastWeakReference:Ljava/lang/ref/WeakReference;

    .line 66
    invoke-virtual {v0}, Lcom/geely/hvac/util/TemperatureToast;->show()V

    return-void
.end method

.method public static showWindDirection(Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "direction"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/geely/hvac/util/PhysicsCallbackHint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWindDirection, direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$ao78AFRBtY0t-3GF9AHp5tynWnw;

    invoke-direct {v1, p0, p1}, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$ao78AFRBtY0t-3GF9AHp5tynWnw;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showWindLevel(Landroid/content/Context;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "isAuto",
            "level"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/geely/hvac/util/PhysicsCallbackHint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWindLevel, isAuto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco;-><init>(Landroid/content/Context;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
