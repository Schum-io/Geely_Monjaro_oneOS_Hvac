.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$AutoFanLevel$5828STYsUBkgu9Qt-oe5_gtgd0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/component/AutoFanLevel;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/component/AutoFanLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$AutoFanLevel$5828STYsUBkgu9Qt-oe5_gtgd0Q;->f$0:Lcom/geely/hvac/component/AutoFanLevel;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$AutoFanLevel$5828STYsUBkgu9Qt-oe5_gtgd0Q;->f$0:Lcom/geely/hvac/component/AutoFanLevel;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/AutoFanLevel;->lambda$new$0$AutoFanLevel(Landroid/animation/ValueAnimator;)V

    return-void
.end method
