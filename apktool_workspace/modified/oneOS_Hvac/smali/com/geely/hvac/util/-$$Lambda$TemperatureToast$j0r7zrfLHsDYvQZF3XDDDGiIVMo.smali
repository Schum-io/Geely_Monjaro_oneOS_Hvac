.class public final synthetic Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$j0r7zrfLHsDYvQZF3XDDDGiIVMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/util/TemperatureToast;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/util/TemperatureToast;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$j0r7zrfLHsDYvQZF3XDDDGiIVMo;->f$0:Lcom/geely/hvac/util/TemperatureToast;

    iput-object p2, p0, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$j0r7zrfLHsDYvQZF3XDDDGiIVMo;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$j0r7zrfLHsDYvQZF3XDDDGiIVMo;->f$0:Lcom/geely/hvac/util/TemperatureToast;

    iget-object v1, p0, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$j0r7zrfLHsDYvQZF3XDDDGiIVMo;->f$1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/util/TemperatureToast;->lambda$cancel$0$TemperatureToast(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
