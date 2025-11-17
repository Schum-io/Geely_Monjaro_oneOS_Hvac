.class Lcom/geely/hvac/util/TemperatureToast$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TemperatureToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/util/TemperatureToast;->lambda$cancel$1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/util/TemperatureToast;


# direct methods
.method constructor <init>(Lcom/geely/hvac/util/TemperatureToast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/geely/hvac/util/TemperatureToast$2;->this$0:Lcom/geely/hvac/util/TemperatureToast;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 79
    iget-object p1, p0, Lcom/geely/hvac/util/TemperatureToast$2;->this$0:Lcom/geely/hvac/util/TemperatureToast;

    invoke-static {p1}, Lcom/geely/hvac/util/TemperatureToast;->access$000(Lcom/geely/hvac/util/TemperatureToast;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 81
    :try_start_0
    invoke-static {}, Lcom/geely/hvac/util/TemperatureToast;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel, view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/hvac/util/TemperatureToast$2;->this$0:Lcom/geely/hvac/util/TemperatureToast;

    invoke-static {v2}, Lcom/geely/hvac/util/TemperatureToast;->access$200(Lcom/geely/hvac/util/TemperatureToast;)Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/geely/hvac/util/TemperatureToast$2;->this$0:Lcom/geely/hvac/util/TemperatureToast;

    invoke-static {v0}, Lcom/geely/hvac/util/TemperatureToast;->access$200(Lcom/geely/hvac/util/TemperatureToast;)Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/geely/hvac/util/TemperatureToast$2;->this$0:Lcom/geely/hvac/util/TemperatureToast;

    invoke-static {v0}, Lcom/geely/hvac/util/TemperatureToast;->access$200(Lcom/geely/hvac/util/TemperatureToast;)Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
