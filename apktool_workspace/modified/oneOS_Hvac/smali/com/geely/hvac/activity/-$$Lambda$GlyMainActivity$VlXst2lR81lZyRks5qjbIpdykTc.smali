.class public final synthetic Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$VlXst2lR81lZyRks5qjbIpdykTc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/activity/GlyMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/activity/GlyMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$VlXst2lR81lZyRks5qjbIpdykTc;->f$0:Lcom/geely/hvac/activity/GlyMainActivity;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/activity/-$$Lambda$GlyMainActivity$VlXst2lR81lZyRks5qjbIpdykTc;->f$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/activity/GlyMainActivity;->lambda$startCloseAnimation$4$GlyMainActivity(Landroid/animation/ValueAnimator;)V

    return-void
.end method
