.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$Switch$53ChmtuC4NnHoJwgjP03apAC-vM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/component/Switch;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/component/Switch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$Switch$53ChmtuC4NnHoJwgjP03apAC-vM;->f$0:Lcom/geely/hvac/component/Switch;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$Switch$53ChmtuC4NnHoJwgjP03apAC-vM;->f$0:Lcom/geely/hvac/component/Switch;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/Switch;->lambda$setState$0$Switch(Landroid/animation/ValueAnimator;)V

    return-void
.end method
