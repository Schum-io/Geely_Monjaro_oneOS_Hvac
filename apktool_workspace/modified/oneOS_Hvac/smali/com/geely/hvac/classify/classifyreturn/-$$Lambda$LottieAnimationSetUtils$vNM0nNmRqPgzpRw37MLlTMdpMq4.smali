.class public final synthetic Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$vNM0nNmRqPgzpRw37MLlTMdpMq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$vNM0nNmRqPgzpRw37MLlTMdpMq4;->f$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$vNM0nNmRqPgzpRw37MLlTMdpMq4;->f$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-static {v0, p1}, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->lambda$stopLottieAnimationSet$1(Lcom/geely/livewallpager/lotties/LottieAnimationView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
