.class Lcom/geely/hvac/activity/GlyMainActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlyMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/activity/GlyMainActivity;->startOpenAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/activity/GlyMainActivity;


# direct methods
.method constructor <init>(Lcom/geely/hvac/activity/GlyMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity$2;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 222
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity$2;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    iget-object p1, p1, Lcom/geely/hvac/activity/GlyMainActivity;->TAG:Ljava/lang/String;

    const-string v0, "mOpenTranslateAnimation, onAnimationEnd"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity$2;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-static {p1}, Lcom/geely/hvac/activity/GlyMainActivity;->access$100(Lcom/geely/hvac/activity/GlyMainActivity;)Lcom/geely/hvac/databinding/LayoutMainBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutMainBinding;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0501d4

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    return-void
.end method
