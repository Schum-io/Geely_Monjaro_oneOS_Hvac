.class Lcom/geely/hvac/component/AcFrontBehindSwitch$1;
.super Ljava/lang/Object;
.source "AcFrontBehindSwitch.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/component/AcFrontBehindSwitch;->setFront(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/AcFrontBehindSwitch;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/AcFrontBehindSwitch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch$1;->this$0:Lcom/geely/hvac/component/AcFrontBehindSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/geely/hvac/component/AcFrontBehindSwitch$1;->this$0:Lcom/geely/hvac/component/AcFrontBehindSwitch;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->setProgress(F)V

    return-void
.end method
