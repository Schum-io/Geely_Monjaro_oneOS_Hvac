.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$Temperature$fevJqfSxS3jNWTYmU99ILWrH1MY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/component/Temperature;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/component/Temperature;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$Temperature$fevJqfSxS3jNWTYmU99ILWrH1MY;->f$0:Lcom/geely/hvac/component/Temperature;

    iput p2, p0, Lcom/geely/hvac/component/-$$Lambda$Temperature$fevJqfSxS3jNWTYmU99ILWrH1MY;->f$1:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$Temperature$fevJqfSxS3jNWTYmU99ILWrH1MY;->f$0:Lcom/geely/hvac/component/Temperature;

    iget v1, p0, Lcom/geely/hvac/component/-$$Lambda$Temperature$fevJqfSxS3jNWTYmU99ILWrH1MY;->f$1:F

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/component/Temperature;->lambda$setTemperature$0$Temperature(FLandroid/animation/ValueAnimator;)V

    return-void
.end method
