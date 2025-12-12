.class public final synthetic Lcom/geely/toolchain/hmi/view/selector/-$$Lambda$HmiSelectorLayout$GUEXkq_Qvlzi8j85apYAeMtgbWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/selector/-$$Lambda$HmiSelectorLayout$GUEXkq_Qvlzi8j85apYAeMtgbWA;->f$0:Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/-$$Lambda$HmiSelectorLayout$GUEXkq_Qvlzi8j85apYAeMtgbWA;->f$0:Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->lambda$startAnim$1(Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
