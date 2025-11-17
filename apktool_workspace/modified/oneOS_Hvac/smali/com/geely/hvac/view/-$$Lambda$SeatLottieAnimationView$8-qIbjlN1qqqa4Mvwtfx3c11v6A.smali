.class public final synthetic Lcom/geely/hvac/view/-$$Lambda$SeatLottieAnimationView$8-qIbjlN1qqqa4Mvwtfx3c11v6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/view/SeatLottieAnimationView;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/view/SeatLottieAnimationView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/view/-$$Lambda$SeatLottieAnimationView$8-qIbjlN1qqqa4Mvwtfx3c11v6A;->f$0:Lcom/geely/hvac/view/SeatLottieAnimationView;

    iput-object p2, p0, Lcom/geely/hvac/view/-$$Lambda$SeatLottieAnimationView$8-qIbjlN1qqqa4Mvwtfx3c11v6A;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/view/-$$Lambda$SeatLottieAnimationView$8-qIbjlN1qqqa4Mvwtfx3c11v6A;->f$0:Lcom/geely/hvac/view/SeatLottieAnimationView;

    iget-object v1, p0, Lcom/geely/hvac/view/-$$Lambda$SeatLottieAnimationView$8-qIbjlN1qqqa4Mvwtfx3c11v6A;->f$1:Ljava/lang/Runnable;

    check-cast p1, Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/view/SeatLottieAnimationView;->lambda$setAnimationPath$1$SeatLottieAnimationView(Ljava/lang/Runnable;Lcom/geely/livewallpager/lotties/LottieComposition;)V

    return-void
.end method
