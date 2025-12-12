.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$SeatTimeSelector$WsroR5fS_iK4JLABOzCe_3RAl4Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/component/SeatTimeSelector;

.field public final synthetic f$1:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/component/SeatTimeSelector;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$SeatTimeSelector$WsroR5fS_iK4JLABOzCe_3RAl4Q;->f$0:Lcom/geely/hvac/component/SeatTimeSelector;

    iput-object p2, p0, Lcom/geely/hvac/component/-$$Lambda$SeatTimeSelector$WsroR5fS_iK4JLABOzCe_3RAl4Q;->f$1:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$SeatTimeSelector$WsroR5fS_iK4JLABOzCe_3RAl4Q;->f$0:Lcom/geely/hvac/component/SeatTimeSelector;

    iget-object v1, p0, Lcom/geely/hvac/component/-$$Lambda$SeatTimeSelector$WsroR5fS_iK4JLABOzCe_3RAl4Q;->f$1:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/component/SeatTimeSelector;->lambda$select$0$SeatTimeSelector(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
