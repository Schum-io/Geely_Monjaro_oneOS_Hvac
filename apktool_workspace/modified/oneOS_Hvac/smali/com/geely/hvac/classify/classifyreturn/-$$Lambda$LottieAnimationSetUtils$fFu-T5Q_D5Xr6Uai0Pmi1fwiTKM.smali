.class public final synthetic Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$fFu-T5Q_D5Xr6Uai0Pmi1fwiTKM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

.field public final synthetic f$1:Lcom/geely/toolchain/hmi/view/HmiImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$fFu-T5Q_D5Xr6Uai0Pmi1fwiTKM;->f$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    iput-object p2, p0, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$fFu-T5Q_D5Xr6Uai0Pmi1fwiTKM;->f$1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$fFu-T5Q_D5Xr6Uai0Pmi1fwiTKM;->f$0:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    iget-object v1, p0, Lcom/geely/hvac/classify/classifyreturn/-$$Lambda$LottieAnimationSetUtils$fFu-T5Q_D5Xr6Uai0Pmi1fwiTKM;->f$1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v0, v1, p1}, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->lambda$oneLottieAnimationSet$0(Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
